cacheUnit = {}
local unitID = { "arena1", "arena2", "arena3" }
local ipairs = ipairs
local UnitGUID, UnitClass = UnitGUID, UnitClass
local CombatLog_Object_IsA, COMBATLOG_FILTER_HOSTILE_PLAYERS = CombatLog_Object_IsA, COMBATLOG_FILTER_HOSTILE_PLAYERS

local function unitToken(guid)
    for _, unit in ipairs(unitID) do
        if UnitGUID(unit) == guid then
            return unit
        end
    end
end

local eventRegistered = {
    ["SWING_DAMAGE"] = true,
    ["RANGE_DAMAGE"] = true,
    ["SPELL_DAMAGE"] = true,
    ["SPELL_PERIODIC_DAMAGE"] = true,
    ["SPELL_AURA_APPLIED"] = true,
    ["SPELL_AURA_REMOVED"] = true,
}

local PF = {
    [8122] = true,
    [8124] = true,
    [10888] = true,
    [10890] = true,
    [5782] = true,
    [6213] = true,
    [6215] = true,
    [5484] = true,
    [17928] = true,
    [5246] = true, -- Intimidating Shout
    [51514] = true, -- Hex
    [10326] = true -- Turn Evil
}

-- https://wowwiki-archive.fandom.com/wiki/Base_health
local classHealth = {
    [1] = 8121, -- Warrior
    [2] = 6934, -- Paladin
    [3] = 7324, -- Hunter
    [4] = 7604, -- Rogue
    [5] = 6960, -- Priest
    [6] = 8121, -- Death Knight
    [7] = 7604, -- Shaman
    [8] = 6963, -- Mage
    [9] = 7164, -- Warlock
    [11] = 7417, -- Druid
}

-- Do all damaging trinket procs count or only pendulum of telluric currents?
local bustedSpells = {
    [GetSpellInfo(58381)] = true, -- Mind Flay
    [GetSpellInfo(63675)] = true, -- Improved Devouring Plague
}

local function CLEU()
    local _, type, _, _, _, _, _, destGUID, _, destFlags, _, spellID, spellName, _, arg15, _, _, arg18, _, _, arg21 = CombatLogGetCurrentEventInfo()

    local isDestEnemy = CombatLog_Object_IsA(destFlags, COMBATLOG_FILTER_HOSTILE_PLAYERS)

    if not (eventRegistered[type]) or not isDestEnemy then
        return
    end

    if type == "SPELL_AURA_APPLIED" then
        if PF[spellID] then
            local unit = unitToken(destGUID)

            if not unit then
                return
            end

            local _, _, class = UnitClass(unit)
            local amount = classHealth[class] * 0.40
            --local amount = UnitHealthMax(unit) * 0.15

            cacheUnit.unit = unit
            cacheUnit[destGUID] = {
                maxAmount = amount,
                feared = true,
                currentAmount = amount,
            }
        end
    elseif type == "SPELL_AURA_REMOVED" then
        if PF[spellID] and (cacheUnit[destGUID] and cacheUnit[destGUID].feared) then
            cacheUnit[destGUID] = {}
        end
    else
        if (cacheUnit[destGUID] and cacheUnit[destGUID].feared) then
            if bustedSpells[spellName] and (type ~= "SPELL_PERIODIC_DAMAGE") then
                return
            end

            local damage, arg

            if type == "SWING_DAMAGE" then
                damage = spellID
                arg = arg18
            else
                damage = arg15
                arg = arg21
            end

            cacheUnit[destGUID].currentAmount = cacheUnit[destGUID].currentAmount - damage
        end
    end
end

local frame = CreateFrame("Frame")
frame:RegisterEvent("PLAYER_ENTERING_WORLD")
frame:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
frame:SetScript("OnEvent", function(self, event, ...)
    if event == "PLAYER_ENTERING_WORLD" then
        cacheUnit = {}
    elseif event == "COMBAT_LOG_EVENT_UNFILTERED" then
        CLEU()
    end
end)

