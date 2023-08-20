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
        hiddenBuffs = {},
        selfSize = 21,
        otherSize = 17,
        auraWidth = 122
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

local function UpdateBuffAnchor(self, buffName, index, numDebuffs, anchorIndex, size, offsetX, offsetY, mirrorVertically, previousBuff, newRow)
    --For mirroring vertically
    local point, relativePoint;
    local startY, auraOffsetY;
    if ( mirrorVertically ) then
        point = "BOTTOM";
        relativePoint = "TOP";
        startY = -15;
        if ( self.threatNumericIndicator:IsShown() ) then
            startY = startY + self.threatNumericIndicator:GetHeight();
        end
        offsetY = - offsetY;
        auraOffsetY = -AURA_OFFSET_Y;
    else
        point = "TOP";
        relativePoint="BOTTOM";
        startY = AURA_START_Y;
        auraOffsetY = AURA_OFFSET_Y;
    end

    local buff = _G[buffName .. index];
    if (index == 1) or (previousBuff == nil) then
        buff:ClearAllPoints()
        if ( UnitIsFriend("player", self.unit) or numDebuffs == 0 ) then
            -- unit is friendly or there are no debuffs...buffs start on top
            buff:SetPoint(point.."LEFT", self, relativePoint.."LEFT", AURA_START_X, startY);
        else
            -- unit is not friendly and we have debuffs...buffs start on bottom
            buff:SetPoint(point.."LEFT", self.debuffs, relativePoint.."LEFT", 0, -offsetY);
        end
        self.buffs:SetPoint(point.."LEFT", buff, point.."LEFT", 0, 0);
        self.buffs:SetPoint(relativePoint.."LEFT", buff, relativePoint.."LEFT", 0, -auraOffsetY);
        self.spellbarAnchor = buff;
    elseif newRow then
        buff:ClearAllPoints()
        buff:SetPoint(point.."LEFT", _G[buffName..anchorIndex], relativePoint.."LEFT", 0, -offsetY);
        self.buffs:SetPoint(relativePoint.."LEFT", buff, relativePoint.."LEFT", 0, -auraOffsetY);
        self.spellbarAnchor = buff;
    else
        buff:ClearAllPoints()
        -- anchor index is the previous index
        if previousBuff then
            buff:SetPoint(point .. "LEFT", previousBuff, point .. "RIGHT", offsetX, 0);
        end
    end

    -- Resize
    buff:SetWidth(size);
    buff:SetHeight(size);
end

local function UpdateDebuffAnchor(self, debuffName, index, numBuffs, anchorIndex, size, offsetX, offsetY, mirrorVertically, previousBuff, newRow)
    local buff = _G[debuffName .. index];
    local isFriend = UnitIsFriend("player", self.unit);


    --For mirroring vertically
    local point, relativePoint;
    local startY, auraOffsetY;
    if (mirrorVertically) then
        point = "BOTTOM";
        relativePoint = "TOP";
        startY = -15;
        if (self.threatNumericIndicator:IsShown()) then
            startY = startY + self.threatNumericIndicator:GetHeight();
        end
        offsetY = -offsetY;
        auraOffsetY = -AURA_OFFSET_Y;
    else
        point = "TOP";
        relativePoint = "BOTTOM";
        startY = AURA_START_Y;
        auraOffsetY = AURA_OFFSET_Y;
    end

    buff:ClearAllPoints()
    if (index == 1) or (previousBuff == nil) then
        if (isFriend and numBuffs > 0) then
            -- unit is friendly and there are buffs...debuffs start on bottom
            buff:SetPoint(point .. "LEFT", self.buffs, relativePoint .. "LEFT", 0, -offsetY);
        else
            -- unit is not friendly or there are no buffs...debuffs start on top
            buff:SetPoint(point .. "LEFT", self, relativePoint .. "LEFT", AURA_START_X, startY);
        end
        self.debuffs:SetPoint(point .. "LEFT", buff, point .. "LEFT", 0, 0);
        self.debuffs:SetPoint(relativePoint .. "LEFT", buff, relativePoint .. "LEFT", 0, -auraOffsetY);
        if ((isFriend) or (not isFriend and numBuffs == 0)) then
            self.spellbarAnchor = buff;
        end
    elseif newRow then
        -- anchor index is not the previous index...must be a new row
        buff:SetPoint(point .. "LEFT", _G[debuffName .. anchorIndex], relativePoint .. "LEFT", 0, -offsetY);
        self.debuffs:SetPoint(relativePoint .. "LEFT", buff, relativePoint .. "LEFT", 0, -auraOffsetY);
        if ((isFriend) or (not isFriend and numBuffs == 0)) then
            self.spellbarAnchor = buff;
        end
    else
        -- anchor index is the previous
        if previousBuff then
            buff:SetPoint(point .. "LEFT", previousBuff, point .. "RIGHT", offsetX, 0);
        end
    end

    -- Resize
    buff:SetWidth(size);
    buff:SetHeight(size);
    local debuffFrame = _G[debuffName .. index .. "Border"];
    if debuffFrame then
        debuffFrame:SetWidth(size + 2);
        debuffFrame:SetHeight(size + 2);
    end
end

local function updatePositions(frame, auraName, numAuras, numOppositeAuras, updateFunc, offsetX, mirrorAurasVertically)
    local LARGE_AURA_SIZE = DeBuffFilter.db.profile.selfSize
    local SMALL_AURA_SIZE = DeBuffFilter.db.profile.otherSize
    local maxRowWidth = DeBuffFilter.db.profile.auraWidth
    local offsetY = AURA_OFFSET_Y
    local size, previousBuff
    local rowWidth = 0
    local firstBuffOnRow = 1

    for i = 1, numOppositeAuras do
        local buffName = auraName:match("Debuff") and UnitBuff(frame.unit, i, "HELPFUL") or UnitDebuff(frame.unit, i, "HARMFUL")
        if DeBuffFilter:IsBuffNameBlocked(buffName) then
            numOppositeAuras = numOppositeAuras - 1
        end
    end

    for i = 1, numAuras do
        local buffName, caster, _
        if updateFunc == UpdateBuffAnchor then
            buffName, _, _, _, _, _, caster = UnitBuff(frame.unit, i, "HELPFUL")
        else
            buffName, _, _, _, _, _, caster = UnitDebuff(frame.unit, i, "HARMFUL")
        end
        local dbf = _G[auraName .. i]
        if buffName and dbf then
            if not DeBuffFilter:IsBuffNameBlocked(buffName) then
                if ShouldAuraBeLarge(caster) then
                    size = LARGE_AURA_SIZE
                    offsetY = AURA_OFFSET_Y + AURA_OFFSET_Y
                else
                    size = SMALL_AURA_SIZE
                end

                if (i == 1) or (previousBuff == nil) then
                    rowWidth = size;
                    frame.auraRows = frame.auraRows + 1;
                else
                    rowWidth = rowWidth + size + offsetX;
                end

                if rowWidth > maxRows(frame, maxRowWidth, mirrorAurasVertically) then
                    updateFunc(frame, auraName, i, numOppositeAuras, firstBuffOnRow, size, 3, offsetY, mirrorAurasVertically, previousBuff, true)
                    rowWidth = size;
                    frame.auraRows = frame.auraRows + 1;
                    firstBuffOnRow = i
                else
                    updateFunc(frame, auraName, i, numOppositeAuras, firstBuffOnRow, size, 3, offsetY, mirrorAurasVertically, previousBuff, false)
                end
                dbf:Show()
                previousBuff = dbf
            else
                dbf:Hide()
            end
        end
    end
end

local function Filterino(self)
    local selfName = self:GetName()
    local numDebuffs, numBuffs = 0, 0

    for i = 1, MAX_TARGET_BUFFS do
        local buffName, _, _, _, _, _, caster = UnitBuff(self.unit, i, "HELPFUL");
        if buffName then
            numBuffs = numBuffs + 1;
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
        updatePositions(self, selfName .. "Buff", numBuffs, numDebuffs, UpdateBuffAnchor, 3, mirrorAurasVertically)
        updatePositions(self, selfName .. "Debuff", numDebuffs, numBuffs, UpdateDebuffAnchor, 3, mirrorAurasVertically)
    else
        updatePositions(self, selfName .. "Debuff", numDebuffs, numBuffs, UpdateDebuffAnchor, 3, mirrorAurasVertically)
        updatePositions(self, selfName .. "Buff", numBuffs, numDebuffs, UpdateBuffAnchor, 3, mirrorAurasVertically)
    end

    if (self.spellbar) then
        New_Target_Spellbar_AdjustPosition(self.spellbar);
    end
end

hooksecurefunc("Target_Spellbar_AdjustPosition", New_Target_Spellbar_AdjustPosition)
hooksecurefunc("TargetFrame_UpdateAuras", Filterino)

