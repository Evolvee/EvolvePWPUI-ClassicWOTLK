DeBuffFilter = LibStub("AceAddon-3.0"):NewAddon("DeBuffFilter", "AceEvent-3.0", "AceHook-3.0", "AceConsole-3.0")
local _G = getfenv(0)
local UnitIsUnit, UnitIsOwnerOrControllerOfUnit, pairs = _G.UnitIsUnit, _G.UnitIsOwnerOrControllerOfUnit, _G.pairs
local MAX_TARGET_DEBUFFS = 16;
local MAX_TARGET_BUFFS = 32;
local UnitBuff, UnitDebuff = _G.UnitBuff, _G.UnitDebuff
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
local function Filterino(frame)
    if not frame then
        return
    end

    local selfName = frame:GetName()
    local isFriend = UnitIsFriend("player", frame.unit);
    local SMALL_AURA_SIZE = RougeUI and RougeUI.OtherBuffSize or 17
    local LARGE_AURA_SIZE = RougeUI and RougeUI.SelfSize or 21
    local maxRowWidth = RougeUI and RougeUI.AuraRow or 122
    local AURA_START_Y = frame.buffsOnTop and -SMALL_AURA_SIZE or 32;
    local rowWidth = 0;
    local offsetX, offsetY = 3, AURA_OFFSET_Y
    local lastBuffIndex = 1
    local anchorFrame
    local numBuffs, numDebuffs = 0, 0
    local point, relativePoint;
    local startY, auraOffsetY;

    frame.auraRows = 0
    frame.spellbarAnchor = nil

    if frame.buffsOnTop then
        point = "BOTTOM";
        relativePoint = "TOP";
        startY = -15;
        if ( frame.threatNumericIndicator:IsShown() ) then
            startY = startY + frame.threatNumericIndicator:GetHeight();
        end
        offsetY = -offsetY;
        auraOffsetY = -AURA_OFFSET_Y;
    else
        point = "TOP";
        relativePoint="BOTTOM";
        startY = AURA_START_Y;
        auraOffsetY = AURA_OFFSET_Y;
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
            local frameName = selfName .. "Buff" .. i
            local buffFrame = _G[frameName]

            if buffFrame then
                if not DeBuffFilter:IsBuffNameBlocked(name) then
                    local buffSize = ShouldAuraBeLarge(caster) and LARGE_AURA_SIZE or SMALL_AURA_SIZE
                    offsetY = ShouldAuraBeLarge(caster) and (AURA_OFFSET_Y + AURA_OFFSET_Y) or AURA_OFFSET_Y

                    if i == 1 or anchorFrame == nil then
                        if isFriend or (numDebuffs == 0) then
                            anchorFrame = frame;
                            buffFrame:ClearAllPoints()
                            buffFrame:SetPoint(point.."LEFT", frame, relativePoint.."LEFT", AURA_START_X, startY);
                        else
                            anchorFrame = frame.debuffs;
                            buffFrame:ClearAllPoints()
                            buffFrame:SetPoint(point.."LEFT", frame.debuffs, relativePoint.."LEFT", 0, -offsetY);
                        end
                        frame.buffs:ClearAllPoints()
                        frame.buffs:SetPoint(point.."LEFT", buffFrame, point.."LEFT", 0, 0);
                        frame.buffs:SetPoint(relativePoint.."LEFT", buffFrame, relativePoint.."LEFT", 0, -auraOffsetY);
                        lastBuffIndex = i;
                        frame.spellbarAnchor = buffFrame
                        rowWidth = buffSize
                        frame.auraRows = frame.auraRows + 1;
                    else
                        rowWidth = rowWidth + buffSize + offsetX
                        if anchorFrame ~= buffFrame then
                            buffFrame:ClearAllPoints()
                            buffFrame:SetPoint(point.."LEFT", anchorFrame, point.."RIGHT", offsetX, 0);
                        end
                    end

                    if rowWidth > maxRows(frame, maxRowWidth, frame.buffsOnTop) then
                        rowWidth = buffSize
                        anchorFrame = _G[selfName .. "Buff" .. lastBuffIndex];
                        buffFrame:ClearAllPoints()
                        buffFrame:SetPoint(point.."LEFT", _G[selfName .. "Buff" .. lastBuffIndex], relativePoint.."LEFT", 0, -offsetY);
                        frame.buffs:ClearAllPoints()
                        frame.buffs:SetPoint(relativePoint.."LEFT", buffFrame, relativePoint.."LEFT", 0, -auraOffsetY);
                        frame.auraRows = frame.auraRows + 1;
                        lastBuffIndex = i;
                        frame.spellbarAnchor = buffFrame
                    end

                    buffFrame:SetAlpha(1)
                    anchorFrame = buffFrame;
                    numBuffs = numBuffs + 1
                    buffFrame:SetWidth(buffSize)
                    buffFrame:SetHeight(buffSize)
                else
                    buffFrame:SetAlpha(0)
                end
            end
        end
    end

    local DfFrame, drowWidth = nil, 0
    local lastDebuffIndex = 1

    for i = 1, MAX_TARGET_DEBUFFS do
        local dbf = _G[selfName .. "Debuff" .. i]
        local debuffName, _, _, _, _, _, caster = UnitDebuff(frame.unit, i, "HARMFUL")
        if dbf and debuffName then
            if not DeBuffFilter:IsBuffNameBlocked(debuffName) then
                local DebuffSize = ShouldAuraBeLarge(caster) and LARGE_AURA_SIZE or SMALL_AURA_SIZE
                offsetY = ShouldAuraBeLarge(caster) and (AURA_OFFSET_Y + AURA_OFFSET_Y) or AURA_OFFSET_Y

                if i == 1 or DfFrame == nil then
                    if (isFriend and numBuffs > 0) then
                        DfFrame = frame.buffs;
                        dbf:ClearAllPoints()
                        dbf:SetPoint(point.."LEFT", frame.buffs, relativePoint.."LEFT", 0, -offsetY);
                    else
                        DfFrame = frame;
                        dbf:ClearAllPoints()
                        dbf:SetPoint(point.."LEFT", frame, relativePoint.."LEFT", AURA_START_X, startY);
                    end
                    lastDebuffIndex = i;
                    frame.debuffs:ClearAllPoints()
                    frame.debuffs:SetPoint(point.."LEFT", dbf, point.."LEFT", 0, 0);
                    frame.debuffs:SetPoint(relativePoint.."LEFT", dbf, relativePoint.."LEFT", 0, -auraOffsetY);
                    if ((isFriend) or (not isFriend and numBuffs == 0)) then
                        frame.spellbarAnchor = dbf;
                    end
                    drowWidth = DebuffSize
                    frame.auraRows = frame.auraRows + 1;
                else
                    drowWidth = drowWidth + DebuffSize + offsetX
                    if DfFrame ~= dbf then
                        dbf:ClearAllPoints()
                        dbf:SetPoint(point.."LEFT", DfFrame, point.."RIGHT", offsetX, 0);
                    end
                end

                if drowWidth > maxRows(frame, maxRowWidth, frame.buffsOnTop) then
                    drowWidth = DebuffSize;
                    DfFrame = _G[selfName .. "Debuff" .. lastDebuffIndex];
                    dbf:ClearAllPoints()
                    dbf:SetPoint(point.."LEFT", _G[selfName .. "Debuff" .. lastDebuffIndex], relativePoint.."LEFT", 0, -offsetY);
                    frame.debuffs:ClearAllPoints()
                    frame.debuffs:SetPoint(relativePoint.."LEFT", dbf, relativePoint.."LEFT", 0, -auraOffsetY);
                    frame.auraRows = frame.auraRows + 1;
                    lastDebuffIndex = i;
                    if ((isFriend) or (not isFriend and numBuffs == 0)) then
                        frame.spellbarAnchor = dbf;
                    end
                end

                dbf:SetAlpha(1)
                DfFrame = dbf;
                dbf:SetWidth(DebuffSize)
                dbf:SetHeight(DebuffSize)
                local debuffFrame = _G[selfName .. "Debuff" .. i .. "Border"];
                debuffFrame:SetWidth(DebuffSize + 2);
                debuffFrame:SetHeight(DebuffSize + 2);
            else
                dbf:SetAlpha(0)
            end
        end
    end

    if (frame.spellbar) then
        New_Target_Spellbar_AdjustPosition(frame.spellbar);
    end
end

hooksecurefunc("Target_Spellbar_AdjustPosition", New_Target_Spellbar_AdjustPosition)
hooksecurefunc("TargetFrame_UpdateAuraPositions", Filterino)
