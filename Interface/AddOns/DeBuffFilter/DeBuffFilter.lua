DeBuffFilter = LibStub("AceAddon-3.0"):NewAddon("DeBuffFilter", "AceConsole-3.0")
local MAX_TARGET_DEBUFFS = 16
local MAX_TARGET_BUFFS = 32
local AURA_START_Y = 32
local AURA_START_X = 5
local mceil, pairs = math.ceil, pairs

local defaults = {
    profile = {
        hiddenBuffs = {},
        selfSize = 21,
        otherSize = 17,
        auraWidth = 122,
        verticalSpace = 1,
        horizontalSpace = 3
    }
}

function DeBuffFilter:OnInitialize()
    self.db = LibStub("AceDB-3.0"):New("DeBuffFilterDB", defaults, true)
    self:SetupOptions()
end

function DeBuffFilter:Blacklisted(name)
    local val = false
    for _, blockedName in pairs(self.db.profile.hiddenBuffs) do
        if blockedName == name then
            val = true
            break
        end
    end
    return val
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

local function UpdateBuffAnchor(self, buffName, index, numDebuffs, anchorIndex, size, offsetX, offsetY, mirrorVertically, firstShown, newRow)
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
        auraOffsetY = -DeBuffFilter.db.profile.verticalSpace;
    else
        point = "TOP";
        relativePoint = "BOTTOM";
        startY = AURA_START_Y;
        auraOffsetY = DeBuffFilter.db.profile.verticalSpace;
    end

    local buff = _G[buffName .. index];
    if (index == 1) or firstShown then
        if ( UnitIsFriend("player", self.unit) or numDebuffs == 0 ) then
            -- unit is friendly or there are no debuffs...buffs start on top
            buff:ClearAllPoints()
            buff:SetPoint(point .. "LEFT", self, relativePoint .. "LEFT", AURA_START_X, startY);
        else
            -- unit is not friendly and we have debuffs...buffs start on bottom
            buff:ClearAllPoints()
            buff:SetPoint(point.."LEFT", self.debuffz, relativePoint.."LEFT", 0, -offsetY);
        end
        self.buffz:ClearAllPoints()
        self.buffz:SetPoint(point.."LEFT", buff, point.."LEFT", 0, 0);
        self.buffz:SetPoint(relativePoint.."LEFT", buff, relativePoint.."LEFT", 0, -auraOffsetY);
        self.spellbarAnchor = buff;
    elseif newRow then
        buff:ClearAllPoints()
        buff:SetPoint(point .. "LEFT", _G[buffName .. anchorIndex], relativePoint .. "LEFT", 0, -offsetY);
        self.buffz:ClearAllPoints()
        self.buffz:SetPoint(relativePoint .. "LEFT", buff, relativePoint .. "LEFT", 0, -auraOffsetY);
        self.spellbarAnchor = buff;
    else
        buff:ClearAllPoints()
        buff:SetPoint(point .. "LEFT", _G[buffName..anchorIndex], point .. "RIGHT", offsetX, 0);
    end

    -- Resize
    buff:SetWidth(size);
    buff:SetHeight(size);
end

local function UpdateDebuffAnchor(self, debuffName, index, numBuffs, anchorIndex, size, offsetX, offsetY, mirrorVertically, firstShown, newRow)
    local buff = _G[debuffName..index];
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
        auraOffsetY = -DeBuffFilter.db.profile.verticalSpace;
    else
        point = "TOP";
        relativePoint = "BOTTOM";
        startY = AURA_START_Y;
        auraOffsetY = DeBuffFilter.db.profile.verticalSpace;
    end

    if (index == 1) or firstShown then
        if (isFriend and numBuffs > 0) then
            -- unit is friendly and there are buffs...debuffs start on bottom
            buff:ClearAllPoints()
            buff:SetPoint(point.."LEFT", self.buffz, relativePoint.."LEFT", 0, -offsetY);
        else
            -- unit is not friendly or there are no buffs...debuffs start on top
            buff:ClearAllPoints()
            buff:SetPoint(point.."LEFT", self, relativePoint.."LEFT", AURA_START_X, startY);
        end
        self.debuffz:ClearAllPoints()
        self.debuffz:SetPoint(point.."LEFT", buff, point.."LEFT", 0, 0);
        self.debuffz:SetPoint(relativePoint.."LEFT", buff, relativePoint.."LEFT", 0, -auraOffsetY);
        if ((isFriend) or (not isFriend and numBuffs == 0)) then
            self.spellbarAnchor = buff;
        end
    elseif newRow then
        buff:ClearAllPoints()
        buff:SetPoint(point .. "LEFT", _G[debuffName .. anchorIndex], relativePoint .. "LEFT", 0, -offsetY);
        self.debuffz:ClearAllPoints()
        self.debuffz:SetPoint(relativePoint .. "LEFT", buff, relativePoint .. "LEFT", 0, -auraOffsetY);
        if ((isFriend) or (not isFriend and numBuffs == 0)) then
            self.spellbarAnchor = buff;
        end
    else
        buff:ClearAllPoints()
        buff:SetPoint(point .. "LEFT", _G[debuffName..anchorIndex], point .. "RIGHT", offsetX, 0);
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
    local offsetY = DeBuffFilter.db.profile.verticalSpace
    local size
    local rowWidth = 0
    local firstBuffOnRow = 1
    local firstShown = true
    local lastIndex = 1

    -- illegal frames
    if not frame.buffz then
        frame.buffz = CreateFrame("Frame", frame:GetName().."Buffz", frame)
        frame.buffz:SetSize(10, 10)
        frame.buffz:SetAllPoints(frame)
    end
    if not frame.debuffz then
        frame.debuffz = CreateFrame("Frame", frame:GetName().."Debuffz", frame)
        frame.debuffz:SetSize(10, 10)
        frame.debuffz:SetAllPoints(frame)
    end

    for i = 1, numAuras do
        local buffName, icon, caster, _
        if updateFunc == UpdateBuffAnchor then
            buffName, icon, _, _, _, _, caster = UnitBuff(frame.unit, i, "HELPFUL")
        else
            buffName, icon, _, _, _, _, caster = UnitDebuff(frame.unit, i, "HARMFUL")
        end
        if buffName and icon then
            local dbf = _G[auraName..i]
            if not DeBuffFilter:Blacklisted(buffName) then
                if dbf:GetAlpha() < 1 then
                    dbf:SetAlpha(1)
                end
                if ShouldAuraBeLarge(caster) then
                    size = LARGE_AURA_SIZE
                    offsetY = DeBuffFilter.db.profile.verticalSpace + DeBuffFilter.db.profile.verticalSpace
                else
                    size = SMALL_AURA_SIZE
                end

                if (i == 1) or firstShown then
                    rowWidth = size;
                    frame.auraRows = frame.auraRows + 1;
                    firstBuffOnRow = i
                else
                    rowWidth = rowWidth + size + offsetX;
                end

                if rowWidth > maxRows(frame, maxRowWidth, mirrorAurasVertically) then
                    updateFunc(frame, auraName, i, numOppositeAuras, firstBuffOnRow, size, offsetX, offsetY, mirrorAurasVertically, firstShown, true)
                    rowWidth = size;
                    frame.auraRows = frame.auraRows + 1;
                    firstBuffOnRow = i
                    offsetY = DeBuffFilter.db.profile.verticalSpace;
                else
                    updateFunc(frame, auraName, i, numOppositeAuras, lastIndex, size, offsetX, offsetY, mirrorAurasVertically, firstShown, false)
                end
                lastIndex = i
                if firstShown then
                    firstShown = false
                end
            else
                if dbf:GetAlpha() > 0 then
                    dbf:SetAlpha(0)
                end
            end
        end
    end
end

local function Filterino(self)
    if not self then
        return
    end

    local selfName = self:GetName()
    local numDebuffs, numBuffs = 0, 0
    local numDebuff, numBuff = 0, 0

    for i = 1, MAX_TARGET_BUFFS do
        local buffName = UnitBuff(self.unit, i, "HELPFUL");
        if buffName then
            numBuffs = numBuffs + 1;
            if not DeBuffFilter:Blacklisted(buffName) then
                numBuff = numBuff + 1
            end
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
                if not DeBuffFilter:Blacklisted(debuffName) then
                    numDebuff = numDebuff + 1
                end
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

    local offsetX = DeBuffFilter.db.profile.horizontalSpace

    if (UnitIsFriend("player", self.unit)) then
        updatePositions(self, selfName .. "Buff", numBuffs, numDebuff, UpdateBuffAnchor, offsetX, mirrorAurasVertically)
        updatePositions(self, selfName .. "Debuff", numDebuffs, numBuff, UpdateDebuffAnchor, offsetX, mirrorAurasVertically)
    else
        updatePositions(self, selfName .. "Debuff", numDebuffs, numBuff, UpdateDebuffAnchor, offsetX, mirrorAurasVertically)
        updatePositions(self, selfName .. "Buff", numBuffs, numDebuff, UpdateBuffAnchor, offsetX, mirrorAurasVertically)
    end

    if (self.spellbar) then
        New_Target_Spellbar_AdjustPosition(self.spellbar);
    end
end

hooksecurefunc("Target_Spellbar_AdjustPosition", New_Target_Spellbar_AdjustPosition)
hooksecurefunc("TargetFrame_UpdateAuras", Filterino)
