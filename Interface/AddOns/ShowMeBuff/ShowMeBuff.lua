-- V: Copy-pasted then modified
local name, o = ...

local smbDefaults = {
    debuffs = {
        numLines = 18,
        numPerLine = 4,
        buffSize = 16,
    },
}

local blacklist = {
    [GetSpellInfo(1543)] = true, -- Flare
    [GetSpellInfo(6788)] = true, -- Weakened Soul
	[GetSpellInfo(48560)] = true, -- Demoralizing Roar
	[GetSpellInfo(57723)] = true, -- Exhaustion
	[GetSpellInfo(48660)] = true, -- Hemorrhage
	[GetSpellInfo(48564)] = true, -- Mangle (Bear)
	[GetSpellInfo(48566)] = true, -- Mangle (Cat)
	[GetSpellInfo(33193)] = true, -- Misery
	[GetSpellInfo(57724)] = true, -- Sated
	[GetSpellInfo(57722)] = true, -- Totem of Wrath
	[GetSpellInfo(46857)] = true, -- Trauma
	[GetSpellInfo(26013)] = true, -- Deserter
	[GetSpellInfo(29859)] = true, -- Blood Frenzy
	[GetSpellInfo(8647)] = true, -- Expose Armor

}

local function ShowThisBuff(rules, name, spellId, duration, expirationTime, unitCaster, shouldConsolidate)
    if blacklist[name] then
        return
    end
    return true
end

local function RefreshBuffsList(frame, friendly, unit, rules, checker)
    local numBuffs = rules.numLines * rules.numPerLine
    -- TODO detect suffix from isFriendly(unit)?
    local framePrefix = frame:GetName() .. (friendly and "Buff" or "Debuff")
    local buffFn = friendly and UnitBuff or UnitDebuff

    local name, icon, count, debuffType, duration, expirationTime, unitCaster, isStealable, shouldConsolidate, spellId;
    local buffI = 1
    local filter = friendly and "HELPFUL" or "HARMFUL"
    for i = 1, numBuffs do
        name, icon, count, debuffType, duration, expirationTime, unitCaster, isStealable, shouldConsolidate, spellId = buffFn(unit, i, filter)

        -- we ran out of buffs OR we have enough displayed
        if not name or buffI > numBuffs then
            break -- could even return
        end

        if checker(rules, name, spellId, duration, expirationTime, unitCaster, friendly and shouldConsolidate) then
            local buffName = framePrefix .. buffI
            if (icon) then
                -- if we have an icon to show then proceed with setting up the aura

                -- set the icon
                local buffIcon = _G[buffName .. "Icon"]
                buffIcon:SetTexture(icon)

                -- setup the cooldown
                local cooldown = _G[buffName .. "Cooldown"]
                if cooldown then
                    cooldown:SetCooldown(expirationTime - duration, duration, 1)
					cooldown:SetHideCountdownNumbers(true)
                end

                local border = _G[buffName .. "Border"]
                if border then
                    local color = DebuffTypeColor["none"]
                    if debuffType then
                        color = DebuffTypeColor[debuffType]
                    end
                    border:SetVertexColor(color.r, color.g, color.b)
                end

                -- show the aura
                _G[buffName]:Show()
            else
                -- no icon, hide the aura
                _G[buffName]:Hide()
            end
            buffI = buffI + 1
        end
    end

    -- hide all remaining buff frames
    -- "buffI" here is already 1 past the last displayed buff
    for i = buffI, 40 do
        local buffName = framePrefix .. i
        _G[buffName]:Hide()
    end
end

-- DEBUFFS
local function LoadUnitDebuffs(rules, pointX, pointY, frame)
    local g = frame.smbDebuffFrame
    if not g then
        frame:UnregisterEvent("UNIT_AURA")
        g = CreateFrame("Frame")
        frame.smbDebuffFrame = g
        g:RegisterEvent("UNIT_AURA")
        g:SetScript("OnEvent", function(self, event, unitTarget)
            if unitTarget == frame.unit then
                RefreshBuffsList(frame, false, frame.unit, rules, ShowThisBuff)
            end
        end)
    end

    for j = 1, 40 do
        local selfName = frame:GetName() .. "Debuff"
        local debuff = selfName .. j
        local debuffFrame = _G[debuff] or CreateFrame("Frame", debuff, frame, "PartyDebuffFrameTemplate")
        debuffFrame:ClearAllPoints()
        if j == 1 then
            --c:SetPoint("BOTTOMLEFT", _G[l..(j-1)],"BOTTOMRIGHT", 3, 0)
            --c:SetPoint("TOPLEFT",pointX,pointY)
        elseif ((j - 1) % rules.numPerLine) == 0 then -- new row
            debuffFrame:SetPoint("TOPLEFT", _G[selfName .. (j - rules.numPerLine)], "BOTTOMLEFT", 0, -1)
        else -- attach previous
            debuffFrame:SetPoint("LEFT", _G[selfName .. (j - 1)], "RIGHT", 1, 0)
        end
        debuffFrame:SetSize(rules.buffSize, rules.buffSize)
        debuffFrame:Hide()

        -- V: we need to specifically create a cooldown frame inside of "c"
        --    because PartyDebuffFrameTemplate has none
        local cd = _G[debuff .. "Cooldown"]
        if not cd then
            cd = CreateFrame("Cooldown", debuff .. "Cooldown", debuffFrame, "CooldownFrameTemplate")
            cd:SetReverse(true)
            cd:SetSize(20, 20)
            cd:SetPoint("CENTER", 0, -1)
        end
    end
    local b = _G[frame:GetName() .. "Debuff1"]
    b:ClearAllPoints()
    b:SetPoint("TOPLEFT", pointX, pointY)
    RefreshBuffsList(frame, false, frame.unit, rules, ShowThisBuff)
end

local function LoadPartyDebuffs(rules, pointX, pointY)
    for i = 1, 4 do
        local f = _G["PartyMemberFrame" .. i]
        LoadUnitDebuffs(rules, pointX, pointY, f)
    end
end

local function SmbLoaded(self)
    self:SetScript("OnEvent", function(self, event, ...)
        if self[event] then
            self[event](self, ...)
        end
    end)

    for i = 1, 4 do
        local f = _G["PartyMemberFrame"..i.."Debuff"..i]
        if f then
            f:Hide()
            f:UnregisterAllEvents()
        end
    end
    LoadPartyDebuffs(smbDefaults.debuffs, 48, -32)
end

local smb = CreateFrame("Frame")
smb:RegisterEvent("VARIABLES_LOADED")
smb:SetScript("OnEvent", SmbLoaded)
