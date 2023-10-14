local name, o = ...

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
	[GetSpellInfo(47502)] = true, -- Thunder Clap
	[GetSpellInfo(47437)] = true, -- Demoralizing Shout
	[GetSpellInfo(29859)] = true, -- Blood Frenzy
	[GetSpellInfo(49231)] = true, -- Earth Shock
	
}

local smbDefaults = {
    debuffs = {
        numLines = 18,
        numPerLine = 4,
        buffSize = 16,
    },
}

local function ShowThisBuff(rules, name)
    if blacklist[name] then
        return
    end
    return true
end

local function RefreshBuffsList(frame, friendly, unit, rules, checker)
    local numBuffs = rules.numLines * rules.numPerLine
    -- TODO detect suffix from isFriendly(unit)?
    local framePrefix = frame:GetName() .. "Debuffz"

    local name, icon, count, debuffType, duration, expirationTime, unitCaster, isStealable, shouldConsolidate, spellId;
    local buffI = 1
    for i = 1, numBuffs do
        name, icon, count, debuffType, duration, expirationTime, unitCaster, isStealable, shouldConsolidate, spellId = UnitDebuff(unit, i, "HARMFUL")

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
					cooldown:SetHideCountdownNumbers(true) -- disabling the Blizzard cancer countdown thats stickied on everything and not just action bars (false advertisement Lizzard!!!)
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

    for i = buffI, 40 do
        local buffName = framePrefix .. i
        _G[buffName]:Hide()
    end
end

-- DEBUFFS
local function LoadUnitDebuffs(rules, pointX, pointY, f)
    local g
    if not g then
        g = CreateFrame("Frame")
        f:UnregisterEvent("UNIT_AURA")
        g:RegisterEvent("UNIT_AURA")
        g:SetScript("OnEvent", function(self, event, a1)
            if a1 == f.unit then
                RefreshBuffsList(f, false, f.unit, rules, ShowThisBuff)
            end
        end)
    end
    for j = 1, 40 do
        local l = f:GetName() .. "Debuffz"
        local n = l .. j
        local c = CreateFrame("Frame", n, f, "PartyDebuffFrameTemplate")
        c:ClearAllPoints()
        if j == 1 then
            --c:SetPoint("BOTTOMLEFT", _G[l..(j-1)],"BOTTOMRIGHT", 3, 0)
            --c:SetPoint("TOPLEFT",pointX,pointY)
        elseif ((j - 1) % rules.numPerLine) == 0 then
            c:SetPoint("TOPLEFT", _G[l .. (j - rules.numPerLine)], "BOTTOMLEFT", 0, -1)
        else
            c:SetPoint("LEFT", _G[l .. (j - 1)], "RIGHT", 1, 0)
        end
        c:SetSize(rules.buffSize, rules.buffSize)
        c:Hide()

        local cd = _G[n .. "Cooldown"]
        if not cd then
            cd = CreateFrame("Cooldown", n .. "Cooldown", c, "CooldownFrameTemplate")
            cd:SetReverse(true)
            --cd:SetDrawEdge(true)
            cd:SetSize(20, 20) -- V: size needs to be AT LEAST 20
            --    ...does that mean rules.buffSize should be >=20?
            cd:SetPoint("CENTER", 0, -1)
        end
    end
    local b = _G[f:GetName() .. "Debuffz1"]
    b:ClearAllPoints()
    b:SetPoint("TOPLEFT", pointX, pointY)
    RefreshBuffsList(f, false, f.unit, rules, ShowThisBuff)
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
        local frame = _G["PartyMemberFrame"..i.."Debuff"..i]
        frame:SetAlpha(0)
    end
    LoadPartyDebuffs(smbDefaults.debuffs, 48, -32)
end

local smb = CreateFrame("Frame")
smb:RegisterEvent("VARIABLES_LOADED")
smb:SetScript("OnEvent", SmbLoaded)

