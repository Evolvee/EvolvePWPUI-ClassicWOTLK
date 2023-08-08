DeBuffFilter = LibStub("AceAddon-3.0"):NewAddon("DeBuffFilter", "AceEvent-3.0", "AceHook-3.0", "AceConsole-3.0")
local _G = getfenv(0)
local UnitIsUnit, UnitIsOwnerOrControllerOfUnit, pairs = _G.UnitIsUnit, _G.UnitIsOwnerOrControllerOfUnit, _G.pairs
local MAX_TARGET_DEBUFFS = 16;
local MAX_TARGET_BUFFS = 32;
local AURA_START_Y = 32;
local UnitBuff, UnitDebuff, UnitIsFriend = _G.UnitBuff, _G.UnitDebuff, _G.UnitIsFriend
local mceil = math.ceil

local defaults = {
    profile = {
        hiddenBuffs = {}
    }
}

function DeBuffFilter:OnInitialize()
    self.db = LibStub("AceDB-3.0"):New("DeBuffFilterDB", defaults, true)
    self:SetupOptions()
end

function DeBuffFilter:IsBuffNameBlocked(name)
    local found = false;
    table.foreach(self.db.profile.hiddenBuffs, function(index, blockedName)
        if (blockedName == name) then
            found = true;
        end
    end)
    return found;
end

local function New_Target_Spellbar_AdjustPosition(self)
    local parentFrame = self:GetParent();
    if (self.boss) then
        self:SetPoint("TOPLEFT", parentFrame, "BOTTOMLEFT", 25, 10);
    elseif (parentFrame.haveToT) then
        if (parentFrame.buffsOnTop or parentFrame.auraRows <= 1) then
            self:SetPoint("TOPLEFT", parentFrame, "BOTTOMLEFT", 25, -21);
        else
            self:SetPoint("TOPLEFT", parentFrame.spellbarAnchor, "BOTTOMLEFT", 20, -15);
        end
    elseif (parentFrame.haveElite) then
        if (parentFrame.buffsOnTop or parentFrame.auraRows <= 1) then
            self:SetPoint("TOPLEFT", parentFrame, "BOTTOMLEFT", 25, -5);
        else
            self:SetPoint("TOPLEFT", parentFrame.spellbarAnchor, "BOTTOMLEFT", 20, -15);
        end
    else
        if ((not parentFrame.buffsOnTop) and parentFrame.auraRows > 0) then
            self:SetPoint("TOPLEFT", parentFrame.spellbarAnchor, "BOTTOMLEFT", 20, -15);
        else
            self:SetPoint("TOPLEFT", parentFrame, "BOTTOMLEFT", 25, 7);
        end
    end
end

local AURA_OFFSET_Y = 1;
local AURA_START_X = 5;

local PLAYER_UNITS = {
    player = true,
    vehicle = true,
    pet = true,
};

local function ShouldAuraBeLarge(caster)
    if not caster then
        return false;
    end

    for token, value in pairs(PLAYER_UNITS) do
        if UnitIsUnit(caster, token) or UnitIsOwnerOrControllerOfUnit(token, caster) then
            return value;
        end
    end
end

local function ToTegrity(frame)
    if not (frame == TargetFrameToT or frame == FocusFrameToT) then
        return
    end

    local _, _, a, b, c = frame:GetPoint()

    if (a == "BOTTOMRIGHT") and (mceil(b) == -35) and (mceil(c) == -10) then
        return true
    else
        return false
    end
end

local function maxRows(self, width, mirror)
    local haveTargetofTarget

    if self.totFrame ~= nil then
        haveTargetofTarget = self.totFrame:IsShown();
    end

    if (haveTargetofTarget and self.auraRows <= 2) and not mirror and ToTegrity(self.totFrame) then
        return self.TOT_AURA_ROW_WIDTH
    else
        return width
    end
end

local function updateBuffs(frame, auraName, numDebuffs, numBuffs, largeBuffList, offsetX, mirrorVertically)
    local isFriend = UnitIsFriend("player", frame.unit);
    local SMALL_AURA_SIZE = RougeUI and RougeUI.OtherBuffSize or 17
    local LARGE_AURA_SIZE = RougeUI and RougeUI.SelfSize or 21
    local maxRowWidth = RougeUI and RougeUI.AuraRow or 122
    local rowWidth = 0;
    local offsetY = AURA_OFFSET_Y
    local lastBuffIndex = 1
    local anchorFrame, size = nil, SMALL_AURA_SIZE
    local point, relativePoint
    local startY, auraOffsetY

    if mirrorVertically then
        point = "BOTTOM"
        relativePoint = "TOP"
        startY = -15;
        if (frame.threatNumericIndicator:IsShown()) then
            startY = startY + frame.threatNumericIndicator:GetHeight();
        end
        offsetY = -offsetY;
        auraOffsetY = -AURA_OFFSET_Y;
        AURA_START_Y = -SMALL_AURA_SIZE
    else
        point = "TOP";
        relativePoint = "BOTTOM";
        startY = AURA_START_Y;
        auraOffsetY = AURA_OFFSET_Y;
        AURA_START_Y = 32
    end

    for i = 1, numBuffs do
        local name = UnitBuff(frame.unit, i, nil);
        local buffFrame = _G[auraName .. i]
        if name and buffFrame then
            if not DeBuffFilter:IsBuffNameBlocked(name) then
                if largeBuffList[i] then
                    size = LARGE_AURA_SIZE
                    offsetY = AURA_OFFSET_Y + AURA_OFFSET_Y
                else
                    size = SMALL_AURA_SIZE
                end

                if ((i == 1) or (anchorFrame == nil)) then
                    if isFriend or (numDebuffs == 0) then
                        anchorFrame = frame;
                        buffFrame:ClearAllPoints()
                        buffFrame:SetPoint(point .. "LEFT", frame, relativePoint .. "LEFT", AURA_START_X, startY);
                    else
                        anchorFrame = frame.debuffs;
                        buffFrame:ClearAllPoints()
                        buffFrame:SetPoint(point .. "LEFT", frame.debuffs, relativePoint .. "LEFT", 0, -offsetY);
                    end
                    if frame.buffs then
                        frame.buffs:ClearAllPoints()
                        frame.buffs:SetPoint(point .. "LEFT", buffFrame, point .. "LEFT", 0, 0);
                        frame.buffs:SetPoint(relativePoint .. "LEFT", buffFrame, relativePoint .. "LEFT", 0, -auraOffsetY);
                    end
                    lastBuffIndex = i;
                    frame.spellbarAnchor = buffFrame
                    rowWidth = size
                    frame.auraRows = frame.auraRows + 1;
                else
                    rowWidth = rowWidth + size + offsetX
                    if anchorFrame ~= buffFrame then
                        buffFrame:ClearAllPoints()
                        buffFrame:SetPoint(point .. "LEFT", anchorFrame, point .. "RIGHT", offsetX, 0);
                    end
                end

                if rowWidth > maxRows(frame, maxRowWidth, frame.buffsOnTop) then
                    anchorFrame = _G[auraName .. lastBuffIndex];
                    buffFrame:ClearAllPoints()
                    buffFrame:SetPoint(point .. "LEFT", _G[auraName .. lastBuffIndex], relativePoint .. "LEFT", 0, -offsetY);
                    if frame.buffs then
                        frame.buffs:ClearAllPoints()
                        frame.buffs:SetPoint(relativePoint .. "LEFT", buffFrame, relativePoint .. "LEFT", 0, -auraOffsetY);
                    end
                    rowWidth = size
                    frame.auraRows = frame.auraRows + 1;
                    lastBuffIndex = i;
                    offsetY = AURA_OFFSET_Y
                    frame.spellbarAnchor = buffFrame
                end

                buffFrame:Show()
                anchorFrame = buffFrame;
                buffFrame:SetWidth(size)
                buffFrame:SetHeight(size)
            else
                buffFrame:Hide()
            end
        end
    end
end

local function updateDebuffs(frame, auraName, numBuffs, numDebuffs, largeDebuffList, offsetX, mirrorVertically)
    local isFriend = UnitIsFriend("player", frame.unit);
    local LARGE_AURA_SIZE = RougeUI and RougeUI.SelfSize or 21
    local SMALL_AURA_SIZE = RougeUI and RougeUI.OtherBuffSize or 17
    local maxRowWidth = RougeUI and RougeUI.AuraRow or 122
    local offsetY = AURA_OFFSET_Y
    local anchorFrame, size = nil, SMALL_AURA_SIZE
    local rowWidth = 0
    local lastDebuffIndex = 1
    local point, relativePoint
    local startY, auraOffsetY

    if mirrorVertically then
        point = "BOTTOM"
        relativePoint = "TOP"
        startY = -15;
        if (frame.threatNumericIndicator:IsShown()) then
            startY = startY + frame.threatNumericIndicator:GetHeight();
        end
        offsetY = -offsetY;
        auraOffsetY = -AURA_OFFSET_Y;
        AURA_START_Y = -SMALL_AURA_SIZE
    else
        point = "TOP";
        relativePoint = "BOTTOM";
        startY = AURA_START_Y;
        auraOffsetY = AURA_OFFSET_Y;
        AURA_START_Y = 32
    end

    for i = 1, numDebuffs do
        local debuffName, _, _, _, _, _, caster = UnitDebuff(frame.unit, i, "HARMFUL")
        local dbf = _G[auraName .. i]
        if debuffName and dbf then
            if not DeBuffFilter:IsBuffNameBlocked(debuffName) then
                if largeDebuffList[i] then
                    size = LARGE_AURA_SIZE
                    offsetY = AURA_OFFSET_Y + AURA_OFFSET_Y
                else
                    size = SMALL_AURA_SIZE
                end

                if ((i == 1) or (anchorFrame == nil)) then
                    if (isFriend and numBuffs > 0) then
                        anchorFrame = frame.buffs;
                        dbf:ClearAllPoints()
                        dbf:SetPoint(point .. "LEFT", frame.buffs, relativePoint .. "LEFT", 0, -offsetY);
                    else
                        anchorFrame = frame;
                        dbf:ClearAllPoints()
                        dbf:SetPoint(point .. "LEFT", frame, relativePoint .. "LEFT", AURA_START_X, startY);
                    end
                    lastDebuffIndex = i
                    if frame.debuffs then
                        frame.debuffs:ClearAllPoints()
                        frame.debuffs:SetPoint(point .. "LEFT", dbf, point .. "LEFT", 0, 0);
                        frame.debuffs:SetPoint(relativePoint .. "LEFT", dbf, relativePoint .. "LEFT", 0, -auraOffsetY);
                    end
                    if ((isFriend) or (not isFriend and numBuffs == 0)) then
                        frame.spellbarAnchor = dbf;
                    end
                    rowWidth = size
                    frame.auraRows = frame.auraRows + 1;
                else
                    rowWidth = rowWidth + size + offsetX
                    if anchorFrame ~= dbf then
                        dbf:ClearAllPoints()
                        dbf:SetPoint(point .. "LEFT", anchorFrame, point .. "RIGHT", offsetX, 0);
                    end
                end

                if rowWidth > maxRows(frame, maxRowWidth, frame.buffsOnTop) then
                    rowWidth = size;
                    anchorFrame = _G[auraName .. lastDebuffIndex];
                    dbf:ClearAllPoints()
                    dbf:SetPoint(point .. "LEFT", _G[auraName .. lastDebuffIndex], relativePoint .. "LEFT", 0, -offsetY);
                    if frame.debuffs then
                        frame.debuffs:ClearAllPoints()
                        frame.debuffs:SetPoint(relativePoint .. "LEFT", dbf, relativePoint .. "LEFT", 0, -auraOffsetY);
                    end
                    frame.auraRows = frame.auraRows + 1;
                    lastDebuffIndex = i
                    offsetY = AURA_OFFSET_Y
                    if ((isFriend) or (not isFriend and numBuffs == 0)) then
                        frame.spellbarAnchor = dbf;
                    end
                end

                dbf:Show()
                anchorFrame = dbf;
                dbf:SetWidth(size)
                dbf:SetHeight(size)
                local debuffFrame = _G[auraName .. i .. "Border"];
                debuffFrame:SetWidth(size + 2);
                debuffFrame:SetHeight(size + 2);
            else
                dbf:Hide()
            end
        end
    end
end

local largeBuffList = {};
local largeDebuffList = {};

local function Filterino(self)
    local selfName = self:GetName()
    local numDebuffs, numBuffs = 0, 0

    for i = 1, MAX_TARGET_BUFFS do
        local buffName, _, _, _, _, _, caster = UnitBuff(self.unit, i, "HELPFUL");
        if buffName then
            numBuffs = numBuffs + 1;
            largeBuffList[numDebuffs] = ShouldAuraBeLarge(caster);
        end
    end

    local frameNum = 1;
    local index = 1;

    local maxDebuffs = self.maxDebuffs or MAX_TARGET_DEBUFFS;
    while (frameNum <= maxDebuffs and index <= maxDebuffs) do
        local debuffName, _, _, _, _, _, caster, _, _, _, _, _, casterIsPlayer, nameplateShowAll = UnitDebuff(self.unit, index, "INCLUDE_NAME_PLATE_ONLY")
        if debuffName then
            if (TargetFrame_ShouldShowDebuffs(self.unit, caster, nameplateShowAll, casterIsPlayer)) then
                numDebuffs = numDebuffs + 1;
                largeDebuffList[numDebuffs] = ShouldAuraBeLarge(caster);
                frameNum = frameNum + 1;
            end
        else
            break
        end
        index = index + 1;
    end

    self.auraRows = 0

    local mirrorAurasVertically = false
    if self.buffsOnTop then
        mirrorAurasVertically = true
    else
        mirrorAurasVertically = false
    end
    self.spellbarAnchor = nil

    if (UnitIsFriend("player", self.unit)) then
        updateBuffs(self, selfName .. "Buff", numDebuffs, numBuffs, largeBuffList, 3, mirrorAurasVertically)
        updateDebuffs(self, selfName .. "Debuff", numBuffs, numDebuffs, largeDebuffList, 3, mirrorAurasVertically)
    else
        updateDebuffs(self, selfName .. "Debuff", numBuffs, numDebuffs, largeDebuffList, 3, mirrorAurasVertically)
        updateBuffs(self, selfName .. "Buff", numDebuffs, numBuffs, largeBuffList, 3, mirrorAurasVertically)
    end

    if (self.spellbar) then
        New_Target_Spellbar_AdjustPosition(self.spellbar);
    end
end

hooksecurefunc("Target_Spellbar_AdjustPosition", New_Target_Spellbar_AdjustPosition)
hooksecurefunc("TargetFrame_UpdateAuraPositions", Filterino)
