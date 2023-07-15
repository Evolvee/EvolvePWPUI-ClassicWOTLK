DeBuffFilter = LibStub("AceAddon-3.0"):NewAddon("DeBuffFilter", "AceEvent-3.0", "AceHook-3.0", "AceConsole-3.0")
local _G = getfenv(0)
local UnitIsUnit, UnitIsOwnerOrControllerOfUnit, pairs = _G.UnitIsUnit, _G.UnitIsOwnerOrControllerOfUnit, _G.pairs
local MAX_TARGET_DEBUFFS = 16;
local MAX_TARGET_BUFFS = 32;

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

function DeBuffFilter.Target_Spellbar_AdjustPosition(self)
    local parentFrame = self:GetParent();
    if (self.boss) then
        self:SetPoint("TOPLEFT", parentFrame, "BOTTOMLEFT", 25, 10);
    elseif (parentFrame.haveToT) then
        if (parentFrame.buffsOnTop or parentFrame.auraRows <= 1) then
            self:SetPoint("TOPLEFT", parentFrame, "BOTTOMLEFT", 25, -25);
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

function DeBuffFilter.Filterino(frame)
    if not frame then
        return
    end

    local buffFrame, frameName
    local selfName = frame:GetName()
    local isFriend = UnitIsFriend("player", frame.unit);
    local SMALL_AURA_SIZE = RougeUI and RougeUI.OtherBuffSize or 17
    local LARGE_AURA_SIZE = RougeUI and RougeUI.SelfSize or 21
    local AURA_START_Y = frame.buffsOnTop and -SMALL_AURA_SIZE or 32;
    local rowWidth = 0;
    local offsetX = 3;
    local lastBuffIndex = 1
    local lastDebuffIndex = 1
    local point, relativePoint;
    local anchorFrame, x, y;
    local maxRowWidth = frame.TOT_AURA_ROW_WIDTH
    local numBuffs, numDebuffs = 0, 0
    local offsetY = AURA_OFFSET_Y
    local haveTargetofTarget

    if frame.totFrame ~= nil then
        haveTargetofTarget = frame.totFrame:IsShown();
    end

    if (haveTargetofTarget and frame.auraRows <= 6 and not frame.buffsOnTop) then
        maxRowWidth = frame.TOT_AURA_ROW_WIDTH
    else
        maxRowWidth = RougeUI and RougeUI.AuraRow or 122
    end

    for i = 1, MAX_TARGET_DEBUFFS do
        local debuffName = UnitDebuff(frame.unit, i, "HARMFUL")
        if debuffName and not DeBuffFilter:IsBuffNameBlocked(debuffName) then
            numDebuffs = numDebuffs + 1
        end
    end

    for i = 1, MAX_TARGET_BUFFS do
        local name, _, _, _, _, _, caster = UnitBuff(frame.unit, i, "HELPFUL");
        if (name) then
            frameName = selfName .. "Buff" .. i
            buffFrame = _G[frameName]

            if buffFrame then
                if not DeBuffFilter:IsBuffNameBlocked(name) then

                    local buffSize;
                    if ShouldAuraBeLarge(caster) then
                        buffSize = LARGE_AURA_SIZE
                        offsetY = AURA_OFFSET_Y + AURA_OFFSET_Y;
                    else
                        buffSize = SMALL_AURA_SIZE
                    end

                    if i == 1 or anchorFrame == nil then
                        point = frame.buffsOnTop and "BOTTOMLEFT" or "TOPLEFT";
                        relativePoint = frame.buffsOnTop and "TOPLEFT" or "BOTTOMLEFT";
                        if isFriend or numDebuffs == 0 then
                            anchorFrame = _G[selfName];
                            x = AURA_START_X;
                            y = frame.buffsOnTop and -15 or AURA_START_Y;
                        else
                            anchorFrame = _G[selfName].debuffs;
                            x = 0;
                            y = frame.buffsOnTop and offsetY or -offsetY;
                        end
                        _G[selfName].buffs:SetPoint(point, buffFrame, point, 0, 0);
                        local yx = frame.buffsOnTop and -AURA_OFFSET_Y or AURA_OFFSET_Y
                        _G[selfName].buffs:SetPoint(relativePoint, buffFrame, relativePoint, 0, -yx);
                        lastBuffIndex = i;
                        frame.spellbarAnchor = buffFrame
                        rowWidth = buffSize
                        frame.auraRows = frame.auraRows + 1;
                    else
                        rowWidth = rowWidth + buffSize + offsetX
                        relativePoint = frame.buffsOnTop and "BOTTOMRIGHT" or "TOPRIGHT";
                        x = offsetX;
                        y = 0;
                    end

                    if rowWidth > maxRowWidth then
                        rowWidth = buffSize
                        point = frame.buffsOnTop and "BOTTOMLEFT" or "TOPLEFT";
                        anchorFrame = _G[selfName .. "Buff" .. lastBuffIndex];
                        relativePoint = frame.buffsOnTop and "TOPLEFT" or "BOTTOMLEFT";
                        x = 0;
                        y = frame.buffsOnTop and offsetY or -offsetY;
                        frame.auraRows = frame.auraRows + 1;
                        lastBuffIndex = i;
                        _G[selfName].buffs:SetPoint(relativePoint, buffFrame, relativePoint, 0, -AURA_OFFSET_Y);
                        frame.spellbarAnchor = buffFrame
                    end

                    buffFrame:ClearAllPoints()
                    buffFrame:SetPoint(point, anchorFrame, relativePoint, x, y);
                    buffFrame:Show()
                    anchorFrame = buffFrame;
                    numBuffs = numBuffs + 1
                    buffFrame:SetWidth(buffSize)
                    buffFrame:SetHeight(buffSize)
                else
                    buffFrame:Hide()
                end
            end
        end
    end

    local DfFrame
    local drowWidth = 0

    for i = 1, MAX_TARGET_DEBUFFS do
        local dbf = _G[selfName .. "Debuff" .. i]
        local debuffName, _, _, _, _, _, caster = UnitDebuff(frame.unit, i, "HARMFUL")
        if dbf and debuffName then
            if not DeBuffFilter:IsBuffNameBlocked(debuffName) then

                local DebuffSize;
                if ShouldAuraBeLarge(caster) then
                    DebuffSize = LARGE_AURA_SIZE
                    offsetY = AURA_OFFSET_Y + AURA_OFFSET_Y;
                else
                    DebuffSize = SMALL_AURA_SIZE
                end

                if i == 1 or DfFrame == nil then
                    if isFriend and (numBuffs > 0) then
                        DfFrame = _G[selfName].buffs;
                        x = 0
                        y = frame.buffsOnTop and offsetY or -offsetY;
                    else
                        DfFrame = _G[selfName];
                        x = AURA_START_X;
                        y = AURA_START_Y;
                    end
                    point = frame.buffsOnTop and "BOTTOMLEFT" or "TOPLEFT";
                    relativePoint = frame.buffsOnTop and "TOPLEFT" or "BOTTOMLEFT";
                    lastDebuffIndex = i;
                    _G[selfName].debuffs:SetPoint(point, dbf, point, 0, 0);
                    _G[selfName].debuffs:SetPoint(relativePoint, dbf, relativePoint, 0, -AURA_OFFSET_Y);
                    if ((isFriend) or (not isFriend and numBuffs == 0)) then
                        frame.spellbarAnchor = dbf;
                    end
                    drowWidth = DebuffSize
                    frame.auraRows = frame.auraRows + 1;
                else
                    drowWidth = drowWidth + DebuffSize + offsetX
                    relativePoint = frame.buffsOnTop and "BOTTOMRIGHT" or "TOPLEFT";
                    x = DebuffSize + offsetX;
                    y = 0;
                end

                if drowWidth > maxRowWidth then
                    drowWidth = DebuffSize;
                    point = frame.buffsOnTop and "BOTTOMLEFT" or "TOPLEFT";
                    DfFrame = _G[selfName .. "Debuff" .. lastDebuffIndex];
                    relativePoint = frame.buffsOnTop and "TOPLEFT" or "BOTTOMLEFT";
                    x = 0;
                    y = frame.buffsOnTop and offsetY or -offsetY;
                    frame.auraRows = frame.auraRows + 1;
                    lastDebuffIndex = i;
                    _G[selfName].debuffs:SetPoint(relativePoint, dbf, relativePoint, 0, -AURA_OFFSET_Y);
                    if ((isFriend) or (not isFriend and numBuffs == 0)) then
                        frame.spellbarAnchor = dbf;
                    end
                end

                dbf:ClearAllPoints()
                dbf:SetPoint(point, DfFrame, relativePoint, x, y);
                dbf:Show()
                DfFrame = dbf;
                dbf:SetWidth(DebuffSize)
                dbf:SetHeight(DebuffSize)
                local debuffFrame =_G[selfName .. "Debuff" .. i .."Border"];
                debuffFrame:SetWidth(DebuffSize+2);
                debuffFrame:SetHeight(DebuffSize+2);
            else
                dbf:Hide()
            end
        end
    end

    --frame.auraRows = 0

    if (frame.spellbar) then
        DeBuffFilter.Target_Spellbar_AdjustPosition(frame.spellbar);
    end
end

hooksecurefunc("Target_Spellbar_AdjustPosition", DeBuffFilter.Target_Spellbar_AdjustPosition)
hooksecurefunc("TargetFrame_UpdateAuras", DeBuffFilter.Filterino)
