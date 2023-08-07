--[[
Name: Ability Team Tracker
Author: Izy
Contact: mediaizy@gmail.com
Support @ curseforge.com/wow/addons/att
Description: Track the cooldowns of your party members
--]]

local _G = _G
local addon, ATTdbs = ...
local pairs = pairs
local GetSpellInfo = GetSpellInfo
local UnitClass = UnitClass
local UnitGUID = UnitGUID
local IsInInstance = IsInInstance
local IsInGroup = IsInGroup
local IsInRaid = IsInRaid
local UnitRace = UnitRace
local CooldownFrame_Set = CooldownFrame_Set
local GetPvpTalentInfoByID = GetPvpTalentInfoByID
local GetSpecialization = GetSpecialization
local GetSpecializationInfo = GetSpecializationInfo
local GetInspectSpecialization = GetInspectSpecialization
local ClearInspectPlayer = ClearInspectPlayer
local UnitTokenFromGUID = UnitTokenFromGUID
local GetInspectSelectedPvpTalent = C_SpecializationInfo.GetInspectSelectedPvpTalent
local LGlows = ATTdbs.LibATTButtonGlow
local SO = ATTdbs.LibSimpleOptions
local openRaidLib = ATTdbs.openRaidLib
local ChatPrefix = "ATT-Check"
local ATTversion = GetAddOnMetadata("ATT", "Version")
local db
local selectedDB
local dbModif = ATTdbs.dbModif
local dbModif2 = ATTdbs.dbModif2
local dbModif3 = ATTdbs.dbModif3
local dbReducePowerSpell = ATTdbs.dbReducePowerSpell
local dbRacials = ATTdbs.dbRacials
local dbImport = ATTdbs.dbImport
local dbReplace = ATTdbs.dbReplace
local isStun = ATTdbs.isStun
local dbAuraRemoved = ATTdbs.dbAuraRemoved
local dbAuraApplied = ATTdbs.dbAuraApplied
local dbModifCharge = ATTdbs.dbModifCharge
local dbTrinkets = ATTdbs.dbTrinkets
local dbTrinketsMerge = ATTdbs.dbTrinketsMerge
local dbisPVPspell = ATTdbs.isPVPspell
local itemBonus = ATTdbs.dbItemBonus
local setBonus = ATTdbs.dbSetBonus
local cooldownResetters = ATTdbs.cooldownResetters
local validPartyUnits = ATTdbs.validPartyUnits
local validRaidUnits = ATTdbs.validRaidUnits
local customframes = ATTdbs.customframes
local ATT = CreateFrame("Frame", "ATT", UIParent)
local ATTIcons = CreateFrame("Frame", nil, UIParent)
local ATTAnchor = CreateFrame("Frame", nil, UIParent)
local ATTInspectFrame = CreateFrame("Frame")
local ATTDampframe = CreateFrame("Frame", nil, UIParent)

local NotifyInspect = NotifyInspect
local elapsedTime = 0

local anchors = {}
local activeGUIDS = {}
local activeBUFFS = {}
local activeAURAS = {}
local syncChache = {}

-- Player Inspect
local inspect_queue = {}
local dbInspect = {}
local insUnitStart = {}
local hookedFrames = {}
-- Info spells
local DampeningName = GetSpellInfo(110310)
local PlayerGUID = UnitGUID("player")


local function print(...)
    for i = 1, select('#', ...) do
        ChatFrame1:AddMessage("|cff33ff99ATT|r: " .. select(i, ...))
    end
end

function ATT:GetUnitByGUID(guid)
    if not guid then return end
    local validUnits = ATT.inRaid and validRaidUnits or validPartyUnits
    for k, v in pairs(validUnits) do
        if guid and UnitGUID(k) == guid then
            return k
        end
    end
end

function ATT:GetAnchorByUnit(unit)
    if not validRaidUnits[unit] and not validPartyUnits[unit] then return end
    local guid = UnitGUID(unit)
    local fixedUnit = self:GetUnitByGUID(guid)
    local validUnits = ATT.inRaid and validRaidUnits or validPartyUnits
    return anchors[validUnits[fixedUnit]]
end

function ATT:CheckInspectQueue(guid)
    for i = 1, #inspect_queue do
        if inspect_queue[i] == guid then
            return
        end
    end
end

function ATT:QueueInspect(guid)
    if guid then
        for i = 1, #inspect_queue do
            if inspect_queue[i] == guid then
                return
            end
        end
        insUnitStart[guid] = GetTime()
        inspect_queue[#inspect_queue + 1] = guid
    end
end

function ATT:DequeueInspectByGUID(guid)
    for i = 1, #inspect_queue do
        if inspect_queue[i] == guid then
            table.remove(inspect_queue, i)
        end
    end
end

function ATT:RequeueInspectByGUID(guid)
    for i = 1, #inspect_queue do
        if inspect_queue[i] == guid then
            self.insTimes = 0
            table.remove(inspect_queue, i)
            inspect_queue[#inspect_queue + 1] = guid
        end
    end
end
function ATT:ProcessInspect(unit, guid, specInspect)
    -- Talent Check / Inspect
    if unit and specInspect and specInspect ~= "0" and specInspect ~= "nil" then
        dbInspect[guid] = {}
        dbInspect[guid]["not"] = {}
        dbInspect[guid]["extraCharge"] = {}
        dbInspect[guid]["legeinfo"] = {}
        dbInspect[guid]["spec"] = tonumber(specInspect)
        activeBUFFS[guid] = activeBUFFS[guid] or {}

        local isInspect = (guid ~= PlayerGUID) and unit

        local ConfigID = isInspect and Constants.TraitConsts.INSPECT_TRAIT_CONFIG_ID or C_ClassTalents.GetActiveConfigID()

        if not ConfigID then
            return
        end

        if specInspect == 261 then dbInspect[guid][185313] = 1 end --fix sdance sub

        for k = 1, 3 do
            local _, _, _, _, _, spellID = GetPvpTalentInfoByID((isInspect and GetInspectSelectedPvpTalent(unit, k) or C_SpecializationInfo.GetAllSelectedPvpTalentIDs()[k]) or 0)
            if ATT.isPVP and spellID then
                dbInspect[guid][spellID] = 1
            end
        end

        local ConfigInfo = C_Traits.GetConfigInfo(ConfigID);
        local TreeIDs = ConfigInfo["treeIDs"];
        for i = 1, #TreeIDs do
            for _, NodeID in pairs(C_Traits.GetTreeNodes(TreeIDs[i])) do
                local NodeInfo = C_Traits.GetNodeInfo(ConfigID, NodeID)
                local activeEntry = NodeInfo.activeEntry
                local activeRank = NodeInfo.activeRank;
                if (activeEntry and activeRank > 0) then
                    local activeEntryID = activeEntry.entryID;
                    local EntryInfo = C_Traits.GetEntryInfo(ConfigID, activeEntryID)
                    local DefinitionID = EntryInfo["definitionID"]
                    local DefinitionInfo = C_Traits.GetDefinitionInfo(DefinitionID)
                    local spellID = ATTdbs.dbTalentSpellFix[activeEntryID] or DefinitionInfo["spellID"]
                    if spellID then
                        if dbInspect[guid][spellID] and ATTdbs.dbChargeSpellFix[spellID] then
                            dbInspect[guid]["extraCharge"][spellID] = true
                        end
                        dbInspect[guid][spellID] = activeRank
                    end
                end
            end
        end

        for x = 1, #TreeIDs do
            for _, NodeID in pairs(C_Traits.GetTreeNodes(TreeIDs[x])) do
                local NodeInfo = C_Traits.GetNodeInfo(ConfigID, NodeID)
                local entryIDs = NodeInfo.entryIDs
                for y = 1, #entryIDs do
                    local activeEntryID = entryIDs[y];
                    local EntryInfo = C_Traits.GetEntryInfo(ConfigID, activeEntryID)
                    local DefinitionID = EntryInfo["definitionID"]
                    local DefinitionInfo = C_Traits.GetDefinitionInfo(DefinitionID)
                    local spellID = ATTdbs.dbTalentSpellFix[activeEntryID] or DefinitionInfo["spellID"]
                    if spellID then
                        if not dbInspect[guid][spellID] then
                            dbInspect[guid]["not"][spellID] = true
                        end
                    end
                end
            end
        end

        --	tooltipData = C_TooltipInfo.GetInventoryItem(unit, slotID)
        --local tooltipData = C_TooltipInfo.GetUnit("player")

        -- Lege / trinket check
        for k = 13, 14 do
            local itemLink = GetInventoryItemLink(unit, k)
            local itemID = itemLink and GetItemInfoInstant(itemLink)

            if itemID then
                if dbTrinketsMerge[itemID] then itemID = dbTrinketsMerge[itemID] end
                dbInspect[guid][itemID] = 1
            end
        end

        for k = 1, 12 do
            local itemLink = GetInventoryItemLink(unit, k)
            local itemID = itemLink and GetItemInfoInstant(itemLink)
            if itemID then
                local hasItemBonus = itemBonus[itemID]
                if hasItemBonus then
                    dbInspect[guid][hasItemBonus] = 1
                end
                local hasSetBonus = setBonus[itemID]
                if hasSetBonus then
                    dbInspect[guid][hasSetBonus] = dbInspect[guid][hasSetBonus] and (dbInspect[guid][hasSetBonus] + 1) or 1
                end
            end
        end
    end
    self:UpdateIcons()

    if syncChache[guid] then
        local anchor = self:GetAnchorByUnit(unit)
        local syncSpells = syncChache[guid]
        if next(syncSpells) and anchor then
            for k, icon in pairs(anchor.icons) do
                if syncSpells[icon.abilityID] then
                self:ProcessSync(anchor, icon.abilityID, syncSpells[icon.abilityID], unit)
                end
            end
        end
        syncChache[guid] = nil
    end
end

function ATT:InspectPlayer()
    local _, type = IsInInstance()
    ATT.inRaid =  (IsInRaid() and type ~= "arena") or C_PvP.IsInBrawl()
    ATT.isPVP = (C_PvP.IsWarModeDesired() and type == "none") or (type == "arena") or (type == "pvp")
    ATT.isBgMode = db.bgMode and (type == "pvp")
    local currentSpec = GetSpecialization()
    local specInspect = currentSpec and GetSpecializationInfo(currentSpec)
    PlayerSpec = specInspect and tostring(specInspect)
    local unit = self:GetUnitByGUID(PlayerGUID)
    self:ProcessInspect(unit, PlayerGUID, specInspect)
end

function ATT:InspectIsReady(guid, unit)
    self:DequeueInspectByGUID(guid)
    if guid and unit and guid ~= PlayerGUID then
        local specInspect = GetInspectSpecialization(unit)
        self:ProcessInspect(unit, guid, specInspect)
    end
end

function ATT:EnqueueInspect(isUpdate)
    local groupSize = GetNumGroupMembers() < db.raidGroupSize and GetNumGroupMembers() or db.raidGroupSize

    for i = 1, ((ATT.inRaid and groupSize) or 4) do --inRaidGr
        local unit = (ATT.inRaid and "raid" .. i) or ("party" .. i)
        local guid = UnitGUID(unit)
        if guid and guid ~= PlayerGUID then
            if isUpdate then
                if not dbInspect[guid] or (dbInspect[guid] and not dbInspect[guid]["spec"]) then
                    self:QueueInspect(guid)
                end -- here
            else
                self:QueueInspect(guid)
            end
        end
    end
    --   if isUpdate and #inspect_queue > 0 and C_PvP.GetActiveMatchDuration() < 5 then
    --self:SendCovenant(PlayerGUID);
    -- self:SendUpdate()
    --   end
    if #inspect_queue > 0 and not ATTInspectFrame:IsShown() then
        self.lastIns = nil
        ATTInspectFrame:Show();
    end
end

function ATT:ProcessInspectQueue()
    local cTime = GetTime()

    for i, guid in pairs(inspect_queue) do
        local unit = self:GetUnitByGUID(guid)
        if (unit and (not UnitIsConnected(unit) or (insUnitStart[guid] and insUnitStart[guid] + 120 < cTime))) or not unit then --here
            self:DequeueInspectByGUID(guid)
            break
        end

        if self.lastIns == guid and (insUnitStart[guid] and insUnitStart[guid] + 2 < cTime) then
            elapsedTime = -1
            self.lastIns = nil
            self.insTimes = self.insTimes and (self.insTimes + 1) or 1
            if self.insTimes > 5 then
                self:RequeueInspectByGUID(guid)
                self.insTimes = 0
            end
            break
        end

        if unit and not (InspectFrame and InspectFrame:IsShown()) and UnitIsConnected(unit) and CanInspect(unit) then
            self.lastIns = guid
            NotifyInspect(unit)
            break
        end
    end
end

local function InspectTimer(self, elapsed)
    elapsedTime = elapsedTime + elapsed

    if elapsedTime and elapsedTime > 0.5 then
        elapsedTime = 0
        ATT:ProcessInspectQueue()
        if #inspect_queue == 0 then ATTInspectFrame:Hide() end
    end
end

function ATT:INSPECT_READY(guid)
    if (InspectFrame and InspectFrame:IsShown()) then
        return
    end
    local unit = self:GetUnitByGUID(guid)
    local itemLink = unit and GetInventoryItemLink(unit, 16); --insFix

    if guid and unit and self.lastIns == guid and itemLink and itemLink ~= nil then
        self:InspectIsReady(guid, unit)
        self.insTimes = 0
    end
end

function ATT:SavePositions()
    for k, anchor in ipairs(anchors) do
        local scale = anchor:GetEffectiveScale()
        local worldscale = UIParent:GetEffectiveScale()
        local x = anchor:GetLeft() * scale
        local y = (anchor:GetTop() * scale) - (UIParent:GetTop() * worldscale)
        if not db.positions[k] then
            db.positions[k] = {}
        end
        db.positions[k].x = x
        db.positions[k].y = y
    end
end

function ATT:CheckBlizzFrames()
    local compact = EditModeManagerFrame:UseRaidStylePartyFrames()
    local UseCombinedGroups = CompactRaidFrameContainer:UseCombinedGroups()

    local frametype = nil

    if ATT.inRaid then
        if compact and _G["CompactPartyFrameMember1"] and _G["CompactPartyFrameMember1"]:IsVisible() then
            frametype = "CompactPartyFrameMember%d"
        else
            if UseCombinedGroups then
                frametype = "CompactRaidFrame%d"
            else
                frametype = "CompactRaidGroup1RGMember%d"
            end
        end
    else
        if compact and _G["CompactPartyFrameMember1"] and _G["CompactPartyFrameMember1"]:IsVisible() then
            frametype = "CompactPartyFrameMember%d"
        else
            frametype = "PartyMemberFrame%d"
        end
    end

    return frametype
end

function ATT:FindFrames()
    hookedFrames = {}
    local frametype = nil
    local cunit = nil

    if db.attach == 1 and ATT_DropDown1.values[7] then
        frametype = customframes[ATT_DropDown1.values[7]].cframe
        cunit = customframes[ATT_DropDown1.values[7]].cunitid
    else
        if db.attach == 1 or db.attach == 2 then
            frametype = self:CheckBlizzFrames()
        elseif db.attach and db.attach > 2 and customframes[db.attach] then
            frametype = customframes[db.attach].cframe
            cunit = customframes[db.attach].cunitid
        end
    end

    if not frametype then
        return
    end

    local isGrouped = string.find(frametype, "1RG")
    if isGrouped then
        for k = 1, 8 do
            local framename = string.gsub(frametype, "1RG", k)
            for i = 1, 5 do
                local name = format(framename, i)
                local frame = _G[name]
                local unit = frame and (cunit and frame[cunit] or frame['unit'])
                local guid = unit and UnitGUID(unit)
                if guid and not frame:IsForbidden() and frame:IsShown() then
                    hookedFrames[guid] = frame
                end
            end
        end
    else
        if frametype == "CompactPartyFrameMember%d" then
            for i = 1, 5 do
                local name = "CompactPartyFrameMember" .. i
                local frame = _G[name]
                local unit = frame and (cunit and frame[cunit] or frame['unit'])
                local guid = unit and UnitGUID(unit)
                if guid and not frame:IsForbidden() and frame:IsShown() then
                    hookedFrames[guid] = frame
                end
            end
        elseif frametype == "PartyMemberFrame%d" then
            if PlayerGUID and _G["PlayerFrame"] and _G["PlayerFrame"]:IsShown() then hookedFrames[PlayerGUID] = _G["PlayerFrame"] end
            for frame in PartyFrame.PartyMemberFramePool:EnumerateActive() do
                local unit = frame:GetUnit()
                local guid = unit and UnitGUID(unit)
                if guid and not frame:IsForbidden() and frame:IsShown() then
                    hookedFrames[guid] = frame
                end
            end
        else
            for i = 1, 40 do
                local name = format(frametype, i)
                local frame = _G[name]
                local unit = frame and (cunit and frame[cunit] or frame['unit'])
                local guid = unit and UnitGUID(unit)
                if guid and not frame:IsForbidden() and frame:IsShown() then
                    hookedFrames[guid] = frame
                end
            end
        end
    end
    if PlayerGUID and _G["PlayerFrame"] and (not hookedFrames[PlayerGUID] or (hookedFrames[PlayerGUID] and not hookedFrames[PlayerGUID]:IsVisible() and GetNumGroupMembers() == 0)) then
        hookedFrames[PlayerGUID] = _G["PlayerFrame"]
    end

    --print(frametype)
end

function ATT:UpdatePositions()
    db.positions = db.positions or {}
    self:FindFrames()

    for k, anchor in ipairs(anchors) do
        anchors[k]:ClearAllPoints()
        local unit = (ATT.inRaid and "raid" .. k) or ((k == 5 and "player") or (k ~= 5 and "party" .. k))
        local anchorGuid = unit and UnitGUID(unit)
        local raidFrame =  hookedFrames[anchorGuid]

        if anchor.GUID == PlayerGUID and db.selfAttach then raidFrame = nil end

        if raidFrame and db.attach and db.attach ~= 0 then
            if not db.attachPos or db.attachPos == 0  then
                  anchors[k]:SetPoint("BOTTOMLEFT", raidFrame, "TOPLEFT", db.offsetX, db.offsetY) --anchorTOPLEFT
            elseif db.attachPos == 1 then
                  anchors[k]:SetPoint("BOTTOMRIGHT", raidFrame, "TOPRIGHT", db.offsetX, db.offsetY) --anchorTOPRIGHT
            elseif db.attachPos == 2 then
                  anchors[k]:SetPoint("TOPLEFT", raidFrame, "BOTTOMLEFT", db.offsetX, db.offsetY) --anchorBOTTOMLEFT
            elseif db.attachPos == 3 then
                    anchors[k]:SetPoint("TOPRIGHT", raidFrame, "BOTTOMRIGHT", db.offsetX, db.offsetY) --anchorBOTTOMRIGHT
            elseif db.attachPos == 4 then
               anchors[k]:SetPoint("CENTER", raidFrame, "LEFT", db.offsetX, db.offsetY) --anchorCENTERLEFT
            elseif db.attachPos == 5 then
               anchors[k]:SetPoint("CENTER", raidFrame, "RIGHT", db.offsetX, db.offsetY) --anchorCENTERRIGHT
            else
                anchors[k]:SetPoint("BOTTOMLEFT", raidFrame, "TOPLEFT", db.offsetX, db.offsetY) --anchorTOPLEFT
        end

        else
            if db.positions[k] then
                local x = db.positions[k].x
                local y = db.positions[k].y
                local scale = anchors[k]:GetEffectiveScale()
                anchors[k]:SetPoint("TOPLEFT", UIParent, "TOPLEFT", x / scale, y / scale)
            else
                anchors[k]:SetPoint("CENTER", UIParent, "CENTER")
            end
        end
    end
end

function ATT:CreateAnchors()
    for i = 1, 40 do
        local anchor = CreateFrame("Frame", "ATTAnchor" .. i, ATTAnchor, BackdropTemplateMixin and "BackdropTemplate, TooltipBackdropTemplate") --GlowBoxTemplate
        local index = anchor:CreateFontString(nil, "ARTWORK", "GameFontNormalSmall")

        anchor:SetHeight(22)
        anchor:SetWidth(24)
        anchor:EnableMouse(true)
        anchor:SetMovable(true)
        --anchor:Show()
        anchor.icons = {}
        anchor.StopAllIcons = function(flag)
            if anchor.GUID then activeBUFFS[anchor.GUID] = {} ; activeAURAS[anchor.GUID] = {} end
            for k, icon in ipairs(anchor.icons) do
                if flag ~= "raidstop" or (flag == "raidstop" and icon.cooldown and icon.cooldown >= 120) then
                    icon.Stop();
                    icon.seen = nil
                end
            end
        end
        anchor.StopAllGlow = function(flag)
            for k, icon in ipairs(anchor.icons) do
                LGlows.HideOverlayGlow2(icon)
            end
        end
        anchor:SetScript("OnMouseDown",
            function(self, button)
                if button == "LeftButton" and db.attach == 0 or
                    (anchor.GUID == PlayerGUID and db.selfAttach) then
                    self:StartMoving();
                end
            end)
        anchor:SetScript("OnMouseUp",
            function(self, button)
                if button == "LeftButton" and db.attach == 0 or
                    (anchor.GUID == PlayerGUID and db.selfAttach) then
                    self:StopMovingOrSizing();
                    ATT:SavePositions()
                end
            end)

        anchor:Hide()
        anchors[i] = anchor
        index:SetPoint("CENTER")
        index:SetText(i)
    end
end

local function CreateIcon(anchor)
    local icon = CreateFrame("Frame", anchor:GetName() .. "Icon" .. (#anchor.icons + 1), ATTIcons, "ATTButtonTemplate")
    icon:SetSize(40, 40)
    icon:SetAlpha(db.iconAlpha or 1)

    local cd = CreateFrame("Cooldown", icon:GetName() .. "Cooldown", icon, "CooldownFrameTemplate")
    cd:SetHideCountdownNumbers(false)
    icon.cd = cd

    icon.Start = function(sentCD, nextcharge, rate)
       -- if activeBUFFS[guid] and activeBUFFS[guid][icon.abilityID] then return end
       if activeBUFFS[icon.GUID] and activeBUFFS[icon.GUID][icon.abilityID] then return end --freeprocs
       local cTime = GetTime()
       
        if icon.raterecovery and not icon.excluded then
            rate = icon.raterecovery
            cTime = cTime * (1 - rate) + cTime * rate
            sentCD = sentCD * rate
            icon.cdrecovery = sentCD
        end
        icon.texture:SetVertexColor(1, 1, 1)

        local chargesText = icon.chargesText:GetText() and icon.chargesText:GetText():match("^[0-9]+$")
        local charges = chargesText and tonumber(chargesText)
        if icon.maxcharges and charges then
            if charges == icon.maxcharges or nextcharge == icon.maxcharges then
                CooldownFrame_Set(cd, cTime, sentCD, true, true, rate)
                cd:SetHideCountdownNumbers(true)
                cd:SetDrawSwipe(false)
                icon.starttime = cTime
                charges = charges - 1
                icon.chargesText:SetText(charges)
            elseif charges < icon.maxcharges and nextcharge == 5 then
                CooldownFrame_Set(cd, cTime, sentCD, true, true, rate)
                cd:SetHideCountdownNumbers(true)
                cd:SetDrawSwipe(false)
                icon.starttime = cTime
                icon.chargesText:SetText(charges)
            elseif charges > 1 and nextcharge == 1 and icon.starttime < cTime and charges < icon.maxcharges then
                if not icon.glowDuration then
                    cd:SetHideCountdownNumbers(false)
                end
                charges = charges - 1
                icon.chargesText:SetText(charges)
            elseif charges == 1 and nextcharge == 1 and icon.starttime < cTime then
                if not icon.glowDuration then
                    cd:SetHideCountdownNumbers(false)
                end
                cd:SetDrawEdge(true)
                cd:SetDrawSwipe(true)
                charges = charges - 1
                icon.chargesText:SetText(charges)
            end
        else
            CooldownFrame_Set(cd, cTime, sentCD, true, false, rate)
            icon.starttime = cTime
        end

        icon:Show()
        icon.active = true;
        icon.flashAnim:Play()

        activeGUIDS[icon.GUID] = activeGUIDS[icon.GUID] or {}
        activeGUIDS[icon.GUID][icon.abilityID] = activeGUIDS[icon.GUID][icon.abilityID] or {}
        activeGUIDS[icon.GUID][icon.abilityID].chargeleft = charges
        activeGUIDS[icon.GUID][icon.abilityID].starttime = icon.starttime
        activeGUIDS[icon.GUID][icon.abilityID].cooldown = sentCD
        if db.hidden then ATT:ToggleDisplay(anchor, icon.GUID) end
        if icon.ability and icon.abilityID and anchor.spec and nextcharge ~= 5 then
            if db.alertCD[anchor.spec][icon.abilityID] then PlaySound(8959, "Master"); end
            if db.alertCDtext[anchor.spec][icon.abilityID] then
                local playername = select(6, GetPlayerInfoByGUID(icon.GUID))
                if playername then
                    UIErrorsFrame:AddMessage("|T" .. icon.texture:GetTexture() ..":18|t |cffFF4500" .. icon.ability .. "|r  - used by ->>  |cffFF4500" .. playername .. "|r");
                end
            end
        end
    end

    icon.Stop = function()
        if icon.glowDuration then
            LGlows.HideOverlayGlow2(icon)
        end
        CooldownFrame_Set(cd, 0, 0, 0);
        icon.starttime = 0

        if icon.inUse then
            activeGUIDS[icon.GUID] = activeGUIDS[icon.GUID] or {}
            activeGUIDS[icon.GUID][icon.abilityID] = activeGUIDS[icon.GUID][icon.abilityID] or {}
            activeGUIDS[icon.GUID][icon.abilityID].starttime = icon.starttime
            activeGUIDS[icon.GUID][icon.abilityID].cooldown = icon.cooldown
        end
        if db.hidden then ATT:ToggleDisplay(anchor, icon.GUID) end
    end

    icon.SetTimer = function(starttime, cooldown, rate, isRate, charges)
       if activeBUFFS[icon.GUID] and activeBUFFS[icon.GUID][icon.abilityID] then return end --freeprocs
       
        if icon.raterecovery and icon.inUse and not isRate then
             rate = icon.raterecovery
             starttime = GetTime() * (1 - rate) + icon.starttime * rate
           -- starttime = icon.starttime - ((icon.starttime - starttime) * rate)
             cooldown = icon.cooldown * rate
        end


        if icon.inUse then
            icon.texture:SetVertexColor(1, 1, 1)
            CooldownFrame_Set(cd, starttime, cooldown, true, false, rate)
            icon.active = true
            icon.starttime = starttime

            activeGUIDS[icon.GUID] = activeGUIDS[icon.GUID] or {}
            activeGUIDS[icon.GUID][icon.abilityID] = activeGUIDS[icon.GUID][icon.abilityID] or {}
            activeGUIDS[icon.GUID][icon.abilityID].starttime = icon.starttime
            activeGUIDS[icon.GUID][icon.abilityID].cooldown = cooldown

        if icon.maxcharges and charges then
            icon.chargesText:SetText(charges)
            cd:SetDrawEdge(true)
            if charges and charges == 0 then
                cd:SetDrawSwipe(true)
                cd:SetHideCountdownNumbers(false)
            else
                cd:SetHideCountdownNumbers(true)
                cd:SetDrawSwipe(false)
            end
            activeGUIDS[icon.GUID][icon.abilityID].chargeleft = charges
        end

            if db.hidden then ATT:ToggleDisplay(anchor, icon.GUID) end
        end
    end

    icon.SetOldTimer = function(starttime, cooldown, rate, isRate, charges)
        if icon.raterecovery or not icon.inUse then
            return
        end
        icon.texture:SetVertexColor(1, 1, 1)
        CooldownFrame_Set(cd, starttime, cooldown, true, false, rate)
        
        if icon.maxcharges and charges then
            icon.chargesText:SetText(charges)
            cd:SetDrawEdge(true)
            if charges and charges == 0 then
                cd:SetDrawSwipe(true)
                cd:SetHideCountdownNumbers(false)
            else
                cd:SetHideCountdownNumbers(true)
                cd:SetDrawSwipe(false)
            end
            activeGUIDS[icon.GUID][icon.abilityID].chargeleft = charges
        end
        icon.active = true
        icon.starttime = starttime
    end

    local texture = icon:CreateTexture(nil, "ARTWORK")
    texture:SetAllPoints(true)
    icon.texture = texture

    ATT:ApplyIconTextureBorder(icon)

    icon.chargesText = icon:CreateFontString(nil, nil, "DialogButtonHighlightText")
    icon.chargesText:SetTextColor(1, 1, 1)
    icon.chargesText:SetText("")
    icon.chargesText:SetPoint("BOTTOMRIGHT", icon, "BOTTOMRIGHT")

    -- tooltip:
    if not db.showTooltip then
        icon:EnableMouse(false)
    end

    icon:SetScript('OnEnter', function()
        if db.showTooltip and icon.abilityID then
            local tooltip = Spell:CreateFromSpellID(icon.abilityID)
            tooltip:ContinueOnSpellLoad(function()
                GameTooltip:ClearLines();
                GameTooltip:SetOwner(WorldFrame, "ANCHOR_CURSOR")
                GameTooltip:SetSpellByID(icon.abilityID)
                GameTooltip:AddLine("Spell ID: " .. icon.abilityID .. " - iCD: " .. icon.cooldown .. " sec", 1, 1, 1)
                GameTooltip:SetPadding(16, 0)
                -- GameTooltip:SetAlpha(db.iconAlpha or 1)
                GameTooltip:Show()
            end)
            icon:EnableMouse(true)
        end
    end)

    icon:SetScript('OnLeave', function()
        if db.showTooltip and icon.abilityID then
            GameTooltip:ClearLines()
            GameTooltip:Hide()
            icon:EnableMouse(true)
        end
    end)

    icon.cd:SetScript("OnCooldownDone", function()
        local chargesText = icon.chargesText:GetText() and icon.chargesText:GetText():match("^[0-9]+$")
        local charges = chargesText and tonumber(chargesText)
        
        if icon.active and icon.cooldown then
            if activeGUIDS[icon.GUID] and activeGUIDS[icon.GUID][icon.abilityID] then
                activeGUIDS[icon.GUID][icon.abilityID] = nil
            end
            icon.active = nil
        end

        if icon.maxcharges and charges and icon.inUse then
            local newCharges = math.min(icon.maxcharges, charges + 1) --update
            icon.chargesText:SetText(newCharges or icon.maxcharges)
            if newCharges and (newCharges < icon.maxcharges) then
                  icon.Start(icon.cooldown, 5, icon.raterecovery)
            end
        end

        if db.hidden then
            ATT:ToggleDisplay(anchor, icon.GUID)
        end
        if icon.glowDuration then
            LGlows.HideOverlayGlow2(icon)
        end
    end)

    local Masque, MSQ_Version = LibStub("Masque", true)
    if Masque and MSQ_Version then
        icon.MasqueGroup = Masque:Group("Ability Team Tracker")
        icon.MasqueGroup:AddButton(icon, {
            FloatingBG = false,
            Icon = icon.texture,
            Cooldown = icon.cd,
        })
    end

    return icon
end

-- adds a new icon
function ATT:AddIcon(icons, anchor)
    local newicon = CreateIcon(anchor)
    icons[#icons + 1] = newicon
    return newicon
end

function ATT:ApplyIconTextureBorder(icon)
    icon:SetAlpha(db.iconAlpha or 1)
    icon.texture:SetVertexColor(1, 1, 1)

    if db.showIconBorders then
        icon.texture:SetTexCoord(0, 1, 0, 1)
    else
        icon.texture:SetTexCoord(0.07, 0.9, 0.07, 0.90)
    end
end

function ATT:UpdateAnchorGUID(anchor, unit, guid)
    local dbInspected = dbInspect[guid]
    local spec = dbInspected and tostring(dbInspect[guid]["spec"])
    local _, class = UnitClass(unit)
    local icons = anchor.icons
    local numIcons = 1
    local _, _, raceID = UnitRace(unit)
    anchor.GUID = guid
    anchor.class = class
    anchor.spec = spec

    if guid and anchor and dbInspected and class and spec and spec ~= "0" and spec ~= "nil" and dbImport[class][spec] and type(db.isEnabledSpell[spec] == "table") then
        -- Trinkets
        for abilityIndex, abilityTable in pairs(self:MergeTable(class, spec, "trinkets")) do
            local name, id, trinketId, cooldown, texture = abilityTable.name, abilityTable.ability, abilityTable.trinketId, abilityTable.cooldown, abilityTable.texture

            if name and id and trinketId and db.isEnabledSpell[spec][id] and dbInspected[trinketId] then
                local icon = icons[numIcons] or self:AddIcon(icons, anchor)
                icon.texture:SetTexture(texture or self:FindAbilityIcon(name, id))
                icon.GUID = anchor.GUID
                icon.ability = name
                icon.abilityID = id
                icon.cooldown = cooldown
                icon.maxcharges = nil
                icon.chargesText:SetText()
                icon.inUse = true
                icon.excluded = true
                icon.race = nil

                ATT:ApplyIconTextureBorder(icon)
                activeGUIDS[icon.GUID] = activeGUIDS[icon.GUID] or {}
                if activeGUIDS[icon.GUID][id] then
                    icon.SetOldTimer(activeGUIDS[icon.GUID][id].starttime, activeGUIDS[icon.GUID][id].cooldown, nil , nil, activeGUIDS[icon.GUID][id].chargeleft )
                else
                    icon.Stop()
                end
                numIcons = numIcons + 1
            end
        end

        -- Racials
        for abilityIndex, abilityTable in pairs(self:MergeTable(class, spec, "racials")) do
            local name, id, cooldown, maxcharges, race, cdshare, texture = abilityTable.name, abilityTable.ability, abilityTable.cooldown, abilityTable.maxcharges, abilityTable.race, abilityTable.cdshare,abilityTable.texture

            if name and id and db.isEnabledSpell[spec][id] and raceID == race then
                local icon = icons[numIcons] or self:AddIcon(icons, anchor)
                icon.texture:SetTexture(texture or self:FindAbilityIcon(name, id))
                icon.GUID = anchor.GUID
                icon.ability = name
                icon.abilityID = id
                icon.cooldown = cooldown
                icon.maxcharges = nil
                icon.chargesText:SetText()
                icon.inUse = true
                icon.race = raceID
                icon.excluded = true
                icon.racecdshare = cdshare

                ATT:ApplyIconTextureBorder(icon)
                activeGUIDS[icon.GUID] = activeGUIDS[icon.GUID] or {}
                if activeGUIDS[icon.GUID][id] then
                    icon.SetOldTimer(activeGUIDS[icon.GUID][id].starttime, activeGUIDS[icon.GUID][id].cooldown, nil , nil, activeGUIDS[icon.GUID][id].chargeleft )
                else
                    icon.Stop()
                end
                numIcons = numIcons + 1
            end
        end

        -- Abilities
        if not ATT.isBgMode then
            for abilityIndex, abilityTable in pairs(self:MergeTable(class, spec, "abilities", true)) do
                local name, id, cooldown, charges, custom, texture = abilityTable.name, abilityTable.ability, abilityTable.cooldown, abilityTable.charges, abilityTable.custom, abilityTable.texture
                local modif = dbModif[id]
                local modif2 = dbModif2[id]
                local modif3 = dbModif3[id]
                local replace = dbReplace[id]
                local bonusModif = ATTdbs.dbModifBonus[id]
                
                if replace then
                    for _, replaceid in pairs(replace) do
                        if dbInspected[replaceid] then name = nil end
                    end
                end

                if name and (custom and not db.isEnabledSpell[spec][id .. "custom"]) or
                    (not custom and not db.isEnabledSpell[spec][id]) or dbInspected["not"][id] or
                    (dbisPVPspell[id] and not dbInspected[id]) then
                    name = nil
                end

                if name and modif and dbInspected[modif.mod] then
                    local newcd = dbInspected[modif.mod]
                    cooldown = (modif.x and cooldown * (modif.cooldown[newcd] or modif.cooldown[1])) or (cooldown - (modif.cooldown[newcd] or modif.cooldown[1]));
                end

                if name and modif2 and dbInspected[modif2.mod] == 1 then
                    cooldown = (modif2.x and cooldown * modif2.cooldown) or (cooldown - modif2.cooldown);
                end

                if name and modif3 and dbInspected[modif3.mod] == 1 then
                    cooldown = (modif3.x and cooldown * modif3.cooldown) or (cooldown - modif3.cooldown);
                end
                -- lock pet

                if name and bonusModif then
                    for index, bonusmod in pairs(bonusModif.mod) do
                        if dbInspected[bonusmod] and bonusModif.rank[index] and (dbInspected[bonusmod] >= bonusModif.rank[index]) then
                            cooldown = cooldown - bonusModif.cd[index]
                        end
                    end
                end

                if spec == "1473" and dbInspected[412713] and cooldown then cooldown = cooldown - (cooldown * 0.10) end

                if name and id then
                    local icon = icons[numIcons] or self:AddIcon(icons, anchor)
                    icon.texture:SetTexture(texture or self:FindAbilityIcon(name, id))
                    icon.GUID = anchor.GUID
                    icon.ability = name
                    icon.abilityID = id
                    icon.cooldown = cooldown
                    icon.excluded = nil
                    icon.race = nil
                    icon.maxcharges = charges
                    if dbInspected[dbModifCharge[id]] or dbInspected["extraCharge"][id] then
                        if charges then
                            icon.maxcharges = charges + 1
                        else
                            icon.maxcharges = 2
                        end
                    end
                    icon.chargesText:SetText(icon.maxcharges or "")
                    icon.inUse = true

                    if class == "WARLOCK" and id == 119898 then
                        local lpet = SUMMON .. " " .. tostring(UnitCreatureFamily(gsub(unit, "(%a+)", "%1pet")))
                        --local petid = select(6, strsplit('-', UnitGUID(gsub(unit, "(%a+)", "%1pet"))))
                        for petId, petTable in pairs(ATTdbs.lockPets) do
                            if GetSpellInfo(petId) == lpet then
                                icon.texture:SetTexture(petTable.tex)
                                icon.cooldown = petTable.cd
                                break
                            end
                        end
                    end

                    ATT:ApplyIconTextureBorder(icon)
                    activeGUIDS[icon.GUID] = activeGUIDS[icon.GUID] or {}
                    if activeGUIDS[icon.GUID][id] then
                        icon.SetOldTimer(activeGUIDS[icon.GUID][id].starttime, activeGUIDS[icon.GUID][id].cooldown, nil , nil, activeGUIDS[icon.GUID][id].chargeleft )
                    else
                        icon.Stop()
                    end
                    numIcons = numIcons + 1
                end
            end
        end
    end

    -- clean leftover icons
    for j = numIcons, #icons do
        icons[j].ability = nil
        icons[j].abilityID = nil
        icons[j].spec = nil
        icons[j].seen = nil
        icons[j].active = nil
        icons[j].inUse = nil
        icons[j].showing = nil
    end

    self:ToggleDisplay(anchor, guid)
end

function ATT:ToggleDisplay(anchor, unitGuid)
    local icons = anchor.icons
    local lastActiveIndex = 0
    local oldActiveIndex = 0
    local count = 0
    
    for k, icon in pairs(icons) do
        -- if isUpdate and icon.inUse and icon.abilityID then table.insert(anchor.SyncCDs, icon.abilityID) end
        if icon.active and icon.cooldown then
            icon.timeleft = icon.starttime + icon.cooldown - GetTime()
            if icon.timeleft <= 0 or not icon.timeleft then
                if activeGUIDS[icon.GUID] and activeGUIDS[icon.GUID][icon.abilityID] then
                    activeGUIDS[icon.GUID][icon.abilityID] = nil
                end
                icon.active = nil
            end
        end
        ATT:ApplyIconTextureBorder(icon)
        if db.showTooltip then
            icon:EnableMouse(true)
        else
            icon:EnableMouse(false)
        end -- click-through
        if icon and icon.abilityID and icon.inUse and unitGuid and unitGuid == anchor.GUID and icon.GUID == unitGuid then
            icon.showing = (activeGUIDS[icon.GUID] and activeGUIDS[icon.GUID][icon.abilityID] and icon.active) or
                (not db.hidden)
        end
        icon:ClearAllPoints()
        icon:Hide()
    end
    
    local attachPos = (db.attachPos or 0) % 2 == 0
    for k, icon in pairs(icons) do
        if icon and icon.abilityID and icon.showing and icon.inUse and unitGuid and unitGuid == anchor.GUID and
            icon.GUID == unitGuid then
            if db.reverseIcons then
                if db.IconRows > 1 then
                    if lastActiveIndex == 0 then
                         icon:SetPoint(attachPos and "TOPLEFT" or "TOPRIGHT", anchor, attachPos and "BOTTOMRIGHT" or "BOTTOMLEFT")
                    elseif (count >= db.IconRows and count % db.IconRows == 0) then
                        icon:SetPoint(attachPos and "LEFT" or "RIGHT", icons[oldActiveIndex],attachPos and "RIGHT" or "LEFT", attachPos and 1 * db.iconOffsetY or -1 * db.iconOffsetY, 0)
                    else
                        if db.growUP then
                            icon:SetPoint(attachPos and "BOTTOM" or "BOTTOM", icons[lastActiveIndex],attachPos and "TOP" or "TOP", 0, 1 * db.iconOffsetX)
                        else
                            icon:SetPoint(attachPos and "TOP" or "TOP", icons[lastActiveIndex], attachPos and "BOTTOM" or "BOTTOM", 0, -1 * db.iconOffsetX)

                        end
                    end
                else
                    if lastActiveIndex == 0 then
                        icon:SetPoint(attachPos and "TOPLEFT" or "TOPRIGHT", anchor, attachPos and "BOTTOMRIGHT" or "BOTTOMLEFT", attachPos and 1 * db.iconOffsetY or -1 * db.iconOffsetY, 0)
                    else
                        icon:SetPoint(attachPos and "LEFT" or "RIGHT", icons[lastActiveIndex],attachPos and "RIGHT" or "LEFT", attachPos and 1 * db.iconOffsetY or -1 * db.iconOffsetY, 0)
                    end
                end
            else
                if db.IconRows > 1 then
                    if lastActiveIndex == 0 then
                       icon:SetPoint(attachPos and "TOPRIGHT" or "TOPLEFT", anchor,attachPos and "BOTTOMLEFT" or "BOTTOMRIGHT")
                    elseif (count >= db.IconRows and count % db.IconRows == 0) then
                        icon:SetPoint(attachPos and "RIGHT" or "LEFT", icons[oldActiveIndex],attachPos and "LEFT" or "RIGHT", attachPos and -1 * db.iconOffsetY or db.iconOffsetY, 0)
                    else
                        if db.growUP then
                            icon:SetPoint(attachPos and "BOTTOM" or "BOTTOM", icons[lastActiveIndex],attachPos and "TOP" or "TOP", 0, 1 * db.iconOffsetX)
                        else
                             icon:SetPoint(attachPos and "TOP" or "TOP", icons[lastActiveIndex],attachPos and "BOTTOM" or "BOTTOM", 0, -1 * db.iconOffsetX)
                        end
                    end
                else
                    if lastActiveIndex == 0 then
                        icon:SetPoint(attachPos and "TOPRIGHT" or "TOPLEFT", anchor,attachPos and "BOTTOMLEFT" or "BOTTOMRIGHT", attachPos and -1 * db.iconOffsetY or db.iconOffsetY, 0)
                    else
                        icon:SetPoint(attachPos and "RIGHT" or "LEFT", icons[lastActiveIndex],attachPos and "LEFT" or "RIGHT", attachPos and -1 * db.iconOffsetY or db.iconOffsetY, 0)
                    end
                end
            end

            lastActiveIndex = k
            if (count == 0 or (count >= db.IconRows and count % db.IconRows == 0)) then
                oldActiveIndex = count == 0 and k or lastActiveIndex
            end
            count = count + 1
            icon:Show()
        end
    end
end

function ATT:UpdateIcons()
    local groupSize = GetNumGroupMembers() < db.raidGroupSize and GetNumGroupMembers() or db.raidGroupSize

    for k, anchor in ipairs(anchors) do
        local unit = (ATT.inRaid and "raid" .. k) or ((k == 5 and "player") or (k ~= 5 and "party" .. k))
        local guid = unit and UnitGUID(unit)

        if db.lock or not guid then anchor:Hide() else anchor:Show() end
        if guid and guid == PlayerGUID and (not db.showSelf or (ATT.inRaid and db.raidGroupSize == 0 and db.selfHideInRaid)) then
            anchor:Hide()
            anchor.GUID = nil
            anchor.spec = nil
            guid = nil
        end
        if guid and guid ~= PlayerGUID and ATT.inRaid and (groupSize < k) then
            anchor:Hide()
            anchor.GUID = nil
            anchor.spec = nil
            guid = nil
        end
        if not guid then
            anchor:Hide()
            if anchor.GUID then activeBUFFS[anchor.GUID] = {} ; activeAURAS[anchor.GUID] = {} end
            anchor.GUID = nil
            anchor.spec = nil
            guid = nil
        end

        self:UpdateAnchorGUID(anchor, unit, guid)
    end
end


function ATT:ApplyAnchorSettings()
    local _, type = IsInInstance()
    ATT.inRaid =  (IsInRaid() and type ~= "arena") or C_PvP.IsInBrawl()
    ATT.isPVP = (C_PvP.IsWarModeDesired() and type == "none") or (type == "arena") or (type == "pvp")
    ATT.isBgMode = db.bgMode and (type == "pvp")
    ATTIcons:SetScale(db.scale or 1)

    if (db.isEnabledVisibility.arena and type == "arena") or
        (db.isEnabledVisibility.dungeons and type == "party") or
        (db.isEnabledVisibility.scenarios and type == "scenario") or
        (db.isEnabledVisibility.inraid and type == "raid") or
        (db.isEnabledVisibility.inbg and type == "pvp") or
        (db.isEnabledVisibility.outside and type == "none") then
        ATTIcons:Show();
        self:Show();
    else
        ATTIcons:Hide();
        self:Hide();
    end

    if not db.lock and ATTIcons:IsShown() then
        ATTAnchor:Show()
    else
        ATTAnchor:Hide()
    end

    self:UpdatePositions();
    self:UpdateIcons();
end

function ATT:UNIT_AURA(unit, unitAuraUpdateInfo)
    if not ATTIcons:IsShown() then return end
    local anchor = self:GetAnchorByUnit(unit)

    if (not anchor and unit ~= "player") or not unitAuraUpdateInfo then
        return
    end

    local guid = UnitGUID(unit)
    if not guid then return end
    activeAURAS[guid] = activeAURAS[guid] or {}
    ---feign
    if unitAuraUpdateInfo then
        if unitAuraUpdateInfo.addedAuras ~= nil then
            for _, aura in ipairs(unitAuraUpdateInfo.addedAuras) do
                local auraInfo = C_UnitAuras.GetAuraDataByAuraInstanceID(unit, aura.auraInstanceID)
                if auraInfo and auraInfo.spellId then
                    activeAURAS[guid][aura.auraInstanceID] = auraInfo
                    if db.dampening and auraInfo.spellId == 110310 and guid == PlayerGUID and auraInfo.isHarmful and
                        auraInfo.points and auraInfo.points[1] then
                        self:Dampening(auraInfo.points[1])
                    end --aura 110310 dampen 269083
                    if auraInfo.spellId == 5384 or auraInfo.spellId == 6544 then
                        self:StartCooldown(unit, auraInfo.spellId, dbAuraRemoved[auraInfo.spellId] and "AuraOn")
                    end
                end
            end
        end

        if unitAuraUpdateInfo.updatedAuraInstanceIDs ~= nil then
            for _, auraInstanceID in ipairs(unitAuraUpdateInfo.updatedAuraInstanceIDs) do
                local auraInfo = C_UnitAuras.GetAuraDataByAuraInstanceID(unit, auraInstanceID)
                if auraInfo and auraInfo.spellId then
                    if db.dampening and auraInfo.spellId == 110310 and guid == PlayerGUID and auraInfo.isHarmful and
                        auraInfo.points and auraInfo.points[1] then
                        self:Dampening(auraInfo.points[1])
                    end --aura 110310 dampen 269083
                end
            end
        end

        if unitAuraUpdateInfo.removedAuraInstanceIDs ~= nil then
            for _, auraInstanceID in ipairs(unitAuraUpdateInfo.removedAuraInstanceIDs) do
                local auraInfo = activeAURAS[guid][auraInstanceID]
                if auraInfo and (auraInfo.spellId == 5384 or auraInfo.spellId == 6544) then
                    self:StartCooldown(unit, auraInfo.spellId)
                end
                if db.dampening and auraInfo and auraInfo.spellId == 110310 and guid == PlayerGUID and auraInfo.isHarmful then
                    self:Dampening()
                end --aura 110310 dampen 269083
                activeAURAS[guid][auraInstanceID] = nil
            end
        end
    end
end

-- Dampening
function ATT:Dampening(percentage)
    local _, instanceType = IsInInstance()
    if not ATTDampframe.text then
        ATTDampframe:SetPoint("TOP", UIWidgetTopCenterContainerFrame, "BOTTOM", 0, 0)
        ATTDampframe:SetSize(150, 15)
        ATTDampframe.text = ATTDampframe:CreateFontString(nil, "BACKGROUND")
        ATTDampframe.text:SetFontObject(GameFontNormal)
        ATTDampframe.text:SetAllPoints()
    end

    if db.dampening and percentage and instanceType == "arena" then
        ATTDampframe.text:SetText(DampeningName .. ": |cffFF4500" .. percentage .. "%|r")
        ATTDampframe:Show()
    else
        ATTDampframe:Hide()
    end
end

function ATT:PLAYER_ENTERING_WORLD()
    self:CheckProfile()
    self:Dampening()
    
    C_Timer.After(1, function()
        local _, instanceType = IsInInstance()
        self:InspectPlayer()
        self:StopAllGlow()
        self:UpdateGroup()
        if instanceType == "arena" then
            self:StopAllIcons();
        end
        self:SendUpdate()
    end)
end

function ATT:GROUP_ROSTER_UPDATE()
    if (not ATTIcons:IsShown()) then
        return
    end
    self:ApplyAnchorSettings()
    self:EnqueueInspect(true)

    C_Timer.After(0.05, function()
        self:ApplyAnchorSettings()
        self:EnqueueInspect(true)
    end)
end

function ATT:UpdateGroup()
    self:ApplyAnchorSettings()
    self:EnqueueInspect()
end

function ATT:UNIT_SPELLCAST_SUCCEEDED(unit, _, spellID)
local anchor = self:GetAnchorByUnit(unit)
if ATTdbs.dbRacialFix[spellID] and anchor then 
     self:StartCooldown(unit, spellID)
 end
    if spellID == 384255 and anchor and unit ~= "player" then
        local guid = UnitGUID(unit)
        self:QueueInspect(guid)
        if not ATTInspectFrame:IsShown() then ATTInspectFrame:Show() end
    end
end

function ATT:FindAbilityByName(abilities, name)
    if abilities then
        for i, v in pairs(abilities) do
            if v and v.ability and v.ability == name then
                return v, i
            end
        end
    end
end

function ATT:StartCooldown(unit, SentID, flag)
    local anchor = self:GetAnchorByUnit(unit)

    if not unit or not anchor then
        return
    end
    local guid = anchor.GUID

    if not anchor or not guid or not dbInspect[guid] then
        return
    end
    self:TrackCooldown(anchor, SentID, unit, guid, flag)
    local rate = nil

    if SentID == 336126 or SentID == 336139 then
        local _, _, race = UnitRace(unit)
        local cooldown
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.ability and icon.race == race and icon.excluded then
                if (icon.abilityID == 59752) then
                    cooldown = 90
                else
                    local duration = icon.starttime + icon.cooldown - GetTime()
                    if duration and duration < 30 then
                        cooldown = 30
                    end
                end
                if cooldown and icon.inUse and icon.race == race and icon.racecdshare then
                    local starttime = GetTime() - icon.cooldown + cooldown
                    icon.SetTimer(starttime, icon.cooldown, rate)
                end
            end
        end
    end

    if ATTdbs.dbRacialShare[SentID] then
        local cooldown
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.abilityID == 336126 then
                if (SentID == 59752) then
                    cooldown = 90
                else
                    local duration = icon.starttime + icon.cooldown - GetTime()
                    if duration and duration < 30 then
                        cooldown = 30
                    end
                end
                if cooldown and icon.inUse then
                    local starttime = GetTime() - icon.cooldown + cooldown
                    icon.SetTimer(starttime, icon.cooldown, rate)
                end
            end
        end
    end
end

function ATT:TrackCooldown(anchor, SentID, unit, guid, flag)
    local rate = nil
    local spec = dbInspect[guid]["spec"]

    for k, icon in ipairs(anchor.icons) do
        if icon.inUse and icon.cooldown then
            -- Direct cooldown
            if icon.ability and icon.abilityID == SentID and icon.inUse then
                if flag then
                    icon.cd:Clear()
                    icon.texture:SetVertexColor(0.4, 0.4, 0.4)
                    break
                end
                icon.seen = true
                icon.Start(icon.cooldown, 1, rate)
            end
        end

        -- Cooldown reset
        if SentID == 122 and icon.inUse and dbInspect[guid][206431] and icon.abilityID == 120 then
            icon.Stop()
        end -- cone of cold
        if spec == 104 and (SentID == 22842 or SentID == 50334) and icon.inUse and activeBUFFS[guid].isRegen and
            icon.abilityID == 22842 and dbInspect[guid][377779] then
            icon.Stop()
        end -- guardian drood regen
        if SentID == 392060 and icon.inUse and dbInspect[guid][389865] and icon.abilityID == 257044 then
            icon.Stop()
        end -- rapid fire / readiness
        if cooldownResetters[SentID] then
            if icon.inUse and type(cooldownResetters[SentID]) == "table" and cooldownResetters[SentID][icon.abilityID] then
                if dbInspect[guid][417493] and icon.abilityID == 120 then return end
                icon.Stop()
            end
        end
    end
end

function ATT:RegisterBuffs(unit, event, dest, SentID)
    local anchor = self:GetAnchorByUnit(unit)
    local guid = anchor and anchor.GUID

    if not anchor or not guid or not dbInspect[guid] then
        return
    end

    local unitSpec = tonumber(dbInspect[guid]["spec"])

    --TODO per anchor guid
    if unitSpec and SentID == 375234 then -- freeprocs
        if (event == "SPELL_AURA_REMOVED") then
            for k, icon in ipairs(anchor.icons) do
                if icon.inUse and icon.cooldown and ATTdbs.dbTimeSpiral[icon.abilityID] then
                    activeBUFFS[guid][icon.abilityID] = nil
                end
            end
        end
        if (event == "SPELL_AURA_APPLIED") then
            for k, icon in ipairs(anchor.icons) do
                if icon.inUse and icon.cooldown and ATTdbs.dbTimeSpiral[icon.abilityID] then
                    activeBUFFS[guid][icon.abilityID] = true
                end
            end
        end
    end

    if unitSpec and unitSpec == 268 then
        if SentID == 386276 then
            if (event == "SPELL_AURA_REMOVED") then
                activeBUFFS[guid].Bonedust = nil
            end
            if (event == "SPELL_AURA_APPLIED") then
                activeBUFFS[guid].Bonedust = true
            end
        end
    end

    if unitSpec and unitSpec == 64 then
        if SentID == 44544 then
            if (event == "SPELL_AURA_REMOVED") then
                activeBUFFS[guid].FingerOfF = nil
            end
            if (event == "SPELL_AURA_APPLIED") then
                activeBUFFS[guid].FingerOfF = true
            end
        end
    end

    if unitSpec and unitSpec == 62 then
        if SentID == 263725 then
            if (event == "SPELL_AURA_REMOVED") then
                activeBUFFS[guid].Clearcasting = nil
            end
            if (event == "SPELL_AURA_APPLIED") then
                activeBUFFS[guid].Clearcasting = true
            end
        end
    end
    if unitSpec and unitSpec == 63 then
        if SentID == 383637 then
            if (event == "SPELL_AURA_REMOVED") then
                activeBUFFS[guid].Combustion = nil
            end
            if (event == "SPELL_AURA_APPLIED") then
                activeBUFFS[guid].Combustion = true
            end
        end
    end

    if unitSpec and unitSpec == 251 then
        if SentID == 59052 then
            if (event == "SPELL_AURA_REMOVED") then
                activeBUFFS[guid].RimeE = nil
            end
            if (event == "SPELL_AURA_APPLIED") then
                activeBUFFS[guid].RimeE = true
            end
        end
    end

    if unitSpec and unitSpec == 73 then
        if SentID == 12975 then
            if (event == "SPELL_AURA_REMOVED") then
                activeBUFFS[guid].LastStand = nil
            end
            if (event == "SPELL_AURA_APPLIED") then
                activeBUFFS[guid].LastStand = true
            end
        end
    end

    if unitSpec and unitSpec == 266 then
        if SentID == 264173 then
            if (event == "SPELL_AURA_REMOVED") then
                activeBUFFS[guid].DemonicC = nil
            end
            if (event == "SPELL_AURA_APPLIED") then
                activeBUFFS[guid].DemonicC = true
            end
        end
    end

    if unitSpec and SentID == 381748 then -- Blessing of the Bronze 362877 381748
        if (event == "SPELL_AURA_REMOVED") and activeBUFFS[guid].hasBotB then
            for k, icon in ipairs(anchor.icons) do
                if icon.inUse and icon.cooldown and ATTdbs.dbTimeSpiral[icon.abilityID] then
                    icon.cooldown = math.floor((icon.cooldown * 1.15) + 0.5)
                    activeBUFFS[guid].hasBotB = nil
                end
            end
        end
        if ((event == "SPELL_AURA_APPLIED") or (event == "SPELL_AURA_REFRESH")) and not activeBUFFS[guid].hasBotB then
            for k, icon in ipairs(anchor.icons) do
                if icon.inUse and icon.cooldown and ATTdbs.dbTimeSpiral[icon.abilityID] then
                    icon.cooldown = math.floor((icon.cooldown / 1.15) + 0.5)
                    activeBUFFS[guid].hasBotB = true
                end
            end
        end
    end

    if unitSpec and unitSpec == 257 then
        if SentID == 200183 then
            if (event == "SPELL_AURA_REMOVED") then
                activeBUFFS[guid].isApotheosis = nil
            end
            if (event == "SPELL_AURA_APPLIED") then
                activeBUFFS[guid].isApotheosis = true
            end
        end
    end

    if unitSpec and unitSpec == 254 then
        if SentID == 288613 then -- + time remaning
            if (event == "SPELL_AURA_REMOVED") then
                activeBUFFS[guid].isTrueshot = nil
            end
            if (event == "SPELL_AURA_APPLIED") then
                activeBUFFS[guid].isTrueshot = true
            end
        end
    end

    if unitSpec and (unitSpec == 254) then
        if SentID == 194594 then -- + time remaning
            if (event == "SPELL_AURA_REMOVED") then
                C_Timer.After(0.1, function() activeBUFFS[guid].isLockandLoad = nil end)
            end
            if (event == "SPELL_AURA_APPLIED") then
                activeBUFFS[guid].isLockandLoad = true
            end
        end
    end

    if unitSpec and unitSpec == 104 then
        if SentID == 50334 then
            if (event == "SPELL_AURA_REMOVED") then
                activeBUFFS[guid].isRegen = nil
            end
            if (event == "SPELL_AURA_APPLIED") then
                activeBUFFS[guid].isRegen = true
            end
        end
    end
end

function ATT:ReduceCD(unit, SentID, event, timer, hit, crit, unitDest, destGUID)
    if not unit then
        return
    end
    local anchor = self:GetAnchorByUnit(unit)
    local guid = anchor and anchor.GUID
    if not anchor or not guid or not dbInspect[guid] then
        return
    end
    local _, class = UnitClass(unit)
    local spec = dbInspect[guid]["spec"]
    local rate = nil

    if (class == "MAGE") and (SentID == 342246 or SentID == 382445) then
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and SentID == 342246 and (icon.abilityID == 1953 or icon.abilityID == 212653) and dbInspect[guid][342249] and (event == "SPELL_AURA_REMOVED") then
                local chargesText = icon.chargesText:GetText() and icon.chargesText:GetText():match("^[0-9]+$")
                local charges = chargesText and tonumber(chargesText)
                if icon.maxcharges and charges  then
                local chargesUpdate = math.min(icon.maxcharges, charges + 1) --update
                  icon.SetTimer(icon.starttime, icon.cooldown, rate, nil, chargesUpdate)
                else
                    icon.Stop()
                end
            end

            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and SentID == 382445 and (event == "SPELL_CAST_SUCCESS") and icon.abilityID ~= 382440 then --382440 382445
                local reducecd = 3
                local starttime = icon.starttime - reducecd
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
            
            if icon.inUse and icon.cooldown > 0 and SentID == 342246 and (event == "SPELL_AURA_APPLIED") and icon.abilityID == 342245 then --alter fix
                local starttime = GetTime()
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end


    if (class == "PRIEST") and spec == 258 and (event == "voidform") and dbInspect[guid][199259] and timer then
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and icon.abilityID == 228260 then
                if select(1, AuraUtil.FindAuraByName(GetSpellInfo(194249), unit)) or (icon.voidtimer and icon.voidtimer > timer) then
                    break
                end
                icon.voidtimer = timer + 1
                local starttime = icon.starttime - 3
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end

    if (class == "PRIEST") and SentID == 47788 and event == "SPELL_AURA_REMOVED" and dbInspect[guid][200209] then
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and icon.abilityID == 47788 then
                if SentID == 47788 then
                    icon.guardiantime = icon.starttime;
                    icon.SetTimer(GetTime() - 120, icon.cooldown, rate)
                end
            end
        end
    end

    if (class == "PRIEST") and SentID == 48153 and event == "SPELL_HEAL" and dbInspect[guid][200209] then
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and icon.abilityID == 47788 then
                if SentID == 48153 then
                    C_Timer.After(0.2, function()
                        icon.SetTimer((icon.guardiantime and icon.guardiantime) or icon.starttime, icon.cooldown, rate)
                        icon.guardiantime = nil
                    end)
                end
            end
        end
    end
    
    if (class == "PRIEST") and (event == "desperateprayer") and dbInspect[guid][238100] and timer then  --desper
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and icon.abilityID == 19236 then
                local starttime = icon.starttime - timer
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end

    if (class == "PALADIN") and spec == 70 and SentID == 633 and (event == "SPELL_HEAL") and dbInspect[guid][326734] and timer then
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.abilityID == 633 then
                local starttime = GetTime() - (icon.cooldown * timer)
                C_Timer.After(0.2, function() icon.SetTimer(starttime, icon.cooldown, rate) end)
            end
        end
    end

    if (class == "MONK") and SentID == 119996 and (event == "SPELL_CAST_SUCCESS") and dbInspect[guid][353584] then
        local unitIsStun = false
        for i = 1, 40 do
            local hasStun = select(10, UnitDebuff(unit, i));
            if isStun[hasStun] then
                unitIsStun = true
            end
        end
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.abilityID == 119996 and not unitIsStun then
                local starttime = GetTime() - 15
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end

    if class and SentID == 64901 and event == "SPELL_AURA_APPLIED" then --Symbol of Hope
        local cdList = {
            [184364] = true,
            [118038] = true,
            [871] = true,
         --   [184662] = true,
            [498] = true,
            [31850] = true,
            [109304] = true,
            [185311] = true,
            [19236] = true,
            [48792] = true,
            [108271] = true,
            [55342] = true,
            [104773] = true,
            [115203] = true,
            [22812] = true,
            [204021] = true,
            [198589] = true,
            [403876] = true,
            [243435] = true, --?
            [363916] = true,
        }
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and cdList[icon.abilityID] then
                local starttime = icon.starttime - 60
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end

    if (class == "MONK") and (event == "SPELL_CAST_SUCCESS") and dbInspect[guid][391330] then -- monk Meridian Strikes
        local cdList = {
            [100780] = true,
            [107428] = true,
            [101545] = true,
            [115080] = true,
            [100784] = true,
            [101546] = true,
            [113656] = true,
            [117952] = true,
            [115098] = true,
            [123986] = true,
            [152175] = true,
        }
        for k, icon in ipairs(anchor.icons) do
            if cdList[SentID] and icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and
                icon.abilityID == 322109 and (anchor.MeridianStrikes and anchor.MeridianStrikes ~= SentID) then
                local starttime = icon.starttime - 0.35
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
        if cdList[SentID] then anchor.MeridianStrikes = SentID end
    end

    if (class == "MONK") and spec == 268 and (event == "SPELL_CAST_SUCCESS") and (SentID == 100780 or SentID == 121253)  then -- monk bonedust --bugged? 1s 3s
        local cdBList = { [386276] = true,[115203] = true,[322507] = true,[119582] = true,[115399] = true, }
        local reducecd = (SentID == 100780) and 0.5 or 4.6
        if activeBUFFS[guid].Bonedust then reducecd = reducecd +1 end

        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and cdBList[icon.abilityID] then
                local starttime = icon.starttime - reducecd
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end

    if (class == "MONK") and spec == 268 and (event == "PtA") and dbInspect[guid][418359] and timer then -- monk Press the Advantage
        local cdBList = { [386276] = true,[115203] = true,[322507] = true,[119582] = true,[115399] = true, }
        local reducecd = 0.5
        if activeBUFFS[guid].Bonedust then reducecd = reducecd + 2 end --??? sync
        if anchor.autoattack and anchor.autoattack > GetTime() - 5 then return end
        anchor.autoattack = timer

        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and cdBList[icon.abilityID] then
                local starttime = icon.starttime - reducecd
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end

    if (class == "MONK") and (event == "SPELL_AURA_REMOVED") and dbInspect[guid][393098] and SentID == 393099 then --monk [Forbidden Technique]
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and icon.abilityID == 322109 then
                icon.SetTimer(GetTime(), icon.cooldown, rate)
            end
        end
    end

    if (class == "DEMONHUNTER") and SentID == 212800 and (event == "SPELL_AURA_APPLIED") then
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and not icon.active and icon.abilityID == 198589 then
                local starttime = GetTime() - 30
                C_Timer.After(0.1, function()
                    if not icon.active then
                        icon.SetTimer(starttime, icon.cooldown, rate)
                    end
                end)
            end
        end
    end

    if (class == "DRUID") and SentID == 33891 and (event == "SPELL_CAST_SUCCESS") then --TREE OF LIFE
        local _, _, _, _, duration, exptime = AuraUtil.FindAuraByName(GetSpellInfo(117679), unit)
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.abilityID == 33891 and duration and exptime then
                local starttime = exptime - duration
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end

    if (class == "DRUID") and (event == "SPELL_HEAL") and dbInspect[guid][393371] then --  393371 SPELL_HEAL
        local cdr = (SentID == 33778) and 2 or (SentID == 8936 and crit) and 1
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.abilityID == 33891 and cdr then
                local starttime = icon.starttime - cdr
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end

    if (class == "DRUID") and (event == "SPELL_HEAL") and dbInspect[guid][392162] and SentID == 157982 and unit == unitDest then                                                                  --dreamstate SPELL_HEAL
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.abilityID ~= 740 and not icon.excluded then --excluded
                local starttime = icon.starttime - 4
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end

    if (class == "MAGE") and SentID == 190357 and event == "blizzard" and dbInspect[guid][84714] then --frozen orb
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and icon.abilityID == 84714 then
                local starttime = icon.starttime - 0.50
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end

    if (class == "SHAMAN") and SentID == 188389 and event == "flameshock" and dbInspect[guid][378310] then
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and
                (icon.abilityID == 198067 or icon.abilityID == 192249) then
                local starttime = icon.starttime - 1
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end

    if (class == "HUNTER") and (event == "SPELL_CAST_SUCCESS") and dbInspect[guid][260404] and dbReducePowerSpell[SentID] and SentID ~= 34026 then --marks  reduce power bug 34026 kill command
        local etfSpells = { [185358] = true,[342049] = true,[19434] = true,[2643] = true, }

        local powerCost = dbReducePowerSpell[SentID]
        if dbInspect[guid][321293] and (SentID == 185358 or SentID == 342049) then powerCost = powerCost - 20 end --bug or SentID == 342049 chim
        if activeBUFFS[guid].isTrueshot and dbInspect[guid][389449] and etfSpells[SentID] then
            powerCost = dbInspect[guid][389449] == 1 and (powerCost * 0.88) or (powerCost * 0.75)
        end

        local reducecd = powerCost * 0.05
        if SentID == 19434 and activeBUFFS[guid].isLockandLoad then reducecd = nil end
        if spec == 254 and SentID == 120360 then reducecd = nil end -- powerCost = powerCost / 2 --bugged

        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and reducecd and icon.abilityID == 288613 then
                local starttime = icon.starttime - reducecd
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end

    if (class == "HUNTER") and (event == "SPELL_CAST_SUCCESS") and dbInspect[guid][270581] and dbReducePowerSpell[SentID] then --marks  reduce power TODO
        local etfSpells = { [185358] = true,[342049] = true,[19434] = true,[2643] = true, }

        local powerCost = dbReducePowerSpell[SentID]
        if spec == 254 and SentID == 120360 then powerCost = powerCost / 2 end --
        if dbInspect[guid][321293] and (SentID == 185358 or SentID == 342049) then powerCost = powerCost - 20 end
        if activeBUFFS[guid].isTrueshot and dbInspect[guid][389449] and etfSpells[SentID] then
            powerCost = dbInspect[guid][389449] == 1 and (powerCost * 0.88) or (powerCost * 0.75)
        end
        local reducecd = powerCost / (dbInspect[guid][270581] == 1 and 25 or 12)

        if SentID == 19434 and activeBUFFS[guid].isLockandLoad then reducecd = nil end

        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and reducecd and icon.abilityID == 109304 then
                local starttime = icon.starttime - reducecd
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end

    if (class == "HUNTER") and (event == "SPELL_SUMMON") and dbInspect[guid][389654] and spec == 253 then --hunter bm master handle
        local reducecd = (SentID == 122804 or SentID == 361582) and 4
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and reducecd and
                icon.abilityID == 193530 then
                local starttime = icon.starttime - reducecd
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end

    if (class == "HUNTER") and (event == "SPELL_AURA_APPLIED") and dbInspect[guid][203415] and spec == 255 and
        SentID == 259285 then --hunter bm  fury of the
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and icon.abilityID == 203415 then
                local starttime = icon.starttime - 3
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end

    if (class == "HUNTER") and (event == "SPELL_CAST_SUCCESS") and dbInspect[guid][231548] and spec == 253 and SentID == 217200 then --hunter bm  barbed bestial
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and icon.abilityID == 19574 then
                local starttime = icon.starttime - 12
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end

    if ((class == "HUNTER")) and (event == "SPELL_DAMAGE") and crit and dbInspect[guid][385718] and SentID == 203413 then --(Flanking) hunter TODO
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and icon.abilityID == 269751 then
                local starttime = icon.starttime - 1
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
     end

     local KindlingSpells = {[108853] = true,[11366] = true,[133] = true,[2948] = true,[257542] = true, }
     if ((class == "MAGE")) and (event == "SPELL_DAMAGE") and crit and dbInspect[guid][155148] and KindlingSpells[SentID] then --Kindling --Fire Mage --
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and icon.abilityID == 190319 then
                if SentID == 257542 then --bug?
                    if icon.phTime and icon.phTime + 0.2 > GetTime() then return else icon.phTime = GetTime() end
                end
                local starttime = icon.starttime - 1
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
     end

     if ((class == "MAGE")) and (event == "SPELL_DAMAGE") and activeBUFFS[guid].Combustion and dbInspect[guid][416506] and KindlingSpells[SentID] then -- Unleashed Inferno --Fire Mage 
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and icon.abilityID == 190319 then
                local starttime = icon.starttime - 1.25
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
     end
     
     if ((class == "MAGE")) and (event == "SPELL_DAMAGE") and dbInspect[guid][417493] and SentID == 120 and timer then -- coldest-snap -- fire mage -- frozen orb 84721  
      anchor.CoChits = anchor.CoChits or {}
      anchor.CoChits[timer] = anchor.CoChits[timer] and anchor.CoChits[timer] + 1 or 1
      if anchor.CoChits[timer] and anchor.CoChits[timer] == 3 then
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and (icon.abilityID == 84714 or icon.abilityID == 153595) then
                 icon.Stop()
            end
          end
        end
     end

    if (class == "PALADIN") and (event == "SPELL_CAST_SUCCESS") and dbInspect[guid][234299] and dbReducePowerSpell[SentID] then --hoj --blizz bugged
        local isFree = AuraUtil.FindAuraByName(GetSpellInfo(223817), unit)
        local isfreebug = (AuraUtil.FindAuraByName(GetSpellInfo(326732), unit) and SentID == 53385)
        -- local foj = AuraUtil.FindAuraByName(GetSpellInfo(203316), unit)
        local reducePoints = dbInspect[guid][406545] and dbReducePowerSpell[SentID] + 1 or dbReducePowerSpell[SentID]
        local hasReduce = dbInspect[guid][234299] * reducePoints

        if isfreebug then hasReduce = 1 end --bug
        --[[
        local haveAura = activeAURAS[guid]
        if haveAura then
           for _, v in pairs(haveAura) do
                 --print(v.spellId)
           end
        end
--]]
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and icon.abilityID == 853 and
                not isFree then
                local starttime = icon.starttime - hasReduce
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end

    if (class == "PALADIN") and (event == "SPELL_CAST_SUCCESS") and dbInspect[guid][414720] and dbReducePowerSpell[SentID] then --lay on hands --tirion 392928
        local hasReduce = dbReducePowerSpell[SentID] * 1.5
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and icon.abilityID == 633 then
                local starttime = icon.starttime - hasReduce
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end

    if (class == "PALADIN") and (event == "SPELL_CAST_SUCCESS") and spec == 66 and dbInspect[guid][204074] and dbReducePowerSpell[SentID] then --[Righteous Protector]
        local hasReduce = 3

        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and
                (icon.abilityID == 31884 or icon.abilityID == 86659) then
                local starttime = icon.starttime - hasReduce
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end

    if (class == "PALADIN") and (event == "SPELL_DAMAGE") and spec == 66 and dbInspect[guid][378279] and SentID == 31935 then --[Gift of the Golden Val'kyr]
        local isFree = AuraUtil.FindAuraByName(GetSpellInfo(223817), unit)
        local hasReduce = dbInspect[guid][378279] / 2

        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and (icon.abilityID == 86659) and not isFree then
                local starttime = icon.starttime - hasReduce
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end

    if (class == "PALADIN") and (event == "SPELL_CAST_SUCCESS") and spec == 66 and dbInspect[guid][385422] and dbReducePowerSpell[SentID] then --Resolute Defender
        local isFree = AuraUtil.FindAuraByName(GetSpellInfo(223817), unit)
        local hasReduce = (dbReducePowerSpell[SentID] / 3) * dbInspect[guid][385422]

        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and
                (icon.abilityID == 31850 or icon.abilityID == 642) and not isFree then
                local starttime = icon.starttime - hasReduce
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end

    if (class == "ROGUE") and (event == "SPELL_CAST_SUCCESS") and dbInspect[guid][280719] and dbReducePowerSpell[SentID] and SentID ~= 280719 then 
        local hasReduce = dbReducePowerSpell[SentID]
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and icon.abilityID == 280719 then
                local starttime = icon.starttime - hasReduce
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end

    if (class == "ROGUE") and spec == 260 and (event == "SPELL_CAST_SUCCESS") and dbReducePowerSpell[SentID] then -- outlaw
        local spellList = {
            [315341] = true,
            [13750] = true,
            [195457] = true,
            [51690] = true,
            [2983] = true,
            [1856] = true,
            [137619] = true,
            [5277] = true,
            [1966] = true,
            [13877] = true,
            [315508] = true,
            [271877] = true,
        }
        local hasReduce = dbReducePowerSpell[SentID]
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and spellList[icon.abilityID] then
                local starttime = icon.starttime - hasReduce
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end

    if (class == "ROGUE") and spec == 261 and (event == "SPELL_CAST_SUCCESS") and SentID == 1856 and
        dbInspect[guid][382523] then -- Invigorating Shadowdust sub 50% in pvp --TODO
        local _, instanceType = IsInInstance()
        local isInPvP = instanceType == "arena" or instanceType == "pvp"
        local hasReduce = dbInspect[guid][382523] * 15
        if isInPvP then hasReduce = hasReduce / 2 end

        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and not icon.excluded and --??
                icon.abilityID ~= 1856 then
                local starttime = icon.starttime - hasReduce
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end

    if (class == "ROGUE") and (event == "SPELL_CAST_SUCCESS") and dbInspect[guid][185314] and dbReducePowerSpell[SentID] then --shadow dance --check cpoints
        local hasReduce = 0.7 * dbReducePowerSpell[SentID]
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and icon.abilityID == 185313 then
                local starttime = icon.starttime - hasReduce
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end

    if (class == "WARRIOR") and (event == "SPELL_CAST_SUCCESS") and SentID == 6552 then --WARR -- kick fix
        local hasReduce = dbInspect[guid][382461] or dbInspect[guid][391271] or dbInspect[guid][383115]
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and icon.abilityID == 6552 and
                hasReduce then
                local starttime = icon.starttime - 1
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end

    if (class == "WARRIOR") and (event == "SPELL_CAST_SUCCESS") and dbInspect[guid][384072] and SentID == 23922 then ---WARR -- shiled slam Impenetrable Wall
        local hasReduce = 5
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and icon.abilityID == 871 then
                local starttime = icon.starttime - hasReduce
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end

    if (class == "WARRIOR") and spec == 73 and dbInspect[guid][385840] and (SentID == 6343) then ---WARR -- Thunderlord
        local reducecd = 1.5

        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and reducecd and icon.abilityID == 1160 then
               if (event == "SPELL_CAST_SUCCESS") and SentID == 6343 then anchor.Thunderlord = 0 end

               if (event == "SPELL_DAMAGE") and SentID == 6343 and anchor.Thunderlord and anchor.Thunderlord <= 4.5 then
                    anchor.Thunderlord = anchor.Thunderlord + 1.5
                    local starttime = icon.starttime - reducecd
                    icon.SetTimer(starttime, icon.cooldown, rate)
                end
            end
        end
    end

    if (class == "WARRIOR") and spec == 73 and dbInspect[guid][275339] and (SentID == 46968) then ---WARR -- shockwave PROT
        local reducecd = 15

        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and reducecd and
                icon.abilityID == 46968 then
                if (event == "SPELL_CAST_SUCCESS") then
                    anchor.ShockwaveProt = 0
                    C_Timer.After(2, function() anchor.ShockwaveProt = nil end)
                end
                if (event == "SPELL_DAMAGE") and anchor.ShockwaveProt then
                    anchor.ShockwaveProt = anchor.ShockwaveProt + 1
                end

                if (event == "SPELL_DAMAGE") and anchor.ShockwaveProt and anchor.ShockwaveProt >= 3 then --and anchor.ShockwaveProt >= 3
                    anchor.ShockwaveProt = nil
                    local starttime = icon.starttime - reducecd
                    icon.SetTimer(starttime, icon.cooldown, rate)
                end
            end
        end
    end

    if (class == "WARRIOR") and (event == "SPELL_CAST_SUCCESS") and dbInspect[guid][152278] and
        dbReducePowerSpell[SentID] then --WARR  Anger Management --
        local hasReduce = (spec == 73) and dbReducePowerSpell[SentID] / 10 or dbReducePowerSpell[SentID] / 20
        local cdList = {
            [262161] = 71,
            [167105] = 71,
            [227847] = 71,
            [1719] = 72,
            [107574] = 73,
            [871] = 73,
            [228920] = 72,
        }

        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and cdList[icon.abilityID] == spec and hasReduce then
                local starttime = icon.starttime - hasReduce
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end

    if (class == "MONK") and (event == "SPELL_CAST_SUCCESS") and dbInspect[guid][280197] and dbReducePowerSpell[SentID] then --serenity chi
        local hasReduce = dbInspect[guid][137639] and (dbReducePowerSpell[SentID] / 2) or (dbReducePowerSpell[SentID] * 0.15)
        if (SentID == 100784 and AuraUtil.FindAuraByName(GetSpellInfo(100784), unit)) or AuraUtil.FindAuraByName(GetSpellInfo(152173), unit) then
            hasReduce = nil
        end
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and (icon.abilityID == 152173 or icon.abilityID == 137639) and hasReduce then
                local starttime = icon.starttime - hasReduce
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end

    if (class == "MONK") and spec == 270 and (event == "SPELL_CAST_SUCCESS") and dbInspect[guid][337209] and
        SentID == 191837 then --Font of Life TODO
        local hasReduce = 1
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and icon.abilityID == 116680 and
                hasReduce then
                local starttime = icon.starttime - hasReduce
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end

    if (class == "DEATHKNIGHT") and spec == 250 and (event == "SPELL_CAST_SUCCESS") and dbInspect[guid][205723] and
        dbReducePowerSpell[SentID] then --DK Red Thirst
        local reduceDS = (SentID == 49998 and dbInspect[guid][219786] and AuraUtil.FindAuraByName(GetSpellInfo(219786), unit))
        local hasReduce = dbInspect[guid][205723] * (dbReducePowerSpell[SentID] - (reduceDS and 5 or 0)) / 10

        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and icon.abilityID == 55233 and
                hasReduce then
                local starttime = icon.starttime - hasReduce
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end

    if (class == "DRUID") and (event == "SPELL_INTERRUPT") and dbInspect[guid][205673] and SentID == 93985 then --Feral kick crd
        local cdList = { [61336] = true,[5217] = true,[252216] = true }
        local hasReduce = 10

        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and cdList[icon.abilityID] and
                hasReduce then
                local starttime = icon.starttime - hasReduce
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end

    if (class == "MAGE") and SentID == 235219 and (event == "SPELL_CAST_SUCCESS") then --Hypothermia cold snap
        C_Timer.After(0.2, function()
            local hasHypo = select(6, AuraUtil.FindAuraByName(GetSpellInfo(41425), unit, "HARMFUL"))
            for k, icon in ipairs(anchor.icons) do
                if icon.inUse and icon.abilityID == 45438 and hasHypo then
                    local durationleft = hasHypo - GetTime()
                    local timeleft = icon.starttime + icon.cooldown - GetTime()

                    if timeleft > 30 and icon.starttime > 0 then
                        return
                    end
                    local starttime = GetTime() - icon.cooldown + durationleft
                    icon.SetTimer(starttime, icon.cooldown, rate)
                end
            end
        end)
    end

    if (class == "PRIEST") and spec == 257 and (event == "SPELL_CAST_SUCCESS") then -- hpriest words
        local cdList = { [585] = 88625,[139] = 34861,[596] = 34861,[2060] = 2050,[2061] = 2050, }
        local cdListCD = { [585] = 4,[139] = 2,[596] = 6,[2060] = 6,[2061] = 6, }

        local hasReduce = cdListCD[SentID]

        if activeBUFFS[guid].isApotheosis and hasReduce then hasReduce = hasReduce * 4 end

        if dbInspect[guid][196985] and hasReduce then
            hasReduce = hasReduce + (hasReduce * dbInspect[guid][196985] * 0.1)
        end

        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and hasReduce and cdList[SentID] == icon.abilityID then
                local starttime = icon.starttime - hasReduce
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end

    if (class == "PRIEST") and spec == 257 and (event == "SPELL_CAST_SUCCESS") and dbInspect[guid][390994] then -- hpriest words [Harmonious Apparatus]
        local cdList = { [204883] = 34861,[33076] = 2050,[14914] = 88625, }
        local hasReduce = dbInspect[guid][390994] * 2     -- bug? +3

        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and hasReduce and
                cdList[SentID] == icon.abilityID then
                local starttime = icon.starttime - hasReduce
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end

    if (class == "MAGE") and (event == "SPELL_AURA_APPLIED") and dbInspect[guid][410939] and SentID == 31589 then -- blink cd reduction
        local hasReduce = 1
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and hasReduce and (icon.abilityID == 212653 or icon.abilityID == 1953) then
                local starttime = icon.starttime - hasReduce
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end

    if (class == "MAGE") and (event == "SPELL_CAST_SUCCESS") and dbInspect[guid][387807] and (SentID == 108853 or SentID == 30455 or SentID == 5143) then -- Time manipulation
        local ccSpells = {[122] = true,  [113724] = true, [31661] = true, [383121] = true, [157997] = true,} --[120] = true shor cd , cone of cold
        
        local hasReduce = 2
        if SentID == 5143 and not activeBUFFS[guid].Clearcasting and spec == 62 then hasReduce = nil end
        if SentID == 30455 and spec == 64 then
            local frozenSpells = {[122] = true,  [157997] = true, [82691] = true, [228358] = true, [228600] = true, [33395] = true, [386770] = true,}
            local enemyUnit = destGUID and UnitTokenFromGUID(destGUID)
            local isFrozen = nil
            if enemyUnit then AuraUtil.ForEachAura(enemyUnit, "HARMFUL", nil, function(_, _, _, _, _, _, _, _, _, spellId, ...) if frozenSpells[spellId] then isFrozen = true end end) end
            if not isFrozen and not activeBUFFS[guid].FingerOfF then hasReduce = nil end
        end
       -- SPELL_AURA_BROKEN_SPELL
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and hasReduce and ccSpells[icon.abilityID] then
                local starttime = icon.starttime - hasReduce
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end

    if (class == "HUNTER") and (event == "SPELL_CAST_SUCCESS") and spec == 254 and dbInspect[guid][248443] and (SentID == 186387 or SentID == 260243) then --hunter mm Ranger's Finesse -- remake 10.0.1  to test
        local hasStacks = select(3, AuraUtil.FindAuraByName(GetSpellInfo(248443), unit))
        local reducecd = (hasStacks and hasStacks == 3) and 20

        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and reducecd and icon.abilityID == 186265 then
                local starttime = icon.starttime - reducecd
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end

    if (class == "DEATHKNIGHT") and (event == "SPELL_CAST_SUCCESS") and spec == 252 and dbInspect[guid][276837] and (SentID == 47541 or SentID == 207317) then --DK Army of the Damned
        local reducecd = 5
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and reducecd and
                icon.abilityID == 42650 then
                local starttime = icon.starttime - reducecd
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end

    if (class == "SHAMAN") and dbInspect[guid][265046] and (SentID == 118905 or SentID == 192058) then --Shaman cap
        local reducecd = 5

        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and reducecd and
                icon.abilityID == 192058 then
                if (event == "SPELL_CAST_SUCCESS") and SentID == 192058 then
                    anchor.shamanCap = 1
                    C_Timer.After(2.1,
                        function() anchor.shamanCap = nil end)
                end

                if (event == "capExploded") and SentID == 118905 and anchor.shamanCap and anchor.shamanCap <= 4 then
                    anchor.shamanCap = anchor.shamanCap + 1
                    local starttime = icon.starttime - reducecd
                    icon.SetTimer(starttime, icon.cooldown, rate)
                end
            end
        end
    end

    if (class == "HUNTER") and (event == "SPELL_CAST_SUCCESS") and spec == 254 and dbInspect[guid][257044] and (SentID == 288613 or SentID == 257044) then --hunt MM rapidfire
        local reducecd = (SentID == 257044 and activeBUFFS[guid].isTrueshot) and 12 or (SentID == 288613) and 10

        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and reducecd and icon.abilityID == 257044 then
                local starttime = icon.starttime - reducecd
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end

    if (class == "PRIEST") and spec == 257 and (event == "SPELL_CAST_SUCCESS") and dbInspect[guid][265202] and (SentID == 2050 or SentID == 34861) then -- Holy Word: Salvation
        local reducecd = 30
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and reducecd and
                icon.abilityID == 265202 then
                local starttime = icon.starttime - reducecd
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end

    if (class == "WARLOCK") and (event == "SPELL_CAST_SUCCESS") and ATTdbs.lockPets[SentID] then -- Lock PETS --
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.abilityID == 119898 then
                icon.Stop();
                icon.texture:SetTexture(ATTdbs.lockPets[SentID].tex)
                icon.cooldown = ATTdbs.lockPets[SentID].cd
            end
        end
    end

    if (class == "WARLOCK") and (event == "lockcircle") and dbInspect[guid][409835] and timer then --lockcircle more testing
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and icon.abilityID == 48020 then
                if icon.lockcircle and icon.lockcircle > GetTime() - 5 then  break end

                icon.lockcircle = timer
                local starttime = icon.starttime - 2
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end

    if (class == "EVOKER") and (event == "SPELL_CAST_SUCCESS") and dbInspect[guid][407876] and SentID == 395160 then -- upheaveal new
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and icon.abilityID == 396286 then
                local reducecd = 1
                local starttime = icon.starttime - reducecd
                icon.SetTimer(starttime, icon.cooldown, rate)  
            end
        end
    end

    if (class == "EVOKER") and (event == "SPELL_DAMAGE") and dbInspect[guid][410787] and SentID == 362969 then -- Geomancy new
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and icon.abilityID == 358385 then
                local reducecd = 1
                local starttime = icon.starttime - reducecd
                icon.SetTimer(starttime, icon.cooldown, rate)  
            end
        end
    end

    if (class == "EVOKER") and (event == "SPELL_DISPEL") and SentID == 372048 then -- Oppressing Roar
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and icon.abilityID == SentID then
                local reducecd = 20
                local starttime = icon.starttime - reducecd
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end

    if (class == "EVOKER") and (event == "SPELL_SUMMON") and SentID == 368415 then -- time in need
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.cooldown > 0 and icon.abilityID == 368412 then
                self:StartCooldown(unit, 368412)
            end
        end
    end

    if (class == "EVOKER") and (event == "SPELL_CAST_SUCCESS") and SentID == 373861 and dbInspect[guid][376237] then -- Temporal Anomaly Nozdormu's Teachings
        local empSpells = { [357208] = true,[359073] = true,[355936] = true, }
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and empSpells[icon.abilityID] then
                local reducecd = 5
                local starttime = icon.starttime - reducecd
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end

    if (class == "EVOKER") and (event == "SPELL_PERIODIC_DAMAGE") and SentID == 356995 and dbInspect[guid][375777] then -- Causality desintegrate
        local empSpells = { [357208] = true,[359073] = true,[355936] = true, }
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and empSpells[icon.abilityID] then
                local reducecd = 0.5
                local starttime = icon.starttime - reducecd
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end

    if (class == "EVOKER") and (event == "SPELL_DAMAGE") and dbInspect[guid][375777] and SentID == 357212 and timer then --pyre Causality TODO simpli
        local empSpells = { [357208] = true,[359073] = true,[355936] = true, }
        anchor.pyrehits = anchor.pyrehits or {}
        anchor.pyrehits[timer] = anchor.pyrehits[timer] and anchor.pyrehits[timer] + 1 or 1

        if anchor.pyrehits[timer] and anchor.pyrehits[timer] < 6 then
            for k, icon in ipairs(anchor.icons) do
                if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and empSpells[icon.abilityID] then
                    local reducecd = 0.4
                    local starttime = icon.starttime - reducecd
                    icon.SetTimer(starttime, icon.cooldown, rate)
                end
            end
        end
    end
    

    if (class == "WARLOCK") and (event == "SPELL_CAST_SUCCESS") and SentID == 399685 then -- soul-swap bug
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.cooldown > 0 and not icon.active and icon.abilityID == 386951 then
                self:StartCooldown(unit, 386951)
            end
        end
    end

    if (class == "SHAMAN") and (SentID == 188196 or SentID == 188443) and (event == "SPELL_CAST_SUCCESS") and
        dbInspect[guid][381936] then
        local natureSpells = {
            [2484] = true,
            [2825] = true,
            [5394] = true,
            [8143] = true,
            [51490] = true,
            [51514] = true,
            [57994] = true,
            [79206] = true,
            [108271] = true,
            [108281] = true,
            [108285] = true,
            [108287] = true,
            [191634] = true,
            [192058] = true,
            [192063] = true,
            [192077] = true,
            [198103] = true,
            [204331] = true,
            [204336] = true,
            [305483] = true,
            [355580] = true,
            [356736] = true,
            [378773] = true,
            [383013] = true,
            [383017] = true,
            [383019] = true
        }
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and natureSpells[icon.abilityID] then
                local starttime = icon.starttime - 1
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end

    local totemsS = {
        [2484] = true,
        [5394] = true,
        [8143] = true,
        [51485] = true,
        [157153] = true,
        [192058] = true,
        [192077] = true,
        [192222] = true,
        [198838] = true,
        [204330] = true,
        [204331] = true,
        [204336] = true,
        [355580] = true,
        [383013] = true,
        [383017] = true,
        [383019] = true
    }
    if (class == "SHAMAN") and dbInspect[guid][108285] and (totemsS[SentID] or SentID == 108285) and (event == "SPELL_CAST_SUCCESS") then --Shaman cap
        anchor.shamanLastTotem = anchor.shamanLastTotem or {}

        if totemsS[SentID] then
            if anchor.shamanLastTotem[3] and anchor.shamanLastTotem[3] == 1 and dbInspect[guid][383012] then
                anchor.shamanLastTotem[3] = 2
            else
                anchor.shamanLastTotem[3] = 1
            end
            anchor.shamanLastTotem[anchor.shamanLastTotem[3]] = SentID
            return
        end
        if not dbInspect[guid][383012] then anchor.shamanLastTotem[2] = nil end

        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and
                (icon.abilityID == anchor.shamanLastTotem[1] or icon.abilityID == anchor.shamanLastTotem[2]) then
                icon.Stop();
            end
        end
    end
---set bonus
    if (class == "HUNTER") and (event == "SPELL_CAST_SUCCESS") and spec == 253 and dbInspect[guid][1544] and dbInspect[guid][1544] >= 4
     and (SentID == 193455 or SentID == 34026 or SentID == 2643) then ---bm set bonus
        local reducecd = 1
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and reducecd and icon.abilityID == 19574 then
                local starttime = icon.starttime - reducecd
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end
    if (class == "HUNTER") and (event == "SPELL_CAST_SUCCESS") and spec == 254 and dbInspect[guid][1544] and dbInspect[guid][1544] >= 4 and (SentID == 53351) then ---mm set bonus
        local reducecd = 1.5
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and reducecd and icon.abilityID == 257044 then
                local starttime = icon.starttime - reducecd
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end

    if (class == "PALADIN") and (event == "SPELL_HEAL") and spec == 65 and crit and dbInspect[guid][1547] and dbInspect[guid][1547] >= 2  and (SentID == 25914) then ---hpala
        local reducecd = dbInspect[guid][114158] and 2 or 1
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and reducecd and (icon.abilityID == 114158 or icon.abilityID == 114165) then
                local starttime = icon.starttime - reducecd
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end

    if (class == "DEATHKNIGHT") and (event == "SPELL_CAST_SUCCESS") and spec == 251 and dbInspect[guid][1540] and dbInspect[guid][1540] >= 2 and (SentID == 49184) and activeBUFFS[guid].RimeE then ---dk
        local reducecd = 2
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and reducecd and icon.abilityID == 279302 then
                local starttime = icon.starttime - reducecd
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end

    if (class == "WARRIOR") and (event == "SPELL_CAST_SUCCESS") and spec == 73 and dbInspect[guid][1552] and dbInspect[guid][1552] >= 2 and (SentID == 23922)  then ---dk
        local reducecd = activeBUFFS[guid].LastStand and 4 or 2
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and reducecd and icon.abilityID == 12975 then
                local starttime = icon.starttime - reducecd
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end

    if (class == "WARLOCK") and (event == "SPELL_CAST_SUCCESS") and spec == 266 and dbInspect[guid][1551] and dbInspect[guid][1551] >= 2 and (SentID == 264178) and activeBUFFS[guid].DemonicC then ---dk
        local reducecd = 1
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and icon.active and icon.cooldown > 0 and icon.starttime > 0 and reducecd and icon.abilityID == 111898 then
                local starttime = icon.starttime - reducecd
                icon.SetTimer(starttime, icon.cooldown, rate)
            end
        end
    end
    --[Coordinated Kill] -- kill shot, Bombardier, War Orders (kill command), Witch Doctor's Ancestry
end

function ATT:RecoveryCD(unit, SentID, event, unitDest)
    if not unit then return end
    local anchor = self:GetAnchorByUnit(unit)
    local guid = anchor and anchor.GUID
    if not anchor or not guid or not dbInspect[guid] then
        return
    end

    if (event == "SPELL_AURA_APPLIED") and SentID == 404977 and dbInspect[guid][404977] then -- time skip --TODO
       local rate = 1/11
       for k, icon in ipairs(anchor.icons) do
           if icon.abilityID == 404977 then icon.SetTimer(GetTime() - 1, icon.cooldown) end
       end

       for k, icon in ipairs(anchor.icons) do
           if icon.active and icon.inUse and not icon.excluded and icon.cooldown > 0 and icon.starttime > 0 and not icon.raterecovery then
               local starttime = GetTime() * (1 - rate) + icon.starttime * rate
               local cooldown = icon.cooldown * rate
               icon.SetTimer(starttime, cooldown, rate, true)
               icon.cdrecovery = cooldown
               icon.raterecovery = rate
           end
       end
    end

    if  (event == "SPELL_AURA_REMOVED") and SentID == 404977 and dbInspect[guid][404977]  then -- time skip and anchor.TimeSkip
        for k, icon in ipairs(anchor.icons) do
            if icon.active and icon.inUse and not icon.excluded and icon.cooldown > 0 and icon.starttime > 0 and icon.cdrecovery then
                local rate = 1 / icon.raterecovery
                local starttime = GetTime() * (1 - rate) + icon.starttime * rate
                local cooldown = icon.cdrecovery * rate
                icon.SetTimer(starttime, cooldown, 1, true)
            end
            icon.cdrecovery = nil;
            icon.raterecovery = nil
      end
    end
    
    if SentID == 368239 and (event == "SPELL_AURA_APPLIED") then -- Decrypted Urh Cypher
        local rate = 100 / 300
        for k, icon in ipairs(anchor.icons) do
            if icon.active and icon.inUse and not icon.excluded and icon.cooldown > 0 and icon.starttime > 0 and not icon.raterecovery then
                local starttime = GetTime() * (1 - rate) + icon.starttime * rate
                local cooldown = icon.cooldown * rate
                icon.SetTimer(starttime, cooldown, rate, true)
                icon.cdrecovery = cooldown
                icon.raterecovery = rate
            end
        end
    end

    if SentID == 329042 and (event == "SPELL_CAST_SUCCESS") then
        local rate = 100 / 500
        for k, icon in ipairs(anchor.icons) do
            if icon.active and icon.inUse and not icon.excluded and icon.cooldown > 0 and icon.starttime > 0 and icon.abilityID ~= 329042 and not icon.raterecovery then
                local starttime = GetTime() * (1 - rate) + icon.starttime * rate
                local cooldown = icon.cooldown * rate
                icon.SetTimer(starttime, cooldown, rate, true)
                icon.cdrecovery = cooldown
                icon.raterecovery = rate
            end
        end
    end


    if (SentID == 329042 or SentID == 368239) and (event == "SPELL_AURA_REMOVED") then
        for k, icon in ipairs(anchor.icons) do
            if icon.active and icon.inUse and not icon.excluded and icon.cooldown > 0 and icon.starttime > 0 and icon.cdrecovery then
                local rate = 1 / icon.raterecovery
                local starttime = GetTime() * (1 - rate) + icon.starttime * rate
                local cooldown = icon.cdrecovery * rate
                icon.SetTimer(starttime, cooldown, 1, true)
            end
            icon.cdrecovery = nil;
            icon.raterecovery = nil
        end
    end

    if SentID == 235450 or SentID == 235313 or SentID == 11426 then -- [Accumulative Shielding]
        if (event == "SPELL_CAST_SUCCESS") then
            local rate = 100 / 130
            for k, icon in ipairs(anchor.icons) do
                if icon.active and icon.inUse and not icon.excluded and icon.cooldown > 0 and icon.starttime > 0 and
                    not icon.raterecovery and icon.abilityID == SentID then
                    local starttime = GetTime() * (1 - rate) + icon.starttime * rate
                    local cooldown = icon.cooldown * rate
                    icon.SetTimer(starttime, cooldown, rate, true)
                    icon.cdrecovery = cooldown
                    icon.raterecovery = rate
                end
            end
        end
        if (event == "SPELL_AURA_REMOVED") then
            for k, icon in ipairs(anchor.icons) do
                if icon.active and icon.inUse and not icon.excluded and icon.cooldown > 0 and icon.starttime > 0 and
                    icon.cdrecovery and icon.abilityID == SentID then
                    local rate = 1 / icon.raterecovery
                    local starttime = GetTime() * (1 - rate) + icon.starttime * rate
                    local cooldown = icon.cdrecovery * rate
                    icon.SetTimer(starttime, cooldown, 1, true)
                end
                icon.cdrecovery = nil;
                icon.raterecovery = nil
            end
        end
    end

    if SentID == 152173 then
        if (event == "SPELL_AURA_APPLIED") then
            local rate = 100 / 200
            for k, icon in ipairs(anchor.icons) do
                if icon.active and icon.inUse and not icon.excluded and icon.cooldown > 0 and icon.starttime > 0 and dbReducePowerSpell[icon.abilityID] and not icon.raterecovery then
                    local starttime = GetTime() * (1 - rate) + icon.starttime * rate
                    local cooldown = icon.cooldown * rate
                    icon.SetTimer(starttime, cooldown, rate, true)
                    icon.cdrecovery = cooldown
                    icon.raterecovery = rate
                end
            end
        end
        if (event == "SPELL_AURA_REMOVED") then
            for k, icon in ipairs(anchor.icons) do
                if icon.active and icon.inUse and not icon.excluded and icon.cooldown > 0 and icon.starttime > 0 and icon.cdrecovery and dbReducePowerSpell[icon.abilityID] then
                    local rate = 1 / icon.raterecovery
                    local starttime = GetTime() * (1 - rate) + icon.starttime * rate
                    local cooldown = icon.cdrecovery * rate
                    icon.SetTimer(starttime, cooldown, 1, true)
                end
                icon.cdrecovery = nil;
                icon.raterecovery = nil
            end
        end
    end
end

function ATT:HasForbearance(unit, event, dest, SentID)
    if not unit then return end
    local anchor = self:GetAnchorByUnit(unit)
    local guid = anchor and anchor.GUID
    if not anchor or not guid or not dbInspect[guid] then
        return
    end
    local _, class = UnitClass(unit)
    local spec = dbInspect[guid]["spec"]

    if (class == "PALADIN") and spec and SentID == 25771 then --pala forb -- auraType == "DEBUFF"
        local forbSpells = { [1022] = true,[204018] = true,[633] = true,[642] = true }
        for k, icon in ipairs(anchor.icons) do
            if icon.inUse and forbSpells[icon.abilityID] then --and hasForb
                local timeleft = icon.starttime + icon.cooldown - GetTime()
                if (timeleft < 30) and (event == "SPELL_AURA_APPLIED") then
                    icon.hasForb = true
                    icon.texture:SetVertexColor(0.4, 0.4, 0.4)
                end
                if (event == "SPELL_AURA_REMOVED") and icon.hasForb then
                    icon.hasForb = nil
                    icon.texture:SetVertexColor(1, 1, 1)
                end
            end
        end
    end
end

function ATT:UNIT_POWER()

end

function ATT:COMBAT_LOG_EVENT_UNFILTERED()
    if not ATTIcons:IsShown() then return end
    local _, event, _, sourceGUID, _, _, _, destGUID, _, _, _, SentID, spellName, school, auraType, overheal, powerType, healCrit, currentPower, _, crit =
        CombatLogGetCurrentEventInfo()
    local unit = self:GetUnitByGUID(sourceGUID)
    local unitDest = self:GetUnitByGUID(destGUID)

    if unit and (event == "SPELL_CAST_SUCCESS") then
        self:StartCooldown(unit, SentID, dbAuraRemoved[SentID] and "AuraOn")
        if ATTdbs.ShareCD[SentID] then
            self:StartCooldown(unit, ATTdbs.ShareCD[SentID], dbAuraRemoved[SentID] and "AuraOn")
        end
        self:ReduceCD(unit, SentID, event, _, _, _, unitDest, destGUID)
        if (SentID == 329042 or SentID == 235450 or SentID == 235313 or SentID == 11426) then
            self:RecoveryCD(unit, SentID, event, unitDest)
        end
    end

    if unit and (event == "SPELL_AURA_REMOVED") and (auraType == "BUFF") then
        if dbAuraRemoved[SentID] then
            self:StartCooldown(unit, SentID)
        end
        if SentID == 342246 or SentID == 47788 or SentID == 393099 then
            self:ReduceCD(unit, SentID, event)
        end
        if SentID == 327710 or SentID == 328622 or SentID == 152173 or SentID == 235450 or SentID == 235313 or SentID == 11426 or SentID == 404977 then
            self:RecoveryCD(unitDest, SentID, event, unit)
        end
    end

    if unit and ((event == "SPELL_AURA_APPLIED") and (auraType == "BUFF")) then
        if (SentID == 327710 or SentID == 328622 or SentID == 152173 or SentID == 404977) then
            self:RecoveryCD(unitDest, SentID, event)
        end

        if (SentID == 64901 or SentID == 212800 or SentID == 326860 or SentID == 259285  or SentID == 342246) then
            self:ReduceCD(unit, SentID, event)
        end
    end

    if unit and unitDest and SentID == 633 and (event == "SPELL_HEAL") and auraType then
        local cdreduce = math.min((auraType - overheal) / UnitHealthMax(unitDest), 0.6)
        self:ReduceCD(unit, SentID, event, cdreduce)
    end

    if unit and ((event == "SPELL_AURA_APPLIED") or (event == "SPELL_AURA_REFRESH") or (event == "SPELL_HEAL")) and dbAuraApplied[SentID] then
        self:StartCooldown(unit, SentID)
    end

    if unit and (event == "SPELL_DAMAGE") then
       if (SentID == 328928 or SentID == 6343 or SentID == 46968 or SentID == 31935 or SentID == 357212 or SentID == 120 or SentID == 362969 ) then 
        self:ReduceCD(unit, SentID, event, GetTime()) 
        end
       if (SentID == 108853 or SentID == 11366 or SentID == 133 or SentID == 2948 or SentID == 257542) and crit then self:ReduceCD(unit, SentID, event, _, _, crit, unitDest) end
       if SentID == 190357 then self:ReduceCD(unit, SentID, "blizzard") end
    end

    if unit and (event == "SPELL_DISPEL") and (SentID == 314793 or SentID == 372048) then
        self:ReduceCD(unit, SentID, event)
    end

    if unit and (event == "SPELL_PERIODIC_DAMAGE") then
        if SentID == 356995 then self:ReduceCD(unit, SentID, event) end
    end

    if unit and (event == "SPELL_INTERRUPT") then
        self:ReduceCD(unit, SentID, event)
    end

    if unit and (event == "SPELL_EMPOWER_END") then
        if SentID == 355936 or SentID == 357208 or SentID == 367226 or SentID == 359073 or SentID == 396286 then self:StartCooldown(unit, SentID) end --endcast rel cd haste
    end

    if unit and (event == "SPELL_HEAL") and SentID ~= 633 then
        self:ReduceCD(unit, SentID, event, _, _, healCrit, unitDest)
    end

    if unit and (event == "SPELL_SUMMON") then
        self:ReduceCD(unit, SentID, event, _, _, healCrit, unitDest)
        if SentID == 52150 then self:StartCooldown(unit, 46584) end --dk raise unholy
    end

    if unit and (event == "SPELL_PERIODIC_DAMAGE") and SentID == 188389 and crit then
        self:ReduceCD(unit, SentID, "flameshock")
    end

    if unit and destGUID and (event == "SWING_DAMAGE")  then -- monk Press the Advantage
      self:ReduceCD(unit, SentID, "PtA", GetTime()) 
    end

    if not unit and unitDest and ((event == "SWING_DAMAGE") or (event == "SPELL_DAMAGE") or (event == "RANGE_DAMAGE") or (event == "SPELL_ABSORBED")) then --lock ciricle /spriest
    if school == 1 and not (event == "SPELL_ABSORBED") then 
        self:ReduceCD(unitDest, SentID, "lockcircle", GetTime())
    end
        self:ReduceCD(unitDest, SentID, "voidform", GetTime())
    end

    if not unit and unitDest and ((event == "SWING_DAMAGE") or (event == "SPELL_DAMAGE") or (event == "RANGE_DAMAGE") or (event == "SPELL_PERIODIC_DAMAGE")) then --priest
        local unitHP = UnitHealthMax(unitDest)
        if (event == "SWING_DAMAGE") then auraType = SentID; overheal = spellName end 
        if unitHP > 0 and auraType then
        local damageTaken = auraType - (overheal or 0)
        local cdreduce = damageTaken / unitHP * 35
        self:ReduceCD(unitDest, SentID, "desperateprayer", cdreduce)
        end
    end
    
    --[[
    --  if unit and (event == "SPELL_ENERGIZE") and powerType == 4 then  --rogue combos -- auraType
--]]
    -- new

    if ((event == "SPELL_AURA_APPLIED") or (event == "SPELL_AURA_REMOVED")) and auraType == "DEBUFF" then
        local dest = (unitDest and unitDest) or unit --no use

        self:HasForbearance(unit, event, dest, SentID)
        if SentID == 368239 then self:RecoveryCD(unitDest, SentID, event) end -- Decrypted Urh Cypher

        if SentID == 118905 and (event == "SPELL_AURA_APPLIED") and not unit and not unitDest then

            for k, anchor in ipairs(anchors) do
                if anchor.shamanCap then
                    local shamUnit = self:GetUnitByGUID(anchor.GUID)
                    self:ReduceCD(shamUnit, SentID, "capExploded")
                end
            end
        end
    end

    if unit and ((event == "SPELL_AURA_APPLIED") or (event == "SPELL_AURA_REFRESH")) and (auraType == "DEBUFF") then --mage blink talented
        self:ReduceCD(unit, SentID, event)
    end

    if unit and ((event == "SPELL_AURA_APPLIED") or (event == "SPELL_AURA_REFRESH") or (event == "SPELL_AURA_REMOVED")) and (auraType == "BUFF") then
        local dest = (unitDest and unitDest) or unit --no use

        self:RegisterBuffs(unit, event, dest, SentID)
    end

    if unit and ((event == "SPELL_AURA_APPLIED") or (event == "SPELL_AURA_REMOVED")) and (auraType == "BUFF") then
        if db.glow then
            local dest = (unitDest and unitDest) or unit
            C_Timer.After(0.03, function() self:IconGlow(unit, spellName, event, dest, SentID) end)
            if ATTdbs.ShareCD[SentID] then C_Timer.After(0.03, function() self:IconGlow(unit, spellName, event, dest, ATTdbs.ShareCD[SentID]) end) end -- TO TEST
        end
    end
end

function ATT:IconGlow(unit, spellName, event, unitDest, SentID)
    if not unit then
        return
    end
    local anchor = self:GetAnchorByUnit(unit)
    if not anchor then
        return
    end

    for k, icon in ipairs(anchor.icons) do
        if icon.inUse and event == "SPELL_AURA_APPLIED" and (SentID == icon.abilityID) and not icon.race then --spellName == icon.ability
            local duration = select(5, AuraUtil.FindAuraByName(spellName, unitDest))
            if icon.showing and icon.cooldown and duration and duration > 1 and icon.cooldown > duration then -- here (icon.active or dbAuraRemoved[SentID])
                icon.glowDuration = duration
                icon.cd:SetHideCountdownNumbers(true);
                icon.cd:SetDrawSwipe(false)
                LGlows.ShowOverlayGlow2(icon)
                C_Timer.After(duration + 0.5, function()
                    local isActive = select(5, AuraUtil.FindAuraByName(spellName, unitDest));
                    if not isActive then
                        LGlows.HideOverlayGlow2(icon)
                    end
                end)
            end
        end
        if event == "SPELL_AURA_REMOVED" and SentID == icon.abilityID and icon.glowDuration then
            LGlows.HideOverlayGlow2(icon)
        end
    end
end

-- resets all icons
function ATT:StopAllIcons(flag)
    for k, anchor in ipairs(anchors) do
        anchor:StopAllIcons(flag)
    end
    wipe(activeGUIDS)
end

function ATT:StopAllGlow()
    for k, anchor in ipairs(anchors) do
        anchor:StopAllGlow()
    end
end

function ATT:SendUpdate()
    if self.useCrossAddonCommunication and IsInGroup() then
        local joinedString = strjoin(",", "Version", PlayerGUID, ATTversion)
        C_ChatInfo.SendAddonMessage(ChatPrefix, joinedString, (IsInGroup(LE_PARTY_CATEGORY_INSTANCE) and "INSTANCE_CHAT") or (IsInRaid(LE_PARTY_CATEGORY_HOME) and "RAID") or "PARTY")
    end
end

function ATT:ProcessSync(anchor, spellId, cooldownInfo, unit)
    if not anchor or not spellId or not cooldownInfo then return end
    local isReady, normalizedPercent, timeLeft, charges, minValue, maxValue, currentValue = openRaidLib.GetCooldownStatusFromCooldownInfo(cooldownInfo)
    local cTime = GetTime()

    for k, icon in ipairs(anchor.icons) do
            if (not isReady) and timeLeft and timeLeft > 0 and icon.inUse and (icon.abilityID == spellId) then --or ATTdbs.dbReplace[icon.abilityID] == spellId
                local start = cTime - icon.cooldown + timeLeft --processing time
                  icon.SetTimer(start, icon.cooldown, nil, nil, icon.maxcharges and charges)
               -- print(unit .. " -openraid " ..spellId)
            elseif isReady and icon.inUse and icon.starttime and icon.active and icon.abilityID == spellId then
                 --and not ATTdbs.dbReplace[icon.abilityID]
                  icon.Stop()
            end
        end
end

function ATT.OnReceiveCooldownListUpdate(unitId, unitCooldows, allUnitsCooldowns)
    local guid = UnitGUID(unitId)
    local unit = ATT:GetUnitByGUID(guid)
    local anchor = ATT:GetAnchorByUnit(unit)
    if not anchor or not guid or not next(unitCooldows) then return end

    if not dbInspect[guid] then 
        syncChache[guid] = unitCooldows
    end

    for spellId, cooldownInfo in pairs(unitCooldows) do
        ATT:ProcessSync(anchor, spellId, cooldownInfo, unit)
    end
end

function ATT.OnReceiveCooldownUpdate(unitId, spellId, cooldownInfo, unitCooldows, allUnitsCooldowns)
    local guid = UnitGUID(unitId)
    local unit = ATT:GetUnitByGUID(guid)
    local anchor = ATT:GetAnchorByUnit(unit)
    if not anchor or not guid or not cooldownInfo then return end

    if not dbInspect[guid] and syncChache[guid] then
        syncChache[guid][spellId] = cooldownInfo
    end

    ATT:ProcessSync(anchor, spellId, cooldownInfo, unit)
end

 function ATT.OnUnitUpdate(unitId, unitInfo, allUnitsInfo)
    local guid = UnitGUID(unitId)
    local unit = ATT:GetUnitByGUID(guid)
    local anchor = ATT:GetAnchorByUnit(unit)
    if not anchor then return end
    --[[
          local specId = unitInfo.specId
          local specName = unitInfo.specName
          local role = unitInfo.role
          local renown = unitInfo.renown
          local covenantId = unitInfo.covenantId
          local talents = unitInfo.talents
          local pvpTalents = unitInfo.pvpTalents
          local conduits = unitInfo.conduits
          local class = unitInfo.class
          local classId = unitInfo.classId
          local className = unitInfo.className
          local unitName = unitInfo.name 
          local unitNameFull = unitInfo.nameFull
        --]]  
end

 --registering the callback:
 openRaidLib.RegisterCallback(ATT, "CooldownListUpdate", "OnReceiveCooldownListUpdate")
 openRaidLib.RegisterCallback(ATT, "CooldownUpdate", "OnReceiveCooldownUpdate")
 --openRaidLib.RegisterCallback(ATT, "UnitInfoUpdate", "OnUnitUpdate")

function ATT:CHAT_MSG_ADDON(prefix, message, dist, sender)
    if prefix == ChatPrefix and message then
        local msgtype, guid, infos = strmatch(message, "(.-),(.-),(.+)")

        if not msgtype or not guid or not infos then return end

        if msgtype == "Version" then
            if infos and tonumber(infos) and tonumber(infos) > tonumber(ATTversion) and not self.VersionChecked then
                self.VersionChecked = tonumber(infos)
                print("There is a new version of |cff33ff99Ability Team Tracker|r: |cffFF4500v" .. infos .. "|r - you are currently using: |cffFF4500v" .. ATTversion .. "|r")
            end
        end
    end
end

function ATT:PLAYER_EQUIPMENT_CHANGED(item)
    if InCombatLockdown() or not db.showSelf then
        return
    end
    if not item then
        return
    end
    self:InspectPlayer()
end

function ATT:PLAYER_SPECIALIZATION_CHANGED(unit)
    if not unit then return end

    local guid = UnitGUID(unit)
    if selectedDB.autoselectprofile and guid and guid == PlayerGUID then
        ATT:CheckProfile();
        ATT:UpdateScrollBar();
    end
    self:InspectPlayer()
    self:ApplyAnchorSettings()
end

function ATT:CHAT_MSG_BG_SYSTEM_NEUTRAL(text)
    if not ATTIcons:IsShown() or not text then
        return
    end
    local _, instanceType = IsInInstance()
    if (instanceType == "arena" or (instanceType == "pvp" and C_PvP.GetActiveMatchDuration() < 5)) and
        (string.find(text, "!")) then --state = C_PvP.GetActiveMatchState()
        self:InspectPlayer()
        --self:SendCovenant(PlayerGUID);
        self:UpdateGroup()
    end
end

function ATT:CHALLENGE_MODE_START()
    self:InspectPlayer()
    --self:SendCovenant(PlayerGUID)
    self:UpdateGroup()
    self:StopAllIcons("raidstop")
end

function ATT:ENCOUNTER_END(_, _, _, raidsize)
    if raidsize > 5 then
        self:StopAllIcons("raidstop")
    end
end

function ATT:SCENARIO_POI_UPDATE()
    local scenarioInfo = C_ScenarioInfo.GetScenarioInfo()
    if scenarioInfo and scenarioInfo["uiTextureKit"] and scenarioInfo["uiTextureKit"] == "jailerstower-scenario" and
        scenarioInfo["currentStage"] ~= 1 then
        self:StopAllIcons()
    end
end

function ATT:CHAT_MSG_SYSTEM(text)
    if not ATTIcons:IsShown() or not text then
        return
    end
    if (string.find(text, PVP_WARMODE_TOGGLE_OFF)) or (string.find(text, PVP_WARMODE_TOGGLE_ON)) then
        self:InspectPlayer()
        self:UpdateGroup()
    end
end

function ATT:GROUP_JOINED()
    --self:InspectCovenant()
    self:ApplyAnchorSettings()
    self:EnqueueInspect()
    local _, instanceType = IsInInstance()
    if instanceType == "arena" then
        self:StopAllIcons();
    end
end

function ATT:CheckProfile()
    local _, instanceType = IsInInstance()
    selectedDB.ProfileSelected = selectedDB.ProfileSelected or "DEFAULT"

    if selectedDB.autoselectprofile then
        local _, _, classid = UnitClass("player")
        local specNum = GetSpecialization()
        local role = select(5, GetSpecializationInfoForClassID(classid, specNum))
        if role then
            selectedDB.ProfileSelected = role
        end
    end

    if selectedDB.autoselectBG then
        local _, instanceType = IsInInstance()
        if instanceType == "pvp" and selectedDB.ProfileSelected ~= "BG" then
            selectedDB.lastProfile = selectedDB.ProfileSelected
            selectedDB.ProfileSelected = "BG"
        elseif not selectedDB.autoselectprofile and selectedDB.ProfileSelected == "BG" and selectedDB.lastProfile then
            selectedDB.ProfileSelected = selectedDB.lastProfile
            selectedDB.lastProfile = nil
        end
    end

    db = selectedDB[selectedDB.ProfileSelected]
    db.classSelected = "WARRIOR";
    db.specSelected = "71";
    db.category = "abilities";

    ATT.inRaid =  (IsInRaid() and type ~= "arena") or C_PvP.IsInBrawl()
    ATT.isPVP = (C_PvP.IsWarModeDesired() and instanceType == "none") or (instanceType == "arena") or (instanceType == "pvp")
    ATT.isBgMode = db.bgMode and (instanceType == "pvp")
end

function ATT:LoadProfiles()
    local profiles = { "DEFAULT", "TANK", "HEALER", "DAMAGER", "BG", "Extra1", "Extra2" }
    local oldDB = ATTDB  -- getting old main profiles
    oldDB.Profiles = nil -- remove old profiles

    if ATTDB["isEnabledSpell"] then
        ATTDB = {}
    end -- cleaning DB
    if ATTCharDB["isEnabledSpell"] then
        ATTCharDB = {}
    end -- cleaning Char DB

    if ATTDB.profilebychar then
        selectedDB = ATTCharDB
    else
        selectedDB = ATTDB
    end
    local dbProfiles = {}

    for i = 1, #profiles do
        if not selectedDB[profiles[i]] then
            dbProfiles[profiles[i]] = {}
            for a, b in pairs(profiles[i] == "DEFAULT" and oldDB["isEnabledSpell"] and oldDB or ATTdbs.Defaults) do
                if type(b) ~= "table" then
                    dbProfiles[profiles[i]][a] = b
                else
                    dbProfiles[profiles[i]][a] = {}
                    for c, d in pairs(b) do
                        if type(d) ~= "table" then
                            dbProfiles[profiles[i]][a][c] = d
                        else
                            dbProfiles[profiles[i]][a][c] = {}
                            for e, f in pairs(d) do
                                dbProfiles[profiles[i]][a][c][e] = f
                            end
                        end
                    end
                end
            end
            selectedDB[profiles[i]] = dbProfiles[profiles[i]]
        end
    end
end

function ATT:TRAIT_CONFIG_UPDATED()
    --self:InspectCovenant()
    self:InspectPlayer()
    self:ApplyAnchorSettings()
end

function ATT:COMPACT_UNIT_FRAME_PROFILES_LOADED()
    self:FindFrameType()
    --self:InspectCovenant()
    self:InspectPlayer()
    self:ApplyAnchorSettings()
end

function ATT:PLAYER_LEAVING_WORLD()
    ATTInspectFrame:Hide()
end

local function ATT_OnLoad(self)
    self:RegisterEvent("PLAYER_ENTERING_WORLD")
    self:RegisterEvent("PLAYER_LEAVING_WORLD")
    self:RegisterEvent("PLAYER_SPECIALIZATION_CHANGED", "player")
    self:RegisterEvent("PLAYER_EQUIPMENT_CHANGED")
    self:RegisterEvent("GROUP_ROSTER_UPDATE")
    self:RegisterEvent("GROUP_JOINED")
    self:RegisterEvent("UNIT_AURA")
    self:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
    self:RegisterEvent("CHALLENGE_MODE_START")
    self:RegisterEvent("CHAT_MSG_BG_SYSTEM_NEUTRAL")
    self:RegisterEvent("CHAT_MSG_SYSTEM")
    self:RegisterEvent("ENCOUNTER_END")
    self:RegisterEvent("SCENARIO_POI_UPDATE")
    self:RegisterEvent("TRAIT_CONFIG_UPDATED")
    self:RegisterEvent("COMPACT_UNIT_FRAME_PROFILES_LOADED")
    self:RegisterEvent("UNIT_SPELLCAST_SUCCEEDED")

    if C_ChatInfo.RegisterAddonMessagePrefix(ChatPrefix) then
        self.useCrossAddonCommunication = true
    end
    if self.useCrossAddonCommunication then
        self:RegisterEvent("CHAT_MSG_ADDON")
    end
    self:SetScript("OnEvent", function(self, event, ...)
        if self[event] then
            self[event](self, ...)
        end
    end);

    for _, v in pairs(dbTrinkets) do
        local isTrinket = GetItemInfoInstant(v.trinketId)
        local item = isTrinket and Item:CreateFromItemID(v.trinketId)
        if item then
            item:ContinueOnItemLoad(function()
                if v.isPvPtrinket then
                    v.name = GetSpellInfo(v.ability)
                else
                    v.name = item:GetItemName()
                end
                v.texture = item:GetItemIcon()
            end)
        end
    end

    ATTDB = ATTDB or {}
    ATTCharDB = ATTCharDB or {}

    self:LoadProfiles()
    self:CheckProfile()
    self:CreateAnchors()
    self:CreateOptions()
    ATTInspectFrame:Hide()
    ATTInspectFrame:SetScript("OnUpdate", InspectTimer)
    ATTInspectFrame:SetScript("OnShow", function(self) elapsedTime = -1 ATT:RegisterEvent("INSPECT_READY") end)
    ATTInspectFrame:SetScript("OnHide",function(self) ATT:UnregisterEvent("INSPECT_READY") ClearInspectPlayer() end)
    ATTDampframe:Hide()
    self:FindFrameType()
    self:ApplyAnchorSettings();
    C_Timer.After(3, function()
        self:FindFrameType();
        self:ApplyAnchorSettings();
    end)

    if IsAddOnLoaded("Blizzard_CompactRaidFrames") and IsAddOnLoaded("Blizzard_CUFProfiles") then
        hooksecurefunc("UpdateRaidAndPartyFrames", function() ATT:ApplyAnchorSettings(); end)
        hooksecurefunc(EditModeManagerFrame, "UpdateRaidContainerFlow", function() ATT:ApplyAnchorSettings(); end)
        hooksecurefunc("CompactRaidFrameManager_SetSetting", function(arg) ATT:ApplyAnchorSettings(); end)
    end

    print("|cff33ff99A|rbility |cff33ff99T|ream |cff33ff99T|rracker |cffFF4500v" ..ATTversion .. "|r loaded. Type |cffFF4500/att|r to open options.")
end

function ATT:MergeTable(class, specID, category, isAnchor)
    local newdbSpells = {}

    if type(db.isEnabledSpell[specID]) ~= "table" then
        db.isEnabledSpell[specID] = {}
    end
    if type(db.customSpells[specID]) ~= "table" then
        db.customSpells[specID] = {}
    end
    if type(db.iconOrder[specID]) ~= "table" then
        db.iconOrder[specID] = {}
    end
    if type(db.alertCD[specID]) ~= "table" then
        db.alertCD[specID] = {}
    end
    if type(db.alertCDtext[specID]) ~= "table" then
        db.alertCDtext[specID] = {}
    end

    local dbSpells = dbImport[class][specID]
    local dbiconOrder = db.iconOrder[specID]
    local dbcustomSpells = db.customSpells[specID]

    if category == "abilities" then
        if dbSpells then
            for _, v in pairs(dbSpells) do
                if not v.name then v.name = GetSpellInfo(v.ability) end --if not v.name
                if v.name then table.insert(newdbSpells, v) end
            end
        end

        if dbcustomSpells then
            for _, v in pairs(dbcustomSpells) do
                if not v.name then v.name = GetSpellInfo(v.ability) end
                if v.name then table.insert(newdbSpells, v) end
            end
        end

        for _, v in pairs(newdbSpells) do
            if dbiconOrder[v.ability] then
                v.order = dbiconOrder[v.ability]
            else
                v.order = 20
            end
        end

        table.sort(newdbSpells, function(a, b)
            if isAnchor then
                if (a.order) == (b.order) then
                    return (a.name) < (b.name)
                else
                    return (a.order) < (b.order)
                end
            else
                return (a.name) < (b.name)
            end
        end)
    elseif category == "trinkets" then
        if dbTrinkets then
            for _, v in pairs(dbTrinkets) do
                if v.name then table.insert(newdbSpells, v) end
            end
            table.sort(newdbSpells, function(a, b)
                if (a.isPvPtrinket and b.isPvPtrinket) then
                    return a.ability < b.ability
                elseif (a.isPvPtrinket and not b.isPvPtrinket) then
                    return (1) < (2)
                elseif (not a.isPvPtrinket and b.isPvPtrinket) then
                    return (1) > (2)
                else
                    return (a.name) < (b.name)
                end
            end)
        end
    elseif category == "racials" then
        if dbRacials then
            for _, v in pairs(dbRacials) do
                if not v.name then v.name = GetSpellInfo(v.ability) end
                if v.name then table.insert(newdbSpells, v) end
            end
            table.sort(newdbSpells, function(a, b) return (a.name) < (b.name) end)
        end
    end

    return newdbSpells
end

function ATT:FindAbilityIcon(ability, id)
    if not id then
        return ""
    end
    local icon;
    if id then
        icon = GetSpellTexture(id)
    else
        _, _, icon = GetSpellInfo(ability)
    end
    return icon or ""
end

-- Panel
-------------------------------------------------------------
local function CreatePopUpFrame(panel, name)
    local popUpFrame = CreateFrame("Frame", name, panel, "TooltipBorderedFrameTemplate");
    popUpFrame:SetFrameLevel(popUpFrame:GetFrameLevel() + 3)
    popUpFrame:EnableMouse(true);
    popUpFrame:SetBackdropColor(0, 0, 0);
    popUpFrame:SetSize(280, 265);
    popUpFrame:SetPoint('LEFT', 180, -110);

    local title = popUpFrame:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge")
    title:SetJustifyH("CENTER")
    title:SetText(name)
    title:SetPoint("TOP", popUpFrame, "TOP", 0, -10)

    local closebtn = CreateFrame("button", "closebtn", popUpFrame, "UIPanelButtonTemplate")
    closebtn:SetHeight(24)
    closebtn:SetWidth(60)
    closebtn:SetPoint("BOTTOM", popUpFrame, "BOTTOM", 0, 5)
    closebtn:SetText("Close")
    closebtn:SetScript("OnClick", function(self)
        self:GetParent():Hide()
        panel.popUP = false
    end)

    popUpFrame:Hide()
    return popUpFrame
end

local function CreateListButton(parent, index, panel)
    local button = CreateFrame("CheckButton", parent:GetName() .. index, parent, "InterfaceOptionsCheckButtonTemplate")
    button.orderbtn = CreateFrame("button", parent:GetName() .. index .. "orderbtn", button,
        "UIPanelScrollUpButtonTemplate")

    return button
end

local function CreateEditBox(name, parent, width, height)
    local editbox = CreateFrame("EditBox", parent:GetName() .. name, parent, "InputBoxTemplate")
    editbox:SetHeight(height)
    editbox:SetWidth(width)
    editbox:SetAutoFocus(false)
    editbox:SetNumeric(true)
    editbox:SetMaxLetters(8)
    local label = editbox:CreateFontString(nil, "BACKGROUND", "GameFontNormal")
    label:SetText(name)
    label:SetPoint("BOTTOMLEFT", editbox, "TOPLEFT", -3, 0)
    return editbox
end

local function EnableGlobalSpell(id, value, option)
    for i = 1, GetNumClasses() do
        local className, classTag, classID = GetClassInfo(i)
        for j = 1, GetNumSpecializationsForClassID(classID) do
            local specID, specName = GetSpecializationInfoForClassID(classID, j)
            if specID then
                if option == "spell" then
                    if not db.isEnabledSpell[tostring(specID)] then db.isEnabledSpell[tostring(specID)] = {} end
                    db.isEnabledSpell[tostring(specID)][id] = value
                elseif option == "alertCDtext" then
                    if not db.alertCDtext[tostring(specID)] then db.alertCDtext[tostring(specID)] = {} end
                    db.alertCDtext[tostring(specID)][id] = value
                elseif option == "alertCD" then
                    if not db.alertCD[tostring(specID)] then db.alertCD[tostring(specID)] = {} end
                    db.alertCD[tostring(specID)][id] = value
                end
            end
        end
    end
end

function ATT:FindFrameType()
    local hookFrames = { 0, "Do Not Attach", 1, "Auto attach UI", 2, "Blizzard UI" }
    for x, v in pairs(customframes) do
        local checkframe = format(string.gsub(v.cframe, "1RG", 1), 1)
        if (_G[checkframe] or IsAddOnLoaded(v.cname)) then
            tinsert(hookFrames, x);
            tinsert(hookFrames, v.ctype);
        end
    end

    ATT_DropDown1.values = hookFrames
    ATT_DropDown1.doRefresh()
end

function ATT:CreateOptions()
    local panel = SO.AddOptionsPanel("Ability Team Tracker", function() end)
    self.panel = panel

    SO.AddSlashCommand("Ability Team Tracker", "/att")
    panel:MakeTitleTextAndSubText("Ability Team Tracker")

    local attach = panel:MakeDropDown('name', ' Attach to raid frames', 'description', 'Select hook mode behaviour',
        'values', { 0, "Do Not Attach", 1, "Auto attach UI", 2, "Blizzard UI" }, 'default', 0, 'getFunc', function()
            return db.attach or 0
        end, 'getCurrent', function()
            return db.attach or 0
        end, 'setFunc', function(value)
            db.attach = tonumber(value);
            self:ApplyAnchorSettings();
        end)
    attach:SetPoint("TOPLEFT", panel, "TOPLEFT", 5, -60)

    local attachPos = panel:MakeDropDown('name', ' Attach position', 'description', 'Select anchor position',
    'values', { 0, "TOP LEFT", 1, "TOP RIGHT", 2, "BOTTOM LEFT", 3, "BOTTOM RIGHT", 4, "CENTER LEFT", 5, "CENTER RIGHT" }, 'default', 0, 'getFunc', function()
        return  db.attachPos or 0
    end, 'getCurrent', function()
        return  db.attachPos or 0
    end, 'setFunc', function(value)
        db.attachPos = tonumber(value);
        self:ApplyAnchorSettings();
    end)
    attachPos:SetPoint("TOPLEFT", attach, "TOPLEFT", 0, -50)

    local growUP = panel:MakeToggle('name', 'Grow Rows Upwards', 'description', 'Grow new rows upwards', 'default'
   , false, 'getFunc', function()
       return db.growUP
   end, 'getCurrent', function()
       return db.growUP
   end, 'setFunc', function(value)
       db.growUP = value;
       self:ApplyAnchorSettings();
   end)
   growUP:SetPoint("TOP", panel, "TOP", -120, -50)

   local reverseIcons = panel:MakeToggle('name', 'Grow Icons Reversed', 'description', 'Reverse icons growing direction',
   'default', false, 'getFunc', function()
       return db.reverseIcons
   end, 'getCurrent', function()
       return db.reverseIcons
   end, 'setFunc', function(value)
       db.reverseIcons = value;
       self:ApplyAnchorSettings()
   end)
reverseIcons:SetPoint("TOP", growUP, "BOTTOM", 0, -5)

   local selfAttach = panel:MakeToggle(
    'name', 'Disable Self Attach',
    'description', 'Disable self frame hooking',
    'default', false,
    'getFunc', function() return db.selfAttach end,
    'getCurrent', function() return db.selfAttach end,
    'setFunc', function(value)
        db.selfAttach = value;
        self:ApplyAnchorSettings()
    end)
selfAttach:SetPoint("TOP", reverseIcons, "BOTTOM", 0, -5)

    local scale = panel:MakeSlider('name', 'Scale', 'description', 'Adjust the scale of icons', 'minText', 'Min',
        'maxText', 'Max', 'minValue', 1, 'maxValue', 200, 'step', 1, 'default', 100, 'current',
        db.scale and tonumber(db.scale * 100) or 1, 'getCurrent',
        function()
            return db.scale and tonumber(db.scale * 100) or 100
        end, 'setFunc', function(value)
            if (tonumber(value) / 100) ~= db.scale then
                db.scale = tonumber(string.format("%.2f", value)) / 100;
                ATTIcons:SetScale(db.scale or 1)
            end
        end, 'currentTextFunc', function(value)
            return tonumber(string.format("%.2f", value))
        end)
    scale:SetPoint("TOPLEFT", attach, "TOPLEFT", 20, -100)

    local iconRows = panel:MakeSlider('name', 'Icon Rows', 'description', 'Adjust number of icons per row', 'minText',
        '1', 'maxText', '5', 'minValue', 1, 'maxValue', 5, 'step', 1, 'default', 2, 'current',
        tonumber(db.IconRows) or 1
        , 'getCurrent',
        function()
            return tonumber(db.IconRows) or 1
        end, 'setFunc', function(value)
            if value ~= db.IconRows then
                db.IconRows = tonumber(string.format("%.1d", value));
                self:UpdateIcons();
            end
        end, 'currentTextFunc', function(value)
            return tonumber(string.format("%.1d", value));
        end)
    iconRows:SetPoint("LEFT", scale, "RIGHT", 15, 0)

    local iconAlpha = panel:MakeSlider('name', 'Icon Opacity', 'description', 'Adjust icons opacity', 'minText',
        'Hide', 'maxText', 'Max', 'minValue', 0, 'maxValue', 10, 'step', 1, 'default', 0, 'current',
        db.iconAlpha and tonumber(db.iconAlpha * 10) or 10,
        'getCurrent', function()
            return db.iconAlpha and tonumber(db.iconAlpha * 10) or 10
        end, 'setFunc', function(value)
            if value ~= db.iconAlpha then
                db.iconAlpha = value / 10;
                self:UpdateIcons();
            end
        end, 'currentTextFunc', function(value)
            return tonumber(string.format("%.1d", value));
        end)
    iconAlpha:SetPoint("LEFT", iconRows, "RIGHT", 15, 0)

    local raidGroupSize = panel:MakeSlider('name', 'Raid Anchors', 'description',
        'Adjust number of anchors to show inside a raid group\n', 'minText', 'Hide', 'maxText', '40', 'minValue', 0,
        'maxValue', 40, 'step', 1, 'default', 0, 'current', tonumber(db.raidGroupSize) or 5,
        'getCurrent', function()
            return tonumber(db.raidGroupSize) or 5
        end, 'setFunc', function(value)
            if value ~= db.raidGroupSize then
                db.raidGroupSize = tonumber(string.format("%.1d", value));
                self:EnqueueInspect(true)
                self:UpdateIcons();
            end
        end, 'currentTextFunc', function(value)
            return tonumber(string.format("%.1d", value));
        end)
    raidGroupSize:SetPoint("LEFT", iconAlpha, "RIGHT", 15, 0)

    local offsetX = panel:MakeSlider('name', 'Anchor Offset X', 'description', 'Adjust anchor position X', 'minText',
        'Left', 'maxText', 'Right', 'minValue', -200, 'maxValue', 200, 'step', 1, 'default', 0, 'current',
        tonumber(db.offsetX) or 0,
        'getCurrent', function()
            return tonumber(db.offsetX) or 0
        end, 'setFunc', function(value)
            if value ~= db.offsetX then
                db.offsetX = tonumber(value);
                self:UpdatePositions()
            end
        end, 'currentTextFunc', function(value)
            return tonumber(value);
        end)
    offsetX:SetPoint("TOPLEFT", attach, "TOPLEFT", 20, -160)

    local offsetY = panel:MakeSlider('name', 'Anchor Offset Y', 'description', 'Adjust anchor position Y', 'minText',
        'Down', 'maxText', 'Up', 'minValue', -200, 'maxValue', 200, 'step', 1, 'default', 0, 'current',
        tonumber(db.offsetY) or 0,
        'getCurrent', function()
            return tonumber(db.offsetY) or 0
        end, 'setFunc', function(value)
            if value ~= db.offsetY then
                db.offsetY = tonumber(value);
                self:UpdatePositions()
            end
        end, 'currentTextFunc', function(value)
            return tonumber(value);
        end)
    offsetY:SetPoint("LEFT", offsetX, "RIGHT", 15, 0)

    local iconOffsetX = panel:MakeSlider('name', 'Row Spacing', 'description', 'Adjust space between rows', 'minText',
        '0', 'maxText', '100', 'minValue', 0, 'maxValue', 100, 'step', 1, 'default', 5, 'current',
        tonumber(db.iconOffsetX) or 5,
        'getCurrent', function()
            return tonumber(db.iconOffsetX) or 5
        end, 'setFunc', function(value)
            if value ~= db.iconOffsetX then
                db.iconOffsetX = tonumber(string.format("%.1d", value));
                self:UpdateIcons();
            end
        end, 'currentTextFunc', function(value)
            return tonumber(string.format("%.1d", value));
        end)
    iconOffsetX:SetPoint("LEFT", offsetY, "RIGHT", 15, 0)

    local iconOffsetY = panel:MakeSlider('name', 'Icon Spacing', 'description', 'Adjust space between icons', 'minText',
        '0', 'maxText', '100', 'minValue', 0, 'maxValue', 100, 'step', 1, 'default', 2, 'current',
        tonumber(db.iconOffsetY) or 2,
        'getCurrent', function()
            return tonumber(db.iconOffsetY) or 2
        end, 'setFunc', function(value)
            if value ~= db.iconOffsetY then
                db.iconOffsetY = tonumber(string.format("%.1d", value));
                self:UpdateIcons();
            end
        end, 'currentTextFunc', function(value)
            return tonumber(string.format("%.1d", value));
        end)
    iconOffsetY:SetPoint("LEFT", iconOffsetX, "RIGHT", 15, 0)

    local lock = panel:MakeToggle('name', 'Hide Anchors', 'description', 'Hide/Lock anchors', 'default', false, 'getFunc'
    , function()
        return db.lock
    end, 'getCurrent', function()
        return db.lock
    end, 'setFunc', function(value)
        db.lock = value;
        self:ApplyAnchorSettings()
    end)
    lock:SetPoint("TOP", panel, "TOP", 40, -50)

    local glow = panel:MakeToggle('name', 'Glow Icons', 'description',
        'Show Glow animation when\nimportant abilites are active', 'default', true, 'getFunc', function()
            return db.glow
        end, 'getCurrent', function()
            return db.glow
        end, 'setFunc', function(value)
            db.glow = value;
            self:UpdateIcons();
        end)
    glow:SetPoint("TOP", lock, "BOTTOM", 0, -5)

    local showIconBorders = panel:MakeToggle('name', 'Draw Borders', 'description', 'Draw borders around icons',
        'default', true, 'getFunc', function()
            return db.showIconBorders
        end, 'getCurrent', function()
            return db.showIconBorders
        end, 'setFunc', function(value)
            db.showIconBorders = value;
            self:UpdateIcons();
        end)
    showIconBorders:SetPoint("TOP", glow, "BOTTOM", 0, -5)

    local showSelf = panel:MakeToggle('name', 'Show Self', 'description', 'Show your own icons', 'default', false,
        'getFunc', function()
            return db.showSelf
        end, 'getCurrent', function()
            return db.showSelf
        end, 'setFunc', function(value)
            db.showSelf = value;
            self:InspectPlayer()
            self:ApplyAnchorSettings()
        end)
    showSelf:SetPoint("LEFT", lock, "RIGHT", 120, 0)

    local showTooltip = panel:MakeToggle('name', 'Show Tooltip', 'description', 'Show tooltips over icons', 'default',
        false, 'getFunc', function()
            return db.showTooltip
        end, 'getCurrent', function()
            return db.showTooltip
        end, 'setFunc', function(value)
            db.showTooltip = value;
            self:UpdateIcons();
        end)
    showTooltip:SetPoint("TOP", showSelf, "BOTTOM", 0, -5)

    local hidden = panel:MakeToggle('name', 'Hidden Mode', 'description', 'Show icons only if that are on cooldown',
        'default', false, 'getFunc', function()
            return db.hidden
        end, 'getCurrent', function()
            return db.hidden
        end, 'setFunc', function(value)
            db.hidden = value;
            self:UpdateIcons();
        end)
    hidden:SetPoint("TOP", showTooltip, "BOTTOM", 0, -5)

    local cpanel = CreateFrame("Frame", "ATTFrame", panel, BackdropTemplateMixin and "BackdropTemplate, TooltipBorderedFrameTemplate")
    cpanel:SetSize(640, 280)
    cpanel:SetPoint("TOP", panel, "TOP", 0, -270)
    cpanel:SetBackdropColor(0,0,0, 0.4)

    local info = CreateFrame("Frame", "ATTFrame", panel, BackdropTemplateMixin and "BackdropTemplate")
    info:SetPoint("TOPLEFT", panel, "TOPLEFT", 25, -560)
    info:SetSize(50, 50)

    local version = info:CreateFontString(nil, "ARTWORK", "GameFontDisable")
    version:SetText("|cffffff00ATT|r |cff33ff99v" .. ATTversion .. "|r by |cffffff00izy|r")
    version:SetPoint("TOPLEFT", info, "TOPLEFT", 0, 0)

    local contact = info:CreateFontString(nil, "ARTWORK", "GameFontDisable")
    contact:SetText("[ Contact: curseforge.com/wow/addons/att ]")
    contact:SetPoint("TOPLEFT", info, "TOPLEFT", -5, -15)

    self:CreateOptionFrame()
    self:CreateVisibilityFrame()
    self:CreateProfilesFrame()
    self:CreateAbilityEditor()
    self:UpdateScrollBar()
    self:CreateOrderFrame()
end

function ATT:CreateOptionFrame()
    local panel = self.panel

    local extraoptions = CreatePopUpFrame(panel, "Options")
    local dampening = panel:MakeToggle('name', 'Show Dampening', 'description',
        'Show dampening percentage in arena under the remaining time', 'extra', extraoptions, 'default', false,
        'getFunc'
        , function()
            return db.dampening
        end, 'getCurrent', function()
            return db.dampening
        end, 'setFunc', function(value)
            db.dampening = value;
            ATT:ApplyAnchorSettings();
            ATT:Dampening()
        end)
    dampening:SetPoint("TOP", extraoptions, "TOP", -100, -40)

    local selfHideInRaid = panel:MakeToggle('name', 'Hide Self In Raid', 'description',
    'Hide Self in Raid Groups when Raid Anchors option is set to 0', 'extra', extraoptions, 'default', false, 'getFunc',
    function()
        return db.selfHideInRaid
    end, 'getCurrent', function()
        return db.selfHideInRaid
    end, 'setFunc', function(value)
        db.selfHideInRaid = value;
        ATT:ApplyAnchorSettings();
    end)
    selfHideInRaid:SetPoint("TOP", dampening, "TOP", 0, -30)

    local bgMode = panel:MakeToggle('name', 'Battleground Mode', 'description',
        'Show only trinkets and racials\ninside Battlegrounds', 'extra', extraoptions, 'default', false, 'getFunc',
        function()
            return db.bgMode
        end, 'getCurrent', function()
            return db.bgMode
        end, 'setFunc', function(value)
            db.bgMode = value;
            ATT:ApplyAnchorSettings();
        end)
    bgMode:SetPoint("TOP", selfHideInRaid, "TOP", 0, -30)

    local syncInfo = extraoptions:CreateFontString(nil, nil, "GameFontNormalSmall")
    syncInfo:SetWidth(250)
    syncInfo:SetText("- Sync Cooldowns is now enabled by default and can receive updates from other addons that are using OpenRaidLib (ex: Details) if other party / raid memebers dont have ATT enabled")
    syncInfo:SetJustifyH("LEFT")
    syncInfo:SetPoint("TOPLEFT", bgMode, "TOPLEFT", -5, -35)

    local showExtraOptions = panel:MakeButton('name', 'Options', 'description', 'Open Options Tab', 'newsize', false,
        'func', function()
            if panel.popUP then
                panel.popUP:Hide()
                panel.popUP = false
            else
                extraoptions:Show()
                panel.popUP = extraoptions
            end
        end)
    showExtraOptions:SetPoint("TOPLEFT", panel, "TOPLEFT", 360, -560)
end

function ATT:CreateVisibilityFrame()
    local panel = self.panel
    local visibility = CreatePopUpFrame(panel, "Visibility")

    local arena = panel:MakeToggle('name', 'Show in Arenas', 'description', '', 'extra', visibility, 'default', false,
        'getFunc', function()
            return db.isEnabledVisibility["arena"]
        end, 'getCurrent', function()
            return db.isEnabledVisibility["arena"]
        end, 'setFunc', function(value)
            db.isEnabledVisibility["arena"] = value;
            ATT:ApplyAnchorSettings();
        end)
    arena:SetPoint("TOP", visibility, "TOP", -110, -40)

    local dungeons = panel:MakeToggle('name', 'Show in Dungeons', 'description', '', 'extra', visibility, 'default',
        false, 'getFunc', function()
            return db.isEnabledVisibility["dungeons"]
        end, 'getCurrent', function()
            return db.isEnabledVisibility["dungeons"]
        end, 'setFunc', function(value)
            db.isEnabledVisibility["dungeons"] = value;
            ATT:ApplyAnchorSettings();
        end)
    dungeons:SetPoint("TOP", arena, "TOP", 0, -30)

    local scenarios = panel:MakeToggle('name', 'Show in Scenarios', 'description', '', 'extra', visibility, 'default',
        false, 'getFunc', function()
            return db.isEnabledVisibility["scenarios"]
        end, 'getCurrent', function()
            return db.isEnabledVisibility["scenarios"]
        end, 'setFunc', function(value)
            db.isEnabledVisibility["scenarios"] = value;
            ATT:ApplyAnchorSettings();
        end)
    scenarios:SetPoint("TOP", dungeons, "TOP", 0, -30)

    local inbg = panel:MakeToggle('name', 'Show in Battlegrounds', 'description', '', 'extra', visibility, 'default',
        false, 'getFunc', function()
            return db.isEnabledVisibility["inbg"]
        end, 'getCurrent', function()
            return db.isEnabledVisibility["inbg"]
        end, 'setFunc', function(value)
            db.isEnabledVisibility["inbg"] = value;
            ATT:ApplyAnchorSettings();
        end)
    inbg:SetPoint("TOP", scenarios, "TOP", 0, -30)

    local inraid = panel:MakeToggle('name', 'Show in Raid Instances', 'description', '', 'extra', visibility, 'default',
        false, 'getFunc', function()
            return db.isEnabledVisibility["inraid"]
        end, 'getCurrent', function()
            return db.isEnabledVisibility["inraid"]
        end, 'setFunc', function(value)
            db.isEnabledVisibility["inraid"] = value;
            ATT:ApplyAnchorSettings();
        end)
    inraid:SetPoint("TOP", inbg, "TOP", 0, -30)

    local outside = panel:MakeToggle('name', 'Show in Open World', 'description', '', 'extra', visibility, 'default',
        false, 'getFunc', function()
            return db.isEnabledVisibility["outside"]
        end, 'getCurrent', function()
            return db.isEnabledVisibility["outside"]
        end, 'setFunc', function(value)
            db.isEnabledVisibility["outside"] = value;
            ATT:ApplyAnchorSettings();
        end)
    outside:SetPoint("TOP", inraid, "TOP", 0, -30)

    local showVisibility = panel:MakeButton('name', 'Visibility', 'description', 'Open Visibility Tab', 'newsize', false
    , 'func', function()
        if panel.popUP then
            panel.popUP:Hide()
            panel.popUP = false
        else
            visibility:Show()
            panel.popUP = visibility
        end
    end)
    showVisibility:SetPoint("TOPLEFT", panel, "TOPLEFT", 460, -560)
end

function ATT:CreateProfilesFrame()
    local panel = self.panel

    local profiles = CreatePopUpFrame(panel, "Profiles")

    local selectProfile = panel:MakeDropDown('name', ' Select Profile', 'description', 'Select Profile', 'extra',
        profiles, 'values',
        { "DEFAULT", "Main", "TANK", "Tank", "HEALER", "Healer", "DAMAGER", "DPS", "BG", "BattleGround", "Extra1",
            "Extra Profie 1", "Extra2", "Extra Profie 2" }, 'default', "DEFAULT", 'getFunc', function()
            return selectedDB.ProfileSelected
        end, 'getCurrent', function()
            return selectedDB.ProfileSelected
        end, 'setFunc', function(value)
            local _, instanceType = IsInInstance()
            if selectedDB.autoselectprofile then
                print("You can not change profiles if |cffFF4500'Auto Select Profiles'|r is enabled")
                panel:UpdateSettings()
                return --TODO
            elseif (selectedDB.autoselectBG and instanceType == "pvp") then
                print("You can not change profiles in battleground if |cffFF4500'Auto Switch BG Profile'|r is enabled")
                panel:UpdateSettings()
                return
            end
            selectedDB.ProfileSelected = value;
            self:CheckProfile();
            self:UpdateScrollBar();
            self:ApplyAnchorSettings();
            panel:UpdateSettings()
        end) -- here
    selectProfile:SetPoint("TOP", profiles, "TOP", -40, -60)

    local copyProfile = panel:MakeButton('name', 'Import', 'description',
        'Copy settings from the Main profile to the current profile', 'extra', profiles, 'newsize', 2, 'func',
        function()
            if selectedDB.ProfileSelected ~= "DEFAULT" then
                StaticPopup_Show("ATT_COPYPROFILES")
            else
                print(
                    "You have to select a different profile - |cffFF4500Main|r profile can NOT copy itsef.")
            end
        end)
    copyProfile:SetPoint("LEFT", selectProfile, "RIGHT", -5, 3)

    StaticPopupDialogs["ATT_COPYPROFILES"] = {
        text =
        "Are you sure you want to copy the settings from the Main profile to this profile?\n\nAll the settings on the current profile will be overwritten.",
        button1 = "Yes",
        button2 = "No",
        OnAccept = function()
            if selectedDB.ProfileSelected ~= "DEFAULT" then
                selectedDB[selectedDB.ProfileSelected] = selectedDB["DEFAULT"]
                self:CheckProfile();
                self:UpdateScrollBar();
                self:ApplyAnchorSettings();
                panel:UpdateSettings()
                print("Current profile has been |cffFF4500UPDATED|r")
            end
        end,
        exclusive = true,
        whileDead = true,
        hideOnEscape = true,
        preferredIndex = 3,
    }

    local autoselectprofile = panel:MakeToggle('name', 'Auto Select Profiles', 'description',
        'Auto select profile based on your current specialization', 'extra', profiles, 'default', false, 'getFunc',
        function()
            return selectedDB.autoselectprofile
        end, 'setFunc', function(value)
            selectedDB.autoselectprofile = value;
            ATT:CheckProfile();
            ATT:UpdateScrollBar();
            ATT:ApplyAnchorSettings();
            panel:UpdateSettings()
        end) -- here
    autoselectprofile:SetPoint("TOP", profiles, "TOP", -95, -100)

    local autoselectBG = panel:MakeToggle('name', 'Auto Switch BG Profile', 'description',
        'Auto Switch to BattleGround profile inside battlegrounds\n', 'extra', profiles, 'default', false, 'getFunc',
        function()
            return selectedDB.autoselectBG
        end, 'setFunc', function(value)
            selectedDB.autoselectBG = value;
            ATT:CheckProfile();
            ATT:UpdateScrollBar();
            ATT:ApplyAnchorSettings();
            panel:UpdateSettings()
        end)
    autoselectBG:SetPoint("TOP", autoselectprofile, "TOP", 0, -30)

    local profilebychar = panel:MakeToggle('name', 'Use Character DB', 'description',
        'Your profiles will be stored per Charcater and not per Account\n', 'extra', profiles, 'default', false,
        'getFunc', function()
            return ATTDB.profilebychar
        end, 'setFunc', function(value)
            StaticPopup_Show("ATT_CHARDB")
        end)
    profilebychar:SetPoint("TOP", autoselectBG, "TOP", 0, -30)

    StaticPopupDialogs["ATT_CHARDB"] = {
        text = "Are you sure you want to switch the DB?\n\n Your UI will be reloaded .",
        button1 = "Yes",
        button2 = "No",
        OnAccept = function()
            --ATTCharDB = {}; ---HERE TODO TESTING
            ATTDB.profilebychar = (not ATTDB.profilebychar);
            ATT:CheckProfile();
            ATT:UpdateScrollBar();
            ATT:ApplyAnchorSettings();
            panel:UpdateSettings()
            ReloadUI();
        end,
        OnCancel = function()
            profilebychar:SetChecked(not not ATTDB.profilebychar)
        end,
        exclusive = true,
        whileDead = true,
        hideOnEscape = true,
        preferredIndex = 3,
    }

    local reset = panel:MakeButton('name', 'Reset Addon', 'description', 'Reset all settings and profiles', 'extra',
        profiles, 'newsize', false, 'func', function()
            StaticPopup_Show("ATT_RESET")
        end)
    reset:SetPoint("TOP", profilebychar, "TOP", 95, -40)

    StaticPopupDialogs["ATT_RESET"] = {
        text = "Are you sure you want to reset ATT?\n\nAll your settings will be lost and your UI will be reloaded.",
        button1 = "Yes",
        button2 = "No",
        OnAccept = function()
            ATTDB = {};
            ATTCharDB = {};
            ReloadUI();
        end,
        exclusive = true,
        whileDead = true,
        hideOnEscape = true,
        preferredIndex = 3,
    }

    profiles:SetScript("OnHide",
        function(self)
            StaticPopup_Hide("ATT_RESET")
            StaticPopup_Hide("ATT_COPYPROFILES")
            StaticPopup_Hide("ATT_CHARDB")
        end)

    local showProfiles = panel:MakeButton('name', 'Profiles', 'description', 'Open Profiles tab', 'newsize', false,
        'func', function()
            if panel.popUP then
                panel.popUP:Hide()
                panel.popUP = false
            else
                profiles:Show()
                panel.popUP = profiles
            end
        end)
    showProfiles:SetPoint("TOPLEFT", panel, "TOPLEFT", 560, -560)
end

function ATT:CreateOrderFrame()
    local panel = self.panel
    local popUpFrame = CreateFrame("Frame", "Order", panel, "TooltipBorderedFrameTemplate");
    self.OrderPopUpFrame = popUpFrame
    popUpFrame.id = nil

    popUpFrame:SetFrameLevel(popUpFrame:GetFrameLevel() + 3)
    popUpFrame:EnableMouse(true);
    popUpFrame:SetBackdropColor(0, 0, 0);
    popUpFrame:SetSize(250, 180);
    popUpFrame:SetPoint('LEFT', 200, -65);
    popUpFrame.title = popUpFrame:CreateFontString(nil, "ARTWORK", "GameFontNormal")
    popUpFrame.title:SetPoint("TOP", popUpFrame, "TOP", 0, -10)
    popUpFrame:Hide()

    local closebtn = CreateFrame("button", "closebtn", popUpFrame, "UIPanelButtonTemplate")
    closebtn:SetHeight(24)
    closebtn:SetWidth(100)
    closebtn:SetPoint("BOTTOM", popUpFrame, "BOTTOM", 0, 5)
    closebtn:SetText("Close")
    closebtn:SetScript("OnClick", function(self)
        self:GetParent():Hide()
        panel.popUP = false
        ATT:UpdateIcons()
    end)

    local order = panel:MakeSlider('name', 'Icon Order', 'extra', popUpFrame, 'description', 'Adjust icon order priority'
        , 'minText', '1', 'maxText', '20', 'minValue', 1, 'maxValue', 20, 'step', 1, 'default', 1, 'current',
        tonumber(db.iconOrder[db.specSelected][popUpFrame.id]) or 20, 'setFunc', function(value)
            if value ~= db.iconOrder[db.specSelected][popUpFrame.id] then
                db.iconOrder[db.specSelected][popUpFrame.id] = tonumber(string.format("%.1d", value))
            end
        end, 'currentTextFunc', function(value)
            return tonumber(string.format("%.1d", value))
        end)
    order:SetPoint("TOP", popUpFrame, "TOP", 0, -60)

    local notorder = popUpFrame:CreateFontString(nil, "ARTWORK", "GameFontNormal")
    notorder:SetText("Changing order of trinkets or racials\n is not supported")
    notorder:SetPoint("TOP", popUpFrame, "TOP", 0, -60)

    local alertCD = panel:MakeToggle('name', 'Sound alert', 'extra', popUpFrame, 'description',
        'Play a sound when activated', 'default', false, 'getFunc', function()
            return db.alertCD[db.specSelected][popUpFrame.id]
        end,
        'setFunc', function(value)
            if db.globalSelections and db.category ~= "abilities" then
                EnableGlobalSpell(popUpFrame.id, value, "alertCD") --global selections
            else
                db.alertCD[db.specSelected][popUpFrame.id] = value;
            end
        end)
    alertCD:SetPoint("TOP", order, "BOTTOM", -90, -30)

    local alertCDtext = panel:MakeToggle('name', 'Text alert', 'extra', popUpFrame, 'description',
        'Show a text alert when activated', 'default', false, 'getFunc', function()
            return db.alertCDtext[db.specSelected][popUpFrame.id]
        end, 'setFunc', function(value)
            if db.globalSelections and db.category ~= "abilities" then
                EnableGlobalSpell(popUpFrame.id, value, "alertCDtext") --global selections
            else
                db.alertCDtext[db.specSelected][popUpFrame.id] = value;
            end
        end)
    alertCDtext:SetPoint("LEFT", alertCD, "RIGHT", 100, 0)

    popUpFrame:SetScript("OnShow", function(self)
        alertCD:SetChecked(not not db.alertCD[db.specSelected][popUpFrame.id])
        alertCDtext:SetChecked(not not db.alertCDtext[db.specSelected][popUpFrame.id])
        if (db.category == "abilities") then
            order:SetValue(tonumber(db.iconOrder[db.specSelected][popUpFrame.id]) or 20)
            order.currentText:SetText(tonumber(db.iconOrder[db.specSelected][popUpFrame.id]) or 20)
            order:Show();
            notorder:Hide();
        else
            order:Hide();
            notorder:Show();
        end
    end)
end

function ATT:UpdateScrollBar()
    local panel, scrollframe, btns = self.panel, self.scrollframe, self.btns
    local OrderPopUpFrame = self.OrderPopUpFrame
    local line = 1

    for abilityIndex, abilityTable in pairs(self:MergeTable(db.classSelected, db.specSelected, db.category)) do
        local name, id, cooldown, maxcharges, custom, trinketId, isPvPtrinket = abilityTable.name, abilityTable.ability,
            abilityTable.cooldown, abilityTable.maxcharges, abilityTable.custom, abilityTable.trinketId,
            abilityTable.isPvPtrinket
        local button = btns[line]
        local abilitytexture = abilityTable.texture or self:FindAbilityIcon(name, id)

        if line == 1 then
            button:SetPoint("TOPLEFT", scrollframe, "TOPLEFT", 2, 0)
        end

        if custom then
            button.Text:SetText(" |T" .. abilitytexture .. ":20|t |cff808080" .. name .. "|r")
            button:SetChecked(db.isEnabledSpell[db.specSelected][id .. "custom"])
            button:SetScript("OnClick", function(self)
                db.isEnabledSpell[db.specSelected][id .. "custom"] = (button:GetChecked() == true and true) or false;
                ATT:UpdateIcons();
            end)
        else
            if dbisPVPspell[id] or isPvPtrinket then
                button.Text:SetText(" |T" .. abilitytexture .. ":20|t |cffFF4500" .. name .. "|r")
            else
                button.Text:SetText(" |T" .. abilitytexture .. ":20|t " .. name)
            end
            button:SetChecked(db.isEnabledSpell[db.specSelected][id])
            button:SetScript("OnClick", function(self)
                if db.globalSelections and db.category ~= "abilities" then
                    EnableGlobalSpell(id, (button:GetChecked() == true and true) or false, "spell") --global selections
                else
                    db.isEnabledSpell[db.specSelected][id] = (button:GetChecked() == true and button:GetChecked()) or
                        false;
                end
                ATT:UpdateIcons();
            end)
        end
        button.Text:SetSize(165, 22)
        button.Text:SetJustifyH("LEFT")
        button.Text:SetFont(GameFontNormal:GetFont(), 12)
        button:SetHitRectInsets(0, -165, 0, 0)

        button:SetScript('OnEnter', function()
            if trinketId then
                local tooltip = Item:CreateFromItemID(trinketId)
                tooltip:ContinueOnItemLoad(function()
                    GameTooltip:ClearLines();
                    GameTooltip:SetOwner(button.Text, "ANCHOR_TOP")
                    if isPvPtrinket then
                        GameTooltip:SetSpellByID(id)
                        GameTooltip:AddLine("|cffFF4500PvP|r - Spell ID:"
                            .. id, 1, 1, 1)
                    else
                        GameTooltip:SetItemByID(trinketId)
                        GameTooltip:AddLine("Spell ID: " .. id, 1
                        , 1, 1)
                    end
                    GameTooltip:SetPadding(16, 0)
                    GameTooltip:Show()
                end)
            else
                local tooltip = Spell:CreateFromSpellID(id)
                tooltip:ContinueOnSpellLoad(function()
                    GameTooltip:ClearLines();
                    GameTooltip:SetOwner(button.Text, "ANCHOR_TOP")
                    GameTooltip:SetSpellByID(id)
                    if custom then
                        GameTooltip:AddLine("|cff808080CUSTOM|r - Spell ID: " .. id .. " - CD: " .. cooldown, 1, 1, 1)
                    else
                        if dbisPVPspell[id] then
                            GameTooltip:AddLine("|cffFF4500PvP|r - Spell ID:" .. id, 1, 1, 1)
                        else
                            GameTooltip
                                :AddLine("Spell ID: " .. id, 1, 1, 1)
                        end
                    end
                    GameTooltip:SetPadding(16, 0)
                    GameTooltip:Show()
                end)
            end
        end)

        button:SetScript('OnLeave', function()
            GameTooltip:ClearLines()
            GameTooltip:Hide()
        end)

        local orderbtn = button.orderbtn
        orderbtn:SetPoint("LEFT", button, "RIGHT", 165, 0)
        orderbtn:SetText("Order")
        orderbtn:SetScript("OnClick", function(self)
            OrderPopUpFrame.title:SetText(("|T" .. abilitytexture .. ":20|t " .. name:sub(1, 30)))
            OrderPopUpFrame.id = id
            if panel.popUP then
                panel.popUP:Hide()
                panel.popUP = false
            else
                OrderPopUpFrame:Show()
                panel.popUP = OrderPopUpFrame
            end
        end)

        button:Show()
        line = line + 1
    end

    for i = line, 50 do
        btns[i]:Hide();
    end
end

function ATT:CreateAbilityEditor()
    local panel = self.panel
    panel:Hide()
    local btns = {}
    self.btns = btns

    local scrollframe = CreateFrame("ScrollFrame", "ATTScrollFrame", panel, "ScrollFrameTemplate")
    local child = CreateFrame("Frame", "ATTScrollFrameChild", scrollframe)
    child:SetSize(1, 1)
    scrollframe:SetScrollChild(child)
    self.scrollframe = child
    scrollframe:SetSize(440, 255)
    scrollframe:SetPoint('LEFT', 25, -110)

    for i = 1, 50 do
        local button = CreateListButton(child, tostring(i), panel)
        if (i % 2 == 0) then
            button:SetPoint("LEFT", btns[#btns], "RIGHT", 195, 0)
        else
            button:SetPoint("TOPLEFT",
                btns[#btns - 1], "BOTTOMLEFT", 0, 0)
        end
        btns[#btns + 1] = button
    end

    scrollframe:SetScript("OnShow",
        function(self)
            ATT:FindFrameType();
            if panel.popUP then
                panel.popUP:Hide()
                panel.popUP = false
            end
            child.dropdown
                .initialize()
            child.dropdown:SetValue(db.classSelected or "WARRIOR")
            panel:UpdateSettings()
        end)

    local dropdown = panel:MakeDropDown('name', ' Class', 'description', 'Pick a class', 'values',
        { "WARRIOR", "Warrior", "DEATHKNIGHT", "Deathknight", "PALADIN", "Paladin", "PRIEST", "Priest", "SHAMAN",
            "Shaman", "DRUID", "Druid", "ROGUE", "Rogue", "MAGE", "Mage", "WARLOCK", "Warlock", "HUNTER", "Hunter",
            "MONK", "Monk", "DEMONHUNTER",
            "Demon Hunter", "EVOKER", "Evoker" }, 'default', 'WARRIOR', 'getFunc', function()
            return db.classSelected or "WARRIOR"
        end, 'getCurrent', function()
            child.dropdown2.values = {}
            for i = 1, GetNumClasses() do
                local className, classTag, classID = GetClassInfo(i)
                if classTag == db.classSelected then
                    for j = 1, GetNumSpecializationsForClassID(classID) do
                        local specID, specName = GetSpecializationInfoForClassID(classID, j)
                        if j == 1 then
                            db.specSelected = tostring(specID)
                        end
                        child.dropdown2.values[#child.dropdown2.values + 1] = tostring(specID)
                        child.dropdown2.values[#child.dropdown2.values + 1] = specName
                    end
                    break
                end
            end
            return db.classSelected or "WARRIOR"
        end, 'setFunc', function(value)
            db.classSelected = value;
            child.dropdown2.values = {}
            for i = 1, GetNumClasses() do
                local className, classTag, classID = GetClassInfo(i)
                if classTag == db.classSelected then
                    for j = 1, GetNumSpecializationsForClassID(classID) do
                        local specID, specName = GetSpecializationInfoForClassID(classID, j)
                        if j == 1 then
                            db.specSelected = tostring(specID)
                        end
                        child.dropdown2.values[#child.dropdown2.values + 1] = tostring(specID)
                        child.dropdown2.values[#child.dropdown2.values + 1] = specName
                    end
                    break
                end
            end
            child.dropdown2.initialize()
            child.dropdown2:SetValue(db.specSelected)
        end)
    dropdown:SetPoint("TOPLEFT", scrollframe, "TOPRIGHT", 20, -10)
    child.dropdown = dropdown

    local dropdown2 = panel:MakeDropDown('name', ' Specialization', 'description', 'Pick a spec', 'values',
        { "71", "Arms", "72", "Fury", "73", "Protection" }, 'default', "71", 'current', "71", 'getCurrent',
        function()
            return db.specSelected
        end, 'setFunc', function(value)
            db.specSelected = value;
            db.category = "abilities"
            child.dropdown3.initialize()
            child.dropdown3:SetValue(db.category)
        end)
    dropdown2:SetPoint("TOPLEFT", dropdown, "BOTTOMLEFT", 0, -20)
    child.dropdown2 = dropdown2

    local dropdown3 = panel:MakeDropDown('name', ' Category', 'description', 'Pick a category', 'values',
        { "abilities", "Abilities", "trinkets", "Trinkets", "racials", "Racials" }, 'default', "abilities", 'current',
        "abilities", 'getCurrent', function()
            return db.category
        end, 'setFunc', function(value)
            if panel.popUP then
                panel.popUP:Hide()
                panel.popUP = false
            end
            db.category = value;
            ATT:UpdateScrollBar()
        end)
    dropdown3:SetPoint("TOPLEFT", dropdown2, "BOTTOMLEFT", 0, -20)
    child.dropdown3 = dropdown3

    local globalSelections = panel:MakeToggle('name', 'Global Selections', 'description',
        'When enabled next selections of trinkets or racials will be applied to all classes and specializations',
        'default', true, 'getFunc', function()
            return db.globalSelections
        end, 'getCurrent', function()
            return db.globalSelections
        end, 'setFunc', function(value)
            db.globalSelections = value;
            self:UpdateIcons();
        end)
    globalSelections:SetPoint("TOPLEFT", dropdown3, "BOTTOMLEFT", 20, -5)

    local ideditbox = CreateEditBox("Ability ID", panel, 80, 30)
    ideditbox:SetPoint("TOPLEFT", dropdown3, "BOTTOMLEFT", 25, -50)

    local cdeditbox = CreateEditBox("CD (s)", panel, 35, 30)
    cdeditbox:SetPoint("LEFT", ideditbox, "RIGHT", 15, 0)

    local addbutton = panel:MakeButton('name', 'Add', 'newsize', 2, 'description', "Add / Update ability", 'func',
        function()
            local id = ideditbox:GetText():match("^[0-9]+$")
            local class = dropdown.value
            local spec = dropdown2.value
            local ability = GetSpellInfo(id)
            local cdtext = cdeditbox:GetText():match("^[0-9]+$")

            if ability and cdtext and id and db.customSpells[spec] then
                local abilities = db.customSpells[spec]
                local _ability, _index = ATT:FindAbilityByName(db.customSpells[spec], tonumber(id))
                if _ability and _index then
                    -- editing:
                    abilities[_index] = {
                        ability = tonumber(id),
                        cooldown = tonumber(cdtext),
                        order = _ability.order or 20,
                        custom = true
                    }
                    ideditbox:SetText("");
                    cdeditbox:SetText("");
                    print("Updated Custom Ability: |cffFF4500" ..ability .. "|r id: |cffFF4500" .. id .. "|r cd: |cffFF4500" .. cdtext .. "|r")
                else
                    -- adding new:
                    table.insert(abilities,
                        { ability = tonumber(id), cooldown = tonumber(cdtext), order = 20, custom = true })
                    ideditbox:SetText("");
                    cdeditbox:SetText("");
                    print("Added Custom Ability: |cffFF4500" ..ability .. "|r id: |cffFF4500" .. id .. "|r cd: |cffFF4500" .. cdtext .. "|r")
                end
                ATT:UpdateScrollBar();
                ATT:UpdateIcons()
            else
                print("Invalid or blank:|cffFF4500 Ability ID or Cooldown|r")
            end
        end)
    addbutton:SetPoint("TOPLEFT", ideditbox, "BOTTOMLEFT", -5, -5)

    local removebutton = panel:MakeButton('name', 'Remove', 'newsize', 2, 'description', 'Remove ability', 'func',
        function()
            local id = ideditbox:GetText():match("^[0-9]+$")
            local spec = dropdown2.value
            local ability = GetSpellInfo(id) or id

            local _ability, _index = ATT:FindAbilityByName(db.customSpells[spec], tonumber(ideditbox:GetText()))
            if _ability and _index then
                table.remove(db.customSpells[spec], _index)
                print("Removed |cffFF4500" .. ability .. "|r id: |cffFF4500" .. id .. "|r")
                ideditbox:SetText("");
                cdeditbox:SetText("");
                ATT:UpdateScrollBar();
                ATT:UpdateIcons()
            else
                print("Invalid or blank:|cffFF4500 Ability ID|r")
            end
        end)
    removebutton:SetPoint("LEFT", addbutton, "RIGHT", 10, 0)
end

ATT:RegisterEvent("ADDON_LOADED")
ATT:SetScript("OnEvent", ATT_OnLoad)