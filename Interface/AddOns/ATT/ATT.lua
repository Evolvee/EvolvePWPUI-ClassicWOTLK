 --[[
Name: Ability Team Tracker WotLK
Author: by Izy
Contact/support @ curseforge.com/wow/addons/att
Description: Track the cooldowns of your party members
--]]

local _G = _G
local addon, ATTdbs = ...
local match = string.match
local UnitClass = UnitClass
local UnitGUID = UnitGUID
local UnitName = UnitName
local IsInInstance = IsInInstance
local IsInGroup = IsInGroup
local IsInRaid = IsInRaid
local UnitRace = UnitRace
local UnitLevel = UnitLevel
local CooldownFrame_Set = CooldownFrame_Set
local GetTalentInfo = GetTalentInfo
local GetSpellInfo = GetSpellInfo
local LGlows = LibStub("LibATTButtonGlow")
local SO = LibStub("LibATTSimpleOptions")
local ChatPrefix = "ATT-Check"
local ATTversion = 9
local ATTnewversion
local db
local selectedDB
local dbModif = ATTdbs.dbModif
local dbRacials = ATTdbs.dbRacials
local dbModifGlyph = ATTdbs.dbModifGlyph
local dbImport = ATTdbs.dbImport
local ShareCD = ATTdbs.ShareCD
local dbAuraRemoved = ATTdbs.dbAuraRemoved
local dbAuraApplied = ATTdbs.dbAuraApplied
local dbTrinkets = ATTdbs.dbTrinkets
local cooldownResetters = ATTdbs.cooldownResetters
local validPartyUnits = ATTdbs.validPartyUnits
local validRaidUnits = ATTdbs.validRaidUnits
local ATT = CreateFrame("Frame","ATT",UIParent)
local ATTIcons = CreateFrame("Frame",nil,UIParent)
local ATTAnchor = CreateFrame("Frame",nil,UIParent)
local ATTInspectFrame = CreateFrame("Frame")
local ATTInsGearFrame = CreateFrame("GameTooltip", "ATTInspectedFrame", nil, "GameTooltipTemplate")
ATTInsGearFrame:SetOwner(UIParent, "ANCHOR_NONE")
local ATTSyncFrame = CreateFrame("Frame")
local PlayerGUID = UnitGUID("player")

local NotifyInspect = NotifyInspect
local insTimes = 0
local elapsedTime = 0
local SyncLastUpdate = 0

local anchors = {}
local activeGUIDS = {}
-- Player Inspect
local inspected = {}
local inspect_queue = {}
local dbInspect = {}
local isFWW = {} -- workaround fix
local insUnitDelay = {}
local hookedFrames = {}

local PvPTrinketName = GetSpellInfo(42292)
local EveryMan = GetSpellInfo(59752)
local _, PlayerClass = UnitClass("player")
    
local function print(...)
	for i=1,select('#',...) do
		ChatFrame1:AddMessage("|cff33ff99ATT|r: " .. select(i,...))
	end
end

local function isRaidGr()
    local _, instanceType = IsInInstance()
    local isInRaidGr = IsInRaid(1) or (IsInRaid(2) and (instanceType == "raid" or instanceType == "pvp")) or GetNumGroupMembers() > 5
    return isInRaidGr
end

function ATT:GetUnitByGUID(guid)
    local validUnits = (isRaidGr() and validRaidUnits) or validPartyUnits
    for k, v in pairs(validUnits) do
        if guid and UnitGUID(k) == guid and ((isRaidGr() and ((validRaidUnits[k] <= db.raidGroupSize) or (db.showSelf and guid == PlayerGUID))) or not isRaidGr()) then
            return k
        end
    end
end

function ATT:CheckValidAnchor(unit)
    local validUnits = (isRaidGr() and validRaidUnits) or validPartyUnits
	return anchors[validUnits[unit]]
end

function ATT:QueueInspect(guid)
    if guid then
        self:DequeueInspectByGUID(guid)
        inspect_queue[#inspect_queue+1] = guid
    end
end 

function ATT:DequeueInspectByGUID(guid)
    for i=1,#inspect_queue do
        if inspect_queue[i] == guid then
            table.remove(inspect_queue, i)
        end
    end
end

function ATT:InspectPlayer()
      local unit = self:GetUnitByGUID(PlayerGUID)
      if db.showSelf and unit then self:UpdateAnchorGUID(unit, PlayerGUID, 1) end
end

function ATT:InspectIsReady(guid, inspectedUnit)
    self:DequeueInspectByGUID(guid)
    if guid and guid ~= PlayerGUID then
        self:UpdateAnchorGUID(inspectedUnit, guid, 1)
    end
end

function ATT:EnqueueInspect(grupdate)
    for i=1, ((isRaidGr() and db.raidGroupSize) or 4) do
        local unit = (isRaidGr() and "raid"..i) or "party"..i
        local guid = UnitGUID(unit)
        if guid and guid ~= PlayerGUID then
            if grupdate then
                if not dbInspect[guid] or (dbInspect[guid] and not dbInspect[guid]["isInspected"]) then self:QueueInspect(guid) end --here
            else
                self:QueueInspect(guid)
            end
        end
    end
    if grupdate and #inspect_queue > 0 then self:SendUpdate() end
    if #inspect_queue > 0 and not ATTInspectFrame:IsShown() then ATTInspectFrame:Show(); end
end

function ATT:ProcessInspectQueue()
    for i, guid in pairs(inspect_queue) do
        local unit = self:GetUnitByGUID(guid)
        if unit and (not UnitIsConnected(unit) or (insUnitDelay[guid] and insUnitDelay[guid] > GetTime() + 120)) then self:DequeueInspectByGUID(guid)  end
        if unit and not (InspectFrame and InspectFrame:IsShown()) and CheckInteractDistance(unit,1) and CanInspect(unit) and (not insUnitDelay[guid] or insUnitDelay[guid] < GetTime()) then
            insTimes = insTimes + 1
            insUnitDelay[guid] = GetTime() + 2
            NotifyInspect(unit)
            break
        end
    end
end

local function InspectTimer(self, elapsed)
    elapsedTime = elapsedTime + elapsed
    
    if elapsed and elapsedTime > 1 and #inspect_queue > 0 then
        ATT:ProcessInspectQueue()
        if insTimes == 4 then elapsedTime = elapsedTime - 2; insTimes = 0 else elapsedTime = 0 end
     
    elseif #inspect_queue == 0 and elapsedTime > 1 then 
        ATTInspectFrame:Hide()
    end
end

function ATT:INSPECT_READY(guid)
    if InspectFrame and InspectFrame:IsShown() then
        return
    end
    local unit = self:GetUnitByGUID(guid)
    local isGearReady = unit and GetInventoryItemLink(unit, 16); --insFix
    if guid and unit and isGearReady then
        self:InspectIsReady(guid, unit)
    end
end

function ATT:SavePositions()
    for k,anchor in ipairs(anchors) do
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

local customframes = {
    [3] = { ctype = "ShadowUFRaidGR", cname = "ShadowedUnitFrames" , cframe = "SUFHeaderraid1RGUnitButton%d",},
    [4] = { ctype = "ShadowedUF", cname = "ShadowedUnitFrames" , cframe = "SUFHeaderpartyUnitButton%d", },
    [5] = { ctype = "ShadowUFRaid", cname = "ShadowedUnitFrames" , cframe = "SUFHeaderraidUnitButton%d",},
    [6] = { ctype = "Grid2", cname = "Grid2" , cframe = "Grid2LayoutHeader1UnitButton%d",},
    [7] = { ctype = "Nug", cname = "Nug" , cframe = "NugRaid1RGUnitButton%d",},
    [8] = { ctype = "HealBot", cname = "HealBot" , cframe = "HealBot_Action_HealUnit%d",},
    [9] = { ctype = "InvenRaidFrames3", cname = "InvenRaidFrames3" , cframe = "InvenRaidFrame3Group0UnitButton%d", },
    [10] = { ctype = "Plexus", cname = "Plexus" , cframe = "PlexusLayoutHeader1UnitButton%d", },
    [11] = { ctype = "ZPerl", cname = "ZPerl" , cframe = "XPerl_party%d", },
    [12] = { ctype = "ZPerl_RaidGR", cname = "ZPerl" , cframe = "XPerl_Raid_Grp1RGUnitButton%d",},
    [13] = { ctype = "ElvUI", cname = "ElvUI" , cframe = "ElvUF_PartyGroup1UnitButton%d", },
    [14] = { ctype = "ElvUIRaidGR", cname = "ElvUI" , cframe = "ElvUF_RaidGroup1RGUnitButton%d",},
    [15] = { ctype = "VuhDo", cname = "VuhDo" , cframe = "Vd1H%d",},
    [16] = { ctype = "Tukui", cname = "Tukui" , cframe = "TukuiPartyUnitButton%d",},
    [17] = { ctype = "Duf", cname = "Duf" , cframe = "DUF_PartyFrame%d",},
    [18] = { ctype = "PitBull4", cname = "PitBull4" , cframe = "PitBull4_Groups_PartyUnitButton%d",},
    [19] = { ctype = "ShestakUI_DPS", cname = "ShestakUIDPS" , cframe = "oUF_PartyDPSUnitButton%d",},
    [20] = { ctype = "ShestakUI",cname = "ShestakUI" , cframe = "oUF_PartyUnitButton%d", },
    [21] = { ctype = "KkthnxUI", cname = "KkthnxUI" , cframe = "oUF_PartyUnitButton%d",},
    [22] = { ctype = "NDui", cname = "NDui" , cframe = "oUF_PartyUnitButton%d",},
    [23] = { ctype = "RUF", cname = "RUF" , cframe = "oUF_RUF_PartyUnitButton%d",},
    [24] = { ctype = "GwRaid", cname = "Gw" , cframe = "GwRaidGridDisplay%d",},
    [25] = { ctype = "Gw", cname = "Gw" , cframe = "GwCompactparty%d", },
    [26] = { ctype = "Lime_Party", cname = "Lime" , cframe = "LimeGroup0UnitButton%d",},
    [27] = { ctype = "Cell", cname = "Cell" , cframe = "CellPartyFrameMember%d",},
    [28] = { ctype = "CellRaid", cname = "Cell" , cframe = "CellRaidFrameMember%d",},
    [29] = { ctype = "Grid2_Group", cname = "Cell" , cframe = "Grid2LayoutHeader1RGUnitButton%d",},
    [30] = { ctype = "AshToAsh", cname = "AshToAsh" , cframe = "AshToAshUnit1RGUnit%d",},
    [31] = { ctype = "NDui-RaidGR", cname = "NDui" , cframe = "oUF_Raid1GRUnitButton%d",},
    [32] = { ctype = "AltzUI", cname = "AltzUI" , cframe = "Altz_PartyUnitButton%d",},
    [33] = { ctype = "AltzUI-Healer", cname = "AltzUI" , cframe = "Altz_HealerRaidUnitButton%d",},
    [34] = { ctype = "AltzUI-DPS", cname = "AltzUI" , cframe = "Altz_DpsRaidUnitButton%d",},
    [35] = { ctype = "ShestakUI_Heal", cname = "ShestakUI" , cframe = "oUF_RaidHeal1RGUnitButton%d",},
    [36] = { ctype = "GW2", cname = "GW2_UI" , cframe = "GwCompactPartyFrame%d",},
    [37] = { ctype = "Gw2_Raid", cname = "GW2_UI" , cframe = "GwCompactRaidFrame%d", },
    [38] = { ctype = "Gw2_Party", cname = "GW2_UI" , cframe = "GwPartyFrame%d", },
}  

function ATT:CheckBlizzFrames()
    local compact = C_CVar.GetCVarBool("useCompactPartyFrames")
    local UseCombinedGroups = CompactRaidFrameManager_GetSetting and CompactRaidFrameManager_GetSetting("KeepGroupsTogether")

    if isRaidGr() then
        if not UseCombinedGroups then
            frametype = "CompactRaidFrame%d"
        else
            frametype = "CompactRaidGroup1RGMember%d"
        end
    else
        if compact then
            if _G["CompactPartyFrameMember1"] and _G["CompactPartyFrameMember1"]:IsVisible() then
                frametype = "CompactPartyFrameMember%d"
            else
                if not UseCombinedGroups then
                    frametype = "CompactRaidFrame%d"
                else
                    frametype = "CompactRaidGroup1RGMember%d"
                end
            end
        else
            frametype = "PartyMemberFrame%d"
        end
    end
 
    return frametype
end

function ATT:FindFrames()
    hookedFrames = {}
    local frametype = nil

    if db.attach == 1 and ATT_DropDown1.values[7] then
        frametype = customframes[ATT_DropDown1.values[7]].cframe
    else
        if db.attach == 1 or db.attach == 2 then
            frametype = self:CheckBlizzFrames()
        elseif db.attach > 2 and customframes[db.attach] then
            frametype = customframes[db.attach].cframe
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
                local unit = _G[name] and ((string.find(name, "Vd1H") and _G[name].raidid) or (string.find(name, "XPerl") and _G[name].partyid) or (string.find(name, "Cell") and _G[name].unitid) or _G[name].unit)
                local frame = _G[name]
                if frame and unit and UnitIsPlayer(unit) and not frame:IsForbidden() and frame:IsShown() then
                    hookedFrames[UnitGUID(unit)] = frame
                end
            end
        end
    else
       if frametype == "CompactPartyFrameMember%d" then
            for i = 1, 5 do
                local name = "CompactPartyFrameMember" .. i
                local unit = _G[name] and ((string.find(name, "Vd1H") and _G[name].raidid) or (string.find(name, "XPerl") and _G[name].partyid) or (string.find(name, "Cell") and _G[name].unitid) or _G[name].unit)
                local frame = _G[name]
                if frame and unit and UnitIsPlayer(unit) and not frame:IsForbidden() and frame:IsShown() and not hookedFrames[UnitGUID(unit)] then
                    hookedFrames[UnitGUID(unit)] = frame
                end
            end

        elseif frametype == "PartyMemberFrame%d" then
            if _G["PlayerFrame"] and _G["PlayerFrame"]:IsShown() then hookedFrames[PlayerGUID] = _G["PlayerFrame"] end
            for i = 1, 4 do
                local name = "PartyMemberFrame" .. i
                local unit = _G[name] and _G[name].unit
                local frame = _G[name]
                if frame and unit and UnitIsPlayer(unit) and not frame:IsForbidden() and frame:IsShown() and not hookedFrames[UnitGUID(unit)] then
                    hookedFrames[UnitGUID(unit)] = frame
                end
            end
        else
            for i = 1, 40 do
                local name = format(frametype, i)
                local unit = _G[name] and ((string.find(name, "Vd1H") and _G[name].raidid) or (string.find(name, "XPerl") and _G[name].partyid) or (string.find(name, "Cell") and _G[name].unitid) or _G[name].unit)
                local frame = _G[name]
                if frame and unit and UnitIsPlayer(unit) and not frame:IsForbidden() and frame:IsShown() then
                    hookedFrames[UnitGUID(unit)] = frame
                end
            end
        end
    end
     if not hookedFrames[PlayerGUID] or (hookedFrames[PlayerGUID] and not hookedFrames[PlayerGUID]:IsVisible()) then hookedFrames[PlayerGUID] = _G["PlayerFrame"] end

   -- print(frametype)
end

function ATT:UpdatePositions()
    db.positions = db.positions or {}
    self:FindFrames()
    
    for k, anchor in ipairs(anchors) do
        anchors[k]:ClearAllPoints()
        local anchorUnit = (isRaidGr() and "raid" .. k) or ((k == 5 and "player") or (k ~= 5 and "party" .. k))
        local anchorGuid = UnitGUID(anchorUnit)
        local raidFrame = hookedFrames[anchorGuid]
       -- local raidFrame = hookedFrames[anchor.GUID]

        if anchor.GUID == PlayerGUID and db.selfAttach then raidFrame = nil end
        if raidFrame and db.attach and db.attach ~= 0 then
            if db.horizontal then
                anchors[k]:SetPoint(db.growLeft and "BOTTOMLEFT" or "BOTTOMRIGHT", raidFrame, db.growLeft and "BOTTOMRIGHT" or "BOTTOMLEFT", db.offsetX, db.offsetY)
            else
                anchors[k]:SetPoint(db.growLeft and "BOTTOMLEFT" or "BOTTOMRIGHT", raidFrame, db.growLeft and "TOPLEFT" or "TOPRIGHT", db.offsetX, db.offsetY)
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
        anchor.freeProcs = {}
        anchor.RemoveAnchor = function()
            anchor:Hide()
            for k, icon in ipairs(anchor.icons) do
                icon:ClearAllPoints();
                icon:Hide();
                icon.ability = nil;
                icon.abilityID = nil;
                icon.active = nil;
                icon.inUse = nil;
                icon.showing = nil;
                icon.seen = nil;
            end
        end
        anchor.StopAllIcons = function(flag)
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
        anchor:SetScript("OnMouseDown",function(self,button) if button == "LeftButton" and db.attach == 0 or (anchor.GUID == PlayerGUID and db.selfAttach) then self:StartMoving(); end end)
        anchor:SetScript("OnMouseUp",function(self,button) if button == "LeftButton" and db.attach == 0 or (anchor.GUID == PlayerGUID and db.selfAttach) then self:StopMovingOrSizing(); ATT:SavePositions() end end)

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
        if anchor.freeProcs and anchor.freeProcs[icon.abilityID] then return end
        local cTime = GetTime()
        if icon.raterecovery and not icon.excluded then
            rate = icon.raterecovery
            cTime = cTime * (1 - rate) + cTime * rate
            sentCD = sentCD * rate
            icon.cdrecovery = sentCD
        end
        icon.texture:SetVertexColor(1, 1, 1)

        if icon.maxcharges then
            local charges = tonumber(icon.chargesText:GetText():match("^[0-9]+$"))
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
        if icon.maxcharges then
            activeGUIDS[icon.GUID][icon.abilityID].chargeleft = tonumber(icon.chargesText:GetText():match("^[0-9]+$"))
        end
        activeGUIDS[icon.GUID][icon.abilityID].starttime = icon.starttime
        activeGUIDS[icon.GUID][icon.abilityID].cooldown = sentCD
        if db.hidden then ATT:ToggleDisplay(anchor, icon.GUID) end
        if icon.ability and icon.abilityID and anchor.class and nextcharge ~= 5 then
            if db.alertCD[anchor.class][icon.abilityID] then PlaySound(8959, "Master"); end
            if  db.alertCDtext[anchor.class][icon.abilityID] then
                local playername = select(6, GetPlayerInfoByGUID(icon.GUID))
                if playername then
                    UIErrorsFrame:AddMessage("|T" .. icon.texture:GetTexture() .. ":18|t |cffFF4500" .. icon.ability .. "|r  - used by ->>  |cffFF4500" .. playername .. "|r");
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
        if icon.maxcharges then icon.chargesText:SetText(icon.maxcharges) end
        if icon.inUse then
        activeGUIDS[icon.GUID] = activeGUIDS[icon.GUID] or {}
        activeGUIDS[icon.GUID][icon.abilityID] = activeGUIDS[icon.GUID][icon.abilityID] or {}
        activeGUIDS[icon.GUID][icon.abilityID].starttime = icon.starttime
        activeGUIDS[icon.GUID][icon.abilityID].cooldown = icon.cooldown
        end
        if db.hidden then ATT:ToggleDisplay(anchor, icon.GUID) end
    end

    icon.SetTimer = function(starttime, cooldown, rate, isRate)
        if anchor.freeProcs and anchor.freeProcs[icon.abilityID] then return end
        if icon.raterecovery and icon.inUse and not isRate then
            rate = icon.raterecovery
            starttime = icon.starttime - ((icon.starttime - starttime) * rate)
            cooldown = cooldown * rate
        end

        if icon.inUse then
            icon.texture:SetVertexColor(1, 1, 1)
            CooldownFrame_Set(cd, starttime, cooldown, true, false, rate)
            if icon.maxcharges then
                local chargesleft = activeGUIDS[icon.GUID] and activeGUIDS[icon.GUID][icon.abilityID] and activeGUIDS[icon.GUID][icon.abilityID].chargeleft
                icon.chargesText:SetText(chargesleft or icon.maxcharges)
                cd:SetHideCountdownNumbers(true)
                cd:SetDrawEdge(true)
                cd:SetDrawSwipe(false)
                if chargesleft and chargesleft == 0 then
                    cd:SetDrawSwipe(true)
                    cd:SetHideCountdownNumbers(false)
                end
            end
            icon.active = true
            icon.starttime = starttime

            activeGUIDS[icon.GUID] = activeGUIDS[icon.GUID] or {}
            activeGUIDS[icon.GUID][icon.abilityID] = activeGUIDS[icon.GUID][icon.abilityID] or {}
            activeGUIDS[icon.GUID][icon.abilityID].starttime = icon.starttime
            activeGUIDS[icon.GUID][icon.abilityID].cooldown = cooldown

            if db.hidden then ATT:ToggleDisplay(anchor, icon.GUID) end
        end
    end

    icon.SetOldTimer = function(starttime, cooldown, rate)
        if icon.raterecovery or not icon.inUse then
            return
        end
        icon.texture:SetVertexColor(1, 1, 1)
        CooldownFrame_Set(cd, starttime, cooldown, true, false, rate)
        if icon.maxcharges then
            local chargesleft = activeGUIDS[icon.GUID] and activeGUIDS[icon.GUID][icon.abilityID] and activeGUIDS[icon.GUID][icon.abilityID].chargeleft
            icon.chargesText:SetText(chargesleft or icon.maxcharges)
            cd:SetHideCountdownNumbers(true)
            cd:SetDrawEdge(true)
            cd:SetDrawSwipe(false)
            if chargesleft and chargesleft == 0 then
                cd:SetDrawSwipe(true)
                cd:SetHideCountdownNumbers(false)
            end
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
                    GameTooltip:AddLine("Spell ID: " .. icon.abilityID.. " - iCD: "..icon.cooldown.." sec", 1, 1, 1)
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
        if icon.active and icon.cooldown then
            if activeGUIDS[icon.GUID] and activeGUIDS[icon.GUID][icon.abilityID] then
                activeGUIDS[icon.GUID][icon.abilityID] = nil
            end
            icon.active = nil
        end
        if icon.maxcharges and icon.inUse then
            local chargesText = tonumber(icon.chargesText:GetText():match("^[0-9]+$"))
            local charges = math.min(icon.maxcharges, chargesText + 1)
            icon.chargesText:SetText(charges)
            if charges < icon.maxcharges then
                icon.Start(icon.cooldown, 5)
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
            Normal = icon.NewItemTexture
        })
    end

    return icon
end

-- adds a new icon
function ATT:AddIcon(icons,anchor)
	local newicon = CreateIcon(anchor)
	icons[#icons+1] = newicon
	return newicon
end

function ATT:ApplyIconTextureBorder(icon)
    icon:SetAlpha(db.iconAlpha or 1)
    icon.texture:SetVertexColor(1,1,1)
    if db.showIconBorders then
		icon.texture:SetTexCoord(0,1,0,1)
	else
	    icon.texture:SetTexCoord(0.07,0.9,0.07,0.90)
	end
end

function ATT:BaseGlyphs(guid,unit,classID)
end
                              

function ATT:UpdateAnchorGUID(unit, guid, newInspect)
    local _,class, classID = UnitClass(unit)
    local anchor = self:CheckValidAnchor(unit)
    anchor.GUID = guid
    anchor.class = class
    local icons = anchor.icons
    local numIcons = 1
    local _, _, raceID = UnitRace(unit)

    -- Talent Check / Inspect
    if class and newInspect then
        dbInspect[guid] = {}
        dbInspect[guid]["isInspected"] = false
        local isInspect = (guid ~= PlayerGUID) and true  --here
        local talentspec = GetActiveTalentGroup(isInspect)
        for i = 1, 4 do
            for j = 1, 31 do
                local Name, _, _, _, rank = GetTalentInfo(i,j,isInspect,false,talentspec)
                if Name and rank then dbInspect[guid][Name] = rank end
            end
        end

        for k = 13, 14 do
            local itemLink = GetInventoryItemLink(unit, k)
            local itemID = itemLink and GetItemInfoInstant(itemLink)
            if itemLink then
                if ATTdbs.PvPTrinkets[itemID] then itemID = ATTdbs.PvPTrinkets[itemID] end
                dbInspect[guid][itemID] = 1
            end
        end

        if isInspect then
            for gspellID, gTable in pairs(dbModifGlyph) do
                if db.isEnabledSpell[class][gspellID] and classID == gTable.class then dbInspect[guid][gspellID] = 1 end
            end
        else
            for i = 1, 6 do
                local enabled,_, glyphSpellID = GetGlyphSocketInfo(i)
                if enabled and glyphSpellID then dbInspect[guid][glyphSpellID] = 1 end
            end
        end
        dbInspect[guid]["isInspected"] = true
    end

    dbInspect[guid] = dbInspect[guid] or {}
    dbInspect[guid]["isInspected"] = dbInspect[guid]["isInspected"] or false
    local item1 = dbInspect[guid]["item1"] or 0
    local item2 = dbInspect[guid]["item2"] or 0
    local dbInspected = dbInspect[guid]

    if dbInspected and dbInspect[guid]["isInspected"] and class and dbImport[class] and type(db.isEnabledSpell[class] == "table") then
        -- Trinkets
        for abilityIndex, abilityTable in pairs(self:MergeTable(class, "trinkets")) do
            local name, id, trinketId, cooldown, texture = abilityTable.name, abilityTable.ability, abilityTable.trinketId, abilityTable.cooldown, abilityTable.texture

            if name and id and trinketId and db.isEnabledSpell[class][trinketId] and dbInspected[trinketId] then
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
                if activeGUIDS[icon.GUID][ability] then
                    icon.SetOldTimer(activeGUIDS[icon.GUID][ability].starttime, activeGUIDS[icon.GUID][ability].cooldown)
                else
                    icon.Stop()
                end
                numIcons = numIcons + 1
            end
        end

        -- Racials
        for abilityIndex, abilityTable in pairs(self:MergeTable(class, "racials")) do
            local name, id, cooldown, maxcharges, race, cdshare = abilityTable.name, abilityTable.ability, abilityTable.cooldown, abilityTable.maxcharges, abilityTable.race, abilityTable.cdshare

            if name and id and db.isEnabledSpell[class][id] and raceID == race then
                local icon = icons[numIcons] or self:AddIcon(icons,anchor)
                icon.texture:SetTexture(self:FindAbilityIcon(ability, id))
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
                    icon.SetOldTimer(activeGUIDS[icon.GUID][id].starttime, activeGUIDS[icon.GUID][id].cooldown)
                else
                    icon.Stop()
                end
                numIcons = numIcons + 1
            end
        end

        -- Abilities:
        if not ATTAnchor.isBgMode then
            for abilityIndex, abilityTable in pairs(self:MergeTable(class, "abilities", true)) do
                local name, id, cooldown, charges, custom = abilityTable.name, abilityTable.ability, abilityTable.cooldown, abilityTable.charges, abilityTable.custom
                local modif = dbModif[id]
                local glyphModif = dbModifGlyph[id]

                if name and spellrace and (raceID ~= spellrace[1] and raceID ~= spellrace[2] and raceID ~= spellrace[3]) then name = nil end
                if name and (custom and not db.isEnabledSpell[class][id.."custom"]) or (not custom and not db.isEnabledSpell[class][id]) or dbInspected[name] == 0  then name = nil end

                if name and modif and dbInspected[modif.mod] and dbInspected[modif.mod] > 0 then
                    local newcd = dbInspected[modif.mod]
                    local cd = cooldown
                    cooldown = cooldown - (modif.rank[newcd] or modif.rank[1])
                end

                if name and glyphModif and dbInspected[glyphModif.mod] then cooldown = cooldown - glyphModif.cd end

                if name and id then
                    local icon = icons[numIcons] or self:AddIcon(icons,anchor)
                    icon.texture:SetTexture(self:FindAbilityIcon(name, id))
                    icon.GUID = anchor.GUID
                    icon.ability = name
                    icon.abilityID = id
                    icon.cooldown = cooldown
                    icon.maxcharges = nil
                    icon.chargesText:SetText()
                    icon.inUse = true
                    icon.race = nil

                    ATT:ApplyIconTextureBorder(icon)
                    activeGUIDS[icon.GUID] = activeGUIDS[icon.GUID] or {}
                    if activeGUIDS[icon.GUID][id] then
                        icon.SetOldTimer(activeGUIDS[icon.GUID][id].starttime, activeGUIDS[icon.GUID][id].cooldown)
                    else
                        icon.Stop()
                    end
                    numIcons = numIcons + 1
                end
            end
        end
    end

    -- clean leftover icons
    for j=numIcons,#icons do
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

function ATT:ToggleDisplay(anchor, unitGuid, isUpdate)
    local icons = anchor.icons
    local lastActiveIndex = 0
    local oldActiveIndex = 0
    local count = 0
   -- if isUpdate then anchor.SyncCDs = {} end
    
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
            icon.showing = (activeGUIDS[icon.GUID] and activeGUIDS[icon.GUID][icon.abilityID] and icon.active) or (not db.hidden)
        end
        icon:ClearAllPoints()
        icon:Hide()
    end

    for k, icon in pairs(icons) do
        if icon and icon.abilityID and icon.showing and icon.inUse and unitGuid and unitGuid == anchor.GUID and icon.GUID == unitGuid then
            if db.reverseIcons then
                if db.IconRows > 1 then
                    if lastActiveIndex == 0 then
                        icon:SetPoint(db.growLeft and "TOPLEFT" or "TOPRIGHT", anchor, db.growLeft and "BOTTOMRIGHT" or "BOTTOMLEFT")
                    elseif (count >= db.IconRows and count % db.IconRows == 0) then
                        icon:SetPoint(db.growLeft and "LEFT" or "RIGHT", icons[oldActiveIndex], db.growLeft and "RIGHT" or "LEFT", db.growLeft and 1 * db.iconOffsetY or -1 * db.iconOffsetY, 0)
                    else
                        icon:SetPoint(db.growLeft and "TOP" or "TOP", icons[lastActiveIndex], db.growLeft and "BOTTOM" or "BOTTOM", 0, -1 * db.iconOffsetX)
                    end
                else
                    if lastActiveIndex == 0 then
                        icon:SetPoint(db.growLeft and "TOPLEFT" or "TOPRIGHT", anchor, db.growLeft and "BOTTOMRIGHT" or "BOTTOMLEFT", db.growLeft and 1 * db.iconOffsetY or -1 * db.iconOffsetY, 0)
                    else
                        icon:SetPoint(db.growLeft and "LEFT" or "RIGHT", icons[lastActiveIndex], db.growLeft and "RIGHT" or "LEFT", db.growLeft and 1 * db.iconOffsetY or -1 * db.iconOffsetY, 0)
                    end
                end
            else
                if db.IconRows > 1 then
                    if lastActiveIndex == 0 then
                        icon:SetPoint(db.growLeft and "TOPRIGHT" or "TOPLEFT", anchor, db.growLeft and "BOTTOMLEFT" or "BOTTOMRIGHT")
                    elseif (count >= db.IconRows and count % db.IconRows == 0) then
                        icon:SetPoint(db.growLeft and "RIGHT" or "LEFT", icons[oldActiveIndex], db.growLeft and "LEFT" or "RIGHT", db.growLeft and -1 * db.iconOffsetY or db.iconOffsetY, 0)
                    else
                        icon:SetPoint(db.growLeft and "TOP" or "TOP", icons[lastActiveIndex], db.growLeft and "BOTTOM" or "BOTTOM", 0, -1 * db.iconOffsetX)
                    end
                else
                    if lastActiveIndex == 0 then
                        icon:SetPoint(db.growLeft and "TOPRIGHT" or "TOPLEFT", anchor, db.growLeft and "BOTTOMLEFT" or "BOTTOMRIGHT", db.growLeft and -1 * db.iconOffsetY or db.iconOffsetY, 0)
                    else
                        icon:SetPoint(db.growLeft and "RIGHT" or "LEFT", icons[lastActiveIndex], db.growLeft and "LEFT" or "RIGHT", db.growLeft and -1 * db.iconOffsetY or db.iconOffsetY, 0)
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
    for k, anchor in ipairs(anchors) do
        local unit = (isRaidGr() and "raid" .. k) or ((k == 5 and "player") or (k ~= 5 and "party" .. k))
        local guid = UnitGUID(unit)
        if guid and (guid ~= PlayerGUID) and ((isRaidGr() and (k <= db.raidGroupSize)) or (not isRaidGr() and (k <= 5))) then -- here  db.raidGroupSize == 0
            if db.lock then anchor:Hide() else anchor:Show() end
            self:UpdateAnchorGUID(unit, guid)
        elseif guid and (guid == PlayerGUID) and db.showSelf then
            if db.lock then anchor:Hide() else anchor:Show() end
            self:UpdateAnchorGUID(unit, guid)
        else
           -- anchor:Hide()
            anchor:RemoveAnchor()
        end
    end
end

function ATT:ApplyAnchorSettings()
    local _, instanceType = IsInInstance()
    ATTAnchor.isBgMode = db.bgMode and (instanceType == "pvp")
    ATTIcons:SetScale(db.scale or 1)

    if (db.isEnabledVisibility.arena and instanceType == "arena") or (db.isEnabledVisibility.dungeons and instanceType == "party") or (db.isEnabledVisibility.scenarios and instanceType == "scenario") or
        (db.isEnabledVisibility.inraid and instanceType == "raid") or (db.isEnabledVisibility.inbg and instanceType == "pvp") or (db.isEnabledVisibility.outside and instanceType == "none") then
        ATTIcons:Show();
        self:Show();
    --    if db.cooldownsSync then ATTSyncFrame:Show() else ATTSyncFrame:Hide() end -- sync
    else
        ATTIcons:Hide();
       -- ATTSyncFrame:Hide()
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

function ATT:UNIT_AURA(unit)
    if not ATTIcons:IsShown() then return end
    local anchor = self:CheckValidAnchor(unit)
    if not anchor then return end
    -- Feign Death workaround fix
    local guid = UnitGUID(unit)
    local fd = select(1, AuraUtil.FindAuraByName(GetSpellInfo(5384), unit))
    if not fd and isFWW["fd"..guid] == guid then C_Timer.After(0.12, function() self:StartCooldown(GetSpellInfo(5384), unit, 5384); isFWW["fd"..guid] = nil; end ) end
end

function ATT:PLAYER_ENTERING_WORLD()
        C_Timer.After(1, function() self:InspectPlayer() self:StopAllGlow() self:UpdateGroup() 
        local inInstance, instanceType = IsInInstance()
        if instanceType == "arena" then self:StopAllIcons(); end
        end)
end

function ATT:GROUP_ROSTER_UPDATE()
    if (not ATTIcons:IsShown()) then return end
     C_Timer.After(0.05, function() self:ApplyAnchorSettings() self:EnqueueInspect(true) end)
end

function ATT:UpdateGroup()
   self:ApplyAnchorSettings(); self:EnqueueInspect()
end

function ATT:GROUP_JOINED()
    self:ApplyAnchorSettings()
end

function ATT:FindAbilityByName(abilities, name)
	if abilities then
		for i, v in pairs(abilities) do
			if v and v.ability and v.ability == name then return v, i end
		end
	end
end

function ATT:CheckValidUnit(unit)
    local validUnits = (isRaidGr() and validRaidUnits) or validPartyUnits
	for k,v in pairs(validUnits) do
		if unit and k == unit and ((isRaidGr() and ((validRaidUnits[k] <= db.raidGroupSize) or (db.showSelf and UnitGUID(unit) == PlayerGUID))) or not isRaidGr()) then
			return k
		end 			
	end
end

function ATT:StartCooldown(spellName, unit, SentID, flag)
    local anchor = self:CheckValidAnchor(unit)
    if not unit or not anchor then return end
    local guid = anchor.GUID

    if not anchor or not guid or not dbInspect[guid] then return end
    self:TrackCooldown(anchor, spellName, SentID, unit, guid, flag)

    -- trinket racial fix
    if spellName == PvPTrinketName then
        local _, _, race = UnitRace(unit)
        local cooldown
        for k,icon in ipairs(anchor.icons) do
            if icon.inUse and icon.ability and icon.race == race and icon.excluded then
                if (icon.ability == EveryMan) then cooldown = 120
                else
                    duration = icon.starttime + icon.cooldown - GetTime()
                    if duration and duration < 30  then cooldown = 45 end
                end
                if cooldown and icon.inUse and icon.race == race and icon.racecdshare then
                    local starttime = GetTime() - icon.cooldown + cooldown
                    icon.SetTimer(starttime,icon.cooldown, rate) end
            end
        end
    end

    if ATTdbs.dbRacialShare[SentID] then
        local cooldown
        for k,icon in ipairs(anchor.icons) do
            if icon.inUse and icon.ability == PvPTrinketName then
                if (spellName == EveryMan) then cooldown = 120
                else
                    duration = icon.starttime + icon.cooldown - GetTime()
                    if duration and duration < 30 then cooldown = 45 end
                end
                if cooldown and icon.inUse then
                    local starttime = GetTime() - icon.cooldown + cooldown
                    icon.SetTimer(starttime,icon.cooldown, rate) end
            end
        end
    end
end

function ATT:TrackCooldown(anchor, ability, SentID, unit, guid, flag)
    for k,icon in ipairs(anchor.icons) do
        if icon.cooldown and icon.inUse then
            -- Direct cooldown
            if icon.ability and icon.ability == ability then  --here 
             if flag then icon.cd:Clear() icon.texture:SetVertexColor(0.4, 0.4, 0.4) break end
                icon.seen = true
                icon.Start(icon.cooldown, 1, rate)
            end  
        end
        -- Cooldown Share
        if ShareCD[ability] and ShareCD[ability][icon.abilityID] and icon.inUse then icon.Start(icon.cooldown, 1, rate) end  

        -- Cooldown reset
        if cooldownResetters[ability] then
            if type(cooldownResetters[ability]) == "table" and (cooldownResetters[ability][icon.abilityID] or cooldownResetters[ability]["ALL"]) and not icon.excluded and icon.inUse then
               icon.Stop() end
        end
    end
end

function ATT:COMBAT_LOG_EVENT_UNFILTERED()
    if not ATTIcons:IsShown() then return end
    local _, event, _, sourceGUID, sourceName, _, _, destGUID, destName, _, _, SentID, spellName, _, auraType,_,powerType,_,_,_,crit = CombatLogGetCurrentEventInfo()
    local unit = self:GetUnitByGUID(sourceGUID)
    local unitDest = self:GetUnitByGUID(destGUID)

    if unit and (event == "SPELL_CAST_SUCCESS") then
        self:StartCooldown(spellName, unit, SentID, dbAuraRemoved[spellName] and "AuraOn")
    end 
    if unit and (event == "SPELL_AURA_APPLIED") and (auraType == "BUFF") then
        if dbAuraApplied[spellName] then self:StartCooldown(spellName, unit, SentID, dbAuraApplied and "AuraOn") end
    end
    if unit and (event == "SPELL_AURA_REMOVED") and (auraType == "BUFF") then
         if dbAuraRemoved[spellName] then self:StartCooldown(spellName, unit, SentID) end
    end
    
    if db.glow and unit and ((event == "SPELL_AURA_APPLIED") or (event == "SPELL_AURA_REMOVED")) and (auraType == "BUFF") then
        local dest = (unitDest and unitDest) or unit
        C_Timer.After(0.02, function() self:IconGlow(unit, spellName, event,dest ,SentID) end)
    end 
end

function ATT:IconGlow(unit, spellName, event, unitDest, SentID)
    if not unit then return end
    local anchor = self:CheckValidAnchor(unit)
    if not anchor then return end
    for k,icon in ipairs(anchor.icons) do
        if event == "SPELL_AURA_APPLIED" and spellName == icon.ability and not icon.race and icon.inUse then
            local duration = select(5,AuraUtil.FindAuraByName(spellName, unitDest))
            if  icon.showing and icon.cooldown and duration and duration > 1 and icon.cooldown > duration then
                icon.glowDuration = duration
                icon.cd:SetHideCountdownNumbers(true);
               -- icon.cd:SetSwipeColor(0,0,0,0.4)
                icon.cd:SetDrawSwipe(false)
                LGlows.ShowOverlayGlow2(icon)
                C_Timer.After(duration+0.5, function() local isActive = select(5,AuraUtil.FindAuraByName(spellName, unitDest)); if not isActive then LGlows.HideOverlayGlow2(icon) end end)
            end
        end
        if event == "SPELL_AURA_REMOVED" and spellName == icon.ability and icon.glowDuration then
            LGlows.HideOverlayGlow2(icon)
        end
    end
end

function ATT:UNIT_SPELLCAST_SUCCEEDED(unit,_,SentID)
    local unit = ATT:CheckValidUnit(unit)
    if not unit then return end
    local guid = UnitGUID(unit)
    -- Feign Death workaround fix
    if SentID == 20594 and unit and guid then self:StartCooldown(GetSpellInfo(20594), unit, SentID) end
    if SentID == 42292 and unit and guid then self:StartCooldown(GetSpellInfo(42292), unit, SentID, dbAuraRemoved[spellName] and "AuraOn") end
    if SentID == 5384 and unit and guid then self:StartCooldown(GetSpellInfo(5384), unit, 5384, "AuraOn"); isFWW["fd"..guid] = guid end
end


-- resets all icons
function ATT:StopAllIcons(flag)
    for k,anchor in ipairs(anchors) do
        anchor:StopAllIcons(flag)
    end
    wipe(activeGUIDS)
end

function ATT:StopAllGlow()
    for k,anchor in ipairs(anchors) do
        anchor:StopAllGlow()
    end
end

function ATT:SendUpdate()
    if self.useCrossAddonCommunication and IsInGroup() then
        C_ChatInfo.SendAddonMessage(ChatPrefix, "Version|"..ATTversion, (IsInGroup(LE_PARTY_CATEGORY_INSTANCE) and "INSTANCE_CHAT") or (IsInRaid(LE_PARTY_CATEGORY_HOME) and "RAID") or "PARTY")
    end
end

function ATT:CHAT_MSG_ADDON(prefix, message, dist, sender)
    if prefix == ChatPrefix then
        local vfound, vversion = match(message,"(.+)|(%A+)")
        if vfound == "Version" then
            if vversion then vversion = tonumber(string.sub(vversion,1,4)) end
            if vversion and vversion > ATTversion and not ATTnewversion then ATTnewversion = message
                print("There is a new version of |cff33ff99Ability Team Tracker|r: |cffFF4500v"..vversion.." WotLK|r You are currently using: |cffFF4500v"..ATTversion.." WotLK|r")
            end
            --[[ debug update note
            if vversion and GetUnitName("player") == "Ize" and sender ~= "Ize-Sylvanas" then print("Sender: |cffFF4500"..sender.."|r Version: |cffFF4500"..vversion.."|r") end --]]
        end
     end
end

function ATT:PLAYER_EQUIPMENT_CHANGED(item)
    if InCombatLockdown() then return end
    if not item then return end
    if (item ~= 13 and item ~= 14) then return end
    self:InspectPlayer()
end

function ATT:CVAR_UPDATE(cvar)
  if cvar == "USE_RAID_STYLE_PARTY_FRAMES" then
    C_Timer.After(0.1, function() self:ApplyAnchorSettings(); end)
  end  
end

function ATT:CHAT_MSG_BG_SYSTEM_NEUTRAL(text)
    if not ATTIcons:IsShown() or not text then return end
    local _, instanceType = IsInInstance()
    if (instanceType == "arena" or instanceType == "pvp") and (string.find(text, "!")) then
         self:InspectPlayer() self:UpdateGroup()
    end
end

function ATT:LEARNED_SPELL_IN_TAB()
     self:InspectPlayer()
end

function ATT:CheckProfile()
    selectedDB.ProfileSelected = selectedDB.ProfileSelected or "DEFAULT"
    
    if selectedDB.autoselectBG then
        local _, instanceType = IsInInstance()
        if instanceType == "pvp" and selectedDB.ProfileSelected ~= "BG" then
            selectedDB.lastProfile =  selectedDB.ProfileSelected
            selectedDB.ProfileSelected = "BG"
        elseif selectedDB.ProfileSelected == "BG" and selectedDB.lastProfile then
            selectedDB.ProfileSelected = selectedDB.lastProfile
            selectedDB.lastProfile = nil
        end
   end

    db = selectedDB[selectedDB.ProfileSelected]
    db.classSelected = "WARRIOR";
    db.category = "abilities";
end

function ATT:LoadProfiles()
    local profiles = {"DEFAULT", "TANK", "HEALER", "DAMAGER", "BG", "Extra1", "Extra2"}
    local oldDB = ATTDB --getting old main profiles
    oldDB.Profiles = nil --remove old profiles

    if ATTDB["isEnabledSpell"] then ATTDB = {} end --cleaning DB
    if ATTCharDB["isEnabledSpell"] then ATTCharDB = {} end --cleaning Char DB

    if ATTDB.profilebychar then selectedDB = ATTCharDB else selectedDB = ATTDB end
    local dbProfiles = {}

    for i = 1 , #profiles do
        if not selectedDB[profiles[i]] then
            dbProfiles[profiles[i]] = {}
            for a,b in pairs(profiles[i] == "DEFAULT" and oldDB["isEnabledSpell"] and oldDB or ATTdbs.Defaults) do
                if type(b) ~= "table" then dbProfiles[profiles[i]][a] = b else
                    dbProfiles[profiles[i]][a] = {}
                    for c,d in pairs(b) do if type(d) ~= "table" then dbProfiles[profiles[i]][a][c] = d else
                        dbProfiles[profiles[i]][a][c] = {}
                        for e,f in pairs(d) do dbProfiles[profiles[i]][a][c][e] = f  end
                    end
                    end
                end
            end
            selectedDB[profiles[i]] = dbProfiles[profiles[i]]
        end
    end
end

function ATT:ACTIVE_TALENT_GROUP_CHANGED()
     self:InspectPlayer()
end

function ATT:PLAYER_LEAVING_WORLD()
       ATTInspectFrame:Hide()
     --  ATTSyncFrame:Hide()
end

local function ATT_OnLoad(self)
    self:RegisterEvent("PLAYER_ENTERING_WORLD")
    self:RegisterEvent("PLAYER_LEAVING_WORLD")
    self:RegisterEvent("PLAYER_EQUIPMENT_CHANGED")
    self:RegisterEvent("GROUP_ROSTER_UPDATE")
    self:RegisterEvent("GROUP_JOINED")
    self:RegisterEvent("UNIT_AURA")
    self:RegisterEvent("UNIT_SPELLCAST_SUCCEEDED")
    self:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
    self:RegisterEvent("CVAR_UPDATE", "USE_RAID_STYLE_PARTY_FRAMES")
    self:RegisterEvent("CHAT_MSG_BG_SYSTEM_NEUTRAL")
    self:RegisterEvent("LEARNED_SPELL_IN_TAB")
    self:RegisterEvent("ACTIVE_TALENT_GROUP_CHANGED")
    
    if C_ChatInfo.RegisterAddonMessagePrefix(ChatPrefix) then self.useCrossAddonCommunication = true end
    if self.useCrossAddonCommunication then self:RegisterEvent("CHAT_MSG_ADDON") end
    self:SetScript("OnEvent",function(self,event, ...) if self[event] then self[event](self, ...) end end);
     ATTDB = ATTDB or {}
     ATTCharDB = ATTCharDB or {}
     
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
    
    self:LoadProfiles() 
    self:CheckProfile()
    self:CreateAnchors()
    self:CreateOptions()
    self:UpdateScrollBar()
    self:FindFrameType();
    ATTInspectFrame:Hide()
    ATTInspectFrame:SetScript("OnUpdate", InspectTimer)
    ATTInspectFrame:SetScript("OnShow", function(self) ATT:RegisterEvent("INSPECT_READY") end)
    ATTInspectFrame:SetScript("OnHide", function(self) ATT:UnregisterEvent("INSPECT_READY") ClearInspectPlayer() elapsedTime = 0 insTimes = 0 end)
    --ATTSyncFrame:Hide()
    --ATTSyncFrame:SetScript("OnUpdate", SendPlayerSyncCooldowns)
    --ATTSyncFrame:SetScript("OnShow", function(self) TimeSinceLastUpdate = 0 end)
    --ATTSyncFrame:SetScript("OnHide", function(self) TimeSinceLastUpdate = 0 end)
    C_Timer.After(2.6, function() ATT:FindFrameType(); self:ApplyAnchorSettings(); end)

    if IsAddOnLoaded("Blizzard_CompactRaidFrames") then 
     hooksecurefunc("CompactUnitFrameProfiles_ActivateRaidProfile", function()  ATT:ApplyAnchorSettings(); end) 
     hooksecurefunc("CompactRaidFrameManager_UpdateShown", function()  ATT:ApplyAnchorSettings(); end) 
    end

    print("|cff33ff99A|rbility |cff33ff99T|ream |cff33ff99T|rracker by |cff33ff99Izy|r |cffFF4500(v"..ATTversion..") WotLK|r. Type |cffFF4500/att|r to open options.")
end

function ATT:FindAbilityIcon(ability, id)
    if not id then return end
	local icon
	if id then
		icon = GetSpellTexture(id)
	else
		 _, _, icon = GetSpellInfo(ability)
	end
	return icon
end

function ATT:MergeTable(class, category, isAnchor)
    local newdbSpells = {}

    if not db.alertCDtext then db.alertCDtext = {} end --updade fix
    if type(db.isEnabledSpell[class]) ~= "table" then db.isEnabledSpell[class] = {} end
    if type(db.customSpells[class]) ~= "table" then db.customSpells[class] = {} end
    if type(db.iconOrder[class]) ~= "table" then db.iconOrder[class] = {} end
    if type(db.alertCD[class]) ~= "table" then db.alertCD[class] = {} end
    if type(db.alertCDtext[class]) ~= "table" then db.alertCDtext[class] = {} end

    local dbSpells = dbImport[class]
    local dbiconOrder = db.iconOrder[class]
    local dbcustomSpells = db.customSpells[class]

    if category == "abilities" then
        if dbSpells then
            for _, v in pairs(dbSpells) do
                if not v.name then v.name = GetSpellInfo(v.ability) end--if not v.name
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
                v.order = dbiconOrder[v.ability] or 20
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
                if (a.isPvPtrinket and not b.isPvPtrinket) then
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
        
    elseif category == "glyphs" then
        if ATTdbs.dbModifGlyph then
            for glyphId, v in pairs(ATTdbs.dbModifGlyph) do
              if not v.name then
                v.name = GetSpellInfo(v.mod)
                v.ability = v.mod
                v.texture = "Interface\\Icons\\INV_Inscription_MajorGlyph00"
              end  
                local gClass = select(2, GetClassInfo(v.class))
                if v.name and gClass == class then table.insert(newdbSpells, v) end
            end
        end        
    end

    return newdbSpells
end

-- Panel
-------------------------------------------------------------

local function CreatePopUpFrame(panel, name)
    local popUpFrame = CreateFrame("Frame", name, panel, "TooltipBorderedFrameTemplate");
    popUpFrame:SetFrameLevel(popUpFrame:GetFrameLevel() + 3)
    popUpFrame:EnableMouse(true);
    popUpFrame:SetBackdropColor(0,0,0);
    popUpFrame:SetSize(280, 265);
    popUpFrame:SetPoint('LEFT', 180, -100);

    local title = popUpFrame:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge")
    title:SetJustifyH("CENTER")
    title:SetText(name)
    title:SetPoint("TOP", popUpFrame, "TOP", 0, -10)

    local closebtn = CreateFrame("button", "closebtn", popUpFrame, "UIPanelButtonTemplate")
    closebtn:SetHeight(24)
    closebtn:SetWidth(60)
    closebtn:SetPoint("BOTTOM", popUpFrame, "BOTTOM", 0, 5)
    closebtn:SetText("Close")
    closebtn:SetScript("OnClick", function(self) self:GetParent():Hide() panel.popUP = false end)

    popUpFrame:Hide()
    return popUpFrame
end
 
local function CreateListButton(parent, index, panel)
    local button = CreateFrame("CheckButton", parent:GetName() .. index, parent, "InterfaceOptionsCheckButtonTemplate")
    button.orderbtn = CreateFrame("button", parent:GetName() .. index.."orderbtn", button, "UIPanelScrollUpButtonTemplate")
    button.Text:SetFont(GameFontNormal:GetFont(), 12)
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
        if classTag then
            if option == "spell" then
                if not db.isEnabledSpell[classTag] then db.isEnabledSpell[classTag] = {} end
                db.isEnabledSpell[classTag][id] = value
            elseif option == "alertCDtext" then
                if not db.alertCDtext[classTag] then db.alertCDtext[classTag] = {} end
                db.alertCDtext[classTag][id] = value
            elseif option == "alertCD" then
                if not db.alertCD[classTag] then db.alertCD[classTag] = {} end
                db.alertCD[classTag][id] = value
            end
        end
    end
end

function ATT:FindFrameType()
    local hookFrames = {0, "Do Not Attach", 1, "Auto attach UI", 2, "Blizzard UI"}
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
    local title, subText = panel:MakeTitleTextAndSubText("Ability Team Tracker")

    local attach = panel:MakeDropDown('name', ' Attach to raid frames', 'description', 'Select hook mode behaviour', 'values', {0, "Do Not Attach", 1, "Auto attach UI", 2, "Blizzard UI"}, 'default', 0, 'getFunc', function()
        return db.attach or 0
    end, 'getCurrent', function()
        return db.attach or 0
    end, 'setFunc', function(value)
        db.attach = tonumber(value);
        self:ApplyAnchorSettings();
    end)
    attach:SetPoint("TOPLEFT", panel, "TOPLEFT", 5, -65)

    local selfAttach = panel:MakeToggle(
        'name', 'Disable Self Attach',
        'description', 'Disable self frame hooking',
        'default', false,
        'getFunc', function() return db.selfAttach end,
        'getCurrent', function() return db.selfAttach end,
        'setFunc', function(value) db.selfAttach = value; self:ApplyAnchorSettings() end)
    selfAttach:SetPoint("TOPLEFT",attach,"TOPLEFT",15,-42)

    local reverseIcons = panel:MakeToggle('name', 'Reverse Icons', 'description', 'Reverse icons growing direction', 'default', false, 'getFunc', function()
        return db.reverseIcons
    end, 'getCurrent', function()
        return db.reverseIcons
    end, 'setFunc', function(value)
        db.reverseIcons = value;
        self:ApplyAnchorSettings()
    end)
    reverseIcons:SetPoint("TOP", panel, "TOP", -110, -45)

    local growLeft = panel:MakeToggle('name', 'Anchor Left', 'description', 'Hook anchors left of the frames', 'default', false, 'getFunc', function()
        return db.growLeft
    end, 'getCurrent', function()
        return db.growLeft
    end, 'setFunc', function(value)
        db.growLeft = value;
        self:ApplyAnchorSettings();
    end)
    growLeft:SetPoint("TOP", reverseIcons, "BOTTOM", 0, -5)

    local growDown = panel:MakeToggle('name', 'Anchor Down', 'description', 'Hook anchors under the frames', 'default', false, 'getFunc', function()
        return db.horizontal
    end, 'getCurrent', function()
        return db.horizontal
    end, 'setFunc', function(value)
        db.horizontal = value;
        self:ApplyAnchorSettings();
    end)
    growDown:SetPoint("TOP", growLeft, "BOTTOM", 0, -5)

    local scale = panel:MakeSlider('name', 'Scale', 'description', 'Adjust the scale of icons', 'minText', 'Min', 'maxText', 'Max', 'minValue', 1, 'maxValue', 200, 'step', 1, 'default', 100, 'current', db.scale and tonumber(db.scale * 100) or 1, 'getCurrent',
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
    scale:SetPoint("TOPLEFT", attach, "TOPLEFT", 20, -90)

    local iconRows = panel:MakeSlider('name', 'Icon Rows', 'description', 'Adjust number of icons per row', 'minText', '1', 'maxText', '5', 'minValue', 1, 'maxValue', 5, 'step', 1, 'default', 2, 'current', tonumber(db.IconRows) or 1, 'getCurrent',
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
    
   local iconAlpha = panel:MakeSlider('name', 'Icon Alpha', 'description', 'Adjust icons transparency.', 'minText', 'Hide', 'maxText', 'Max', 'minValue', 0, 'maxValue', 10, 'step', 1, 'default', 0, 'current', db.iconAlpha and tonumber(db.iconAlpha * 10) or 10,
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
    
     local raidGroupSize = panel:MakeSlider('name', 'Raid Anchors', 'description', 'Adjust number of anchors to show when in a raid group\n', 'minText', 'Hide', 'maxText', '40', 'minValue', 0, 'maxValue', 40, 'step', 1, 'default', 0, 'current', tonumber(db.raidGroupSize) or 5,
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

    local offsetX = panel:MakeSlider('name', 'Anchor Offset X', 'description', 'Adjust anchor position X', 'minText', 'Left', 'maxText', 'Right', 'minValue', -200, 'maxValue', 200, 'step', 1, 'default', 0, 'current', tonumber(db.offsetX) or 0,
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
    offsetX:SetPoint("TOPLEFT", attach, "TOPLEFT", 20, -150)

    local offsetY = panel:MakeSlider('name', 'Anchor Offset Y', 'description', 'Adjust anchor position Y', 'minText', 'Down', 'maxText', 'Up', 'minValue', -200, 'maxValue', 200, 'step', 1, 'default', 0, 'current', tonumber(db.offsetY) or 0,
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

    local iconOffsetX = panel:MakeSlider('name', 'Row Spacing', 'description', 'Adjust space between rows', 'minText', '0', 'maxText', '100', 'minValue', 0, 'maxValue', 100, 'step', 1, 'default', 5, 'current', tonumber(db.iconOffsetX) or 5,
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

    local iconOffsetY = panel:MakeSlider('name', 'Icon Spacing', 'description', 'Adjust space between icons', 'minText', '0', 'maxText', '100', 'minValue', 0, 'maxValue', 100, 'step', 1, 'default', 2, 'current', tonumber(db.iconOffsetY) or 2,
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

    local lock = panel:MakeToggle('name', 'Hide Anchors', 'description', 'Hide/Lock anchors', 'default', false, 'getFunc', function()
        return db.lock
    end, 'getCurrent', function()
        return db.lock
    end, 'setFunc', function(value)
        db.lock = value;
        self:ApplyAnchorSettings()
    end)
    lock:SetPoint("TOP", panel, "TOP", 30, -45)

    local glow = panel:MakeToggle('name', 'Glow Icons', 'description', 'Show Glow animation when\nimportant abilites are active', 'default', true, 'getFunc', function()
        return db.glow
    end, 'getCurrent', function()
        return db.glow
    end, 'setFunc', function(value)
        db.glow = value;
        self:UpdateIcons();
    end)
    glow:SetPoint("TOP", lock, "BOTTOM", 0, -5)

    local showIconBorders = panel:MakeToggle('name', 'Draw Borders', 'description', 'Draw borders around icons', 'default', true, 'getFunc', function()
        return db.showIconBorders
    end, 'getCurrent', function()
        return db.showIconBorders
    end, 'setFunc', function(value)
        db.showIconBorders = value;
        self:UpdateIcons();
    end)
    showIconBorders:SetPoint("TOP", glow, "BOTTOM", 0, -5)

    local showSelf = panel:MakeToggle('name', 'Show Self', 'description', 'Show your own icons', 'default', false, 'getFunc', function()
        return db.showSelf
    end, 'getCurrent', function()
        return db.showSelf
    end, 'setFunc', function(value)
        db.showSelf = value;
        self:InspectPlayer()
        self:UpdateIcons()
        self:UpdatePositions() --here
    end)
    showSelf:SetPoint("LEFT", lock, "RIGHT", 130, 0)

    local showTooltip = panel:MakeToggle('name', 'Show Tooltip', 'description', 'Show tooltips over icons', 'default', false, 'getFunc', function()
        return db.showTooltip
    end, 'getCurrent', function()
        return db.showTooltip
    end, 'setFunc', function(value)
        db.showTooltip = value;
        self:UpdateIcons();
    end)
    showTooltip:SetPoint("TOP", showSelf, "BOTTOM", 0, -5)

    local hidden = panel:MakeToggle('name', 'Hidden Mode', 'description', 'Show icons only after\nthey are on cooldown', 'default', false, 'getFunc', function()
        return db.hidden
    end, 'getCurrent', function()
        return db.hidden
    end, 'setFunc', function(value)
        db.hidden = value;
        self:UpdateIcons();
    end)
    hidden:SetPoint("TOP", showTooltip, "BOTTOM", 0, -5)

    local cpanel = CreateFrame("Frame", "ATTFrame", panel, BackdropTemplateMixin and "BackdropTemplate, TooltipBorderedFrameTemplate")
    cpanel:SetSize(615, 240)
    cpanel:SetPoint("TOP", panel, "TOP", 0, -265)

    local info = CreateFrame("Frame", "ATTFrame", panel, BackdropTemplateMixin and "BackdropTemplate")
    info:SetPoint("TOPLEFT", panel, "TOPLEFT", 25, -520)
    info:SetSize(50, 50)
    
    local version = info:CreateFontString(nil, "ARTWORK", "GameFontDisable")
    version:SetText("|cffffff00ATT|r |cff33ff99v" .. ATTversion .. " WotLK|r by |cffffff00izy|r")
    version:SetPoint("TOPLEFT", info, "TOPLEFT", 0, 0)

    local contact = info:CreateFontString(nil, "ARTWORK", "GameFontDisable")
    contact:SetText("[ Support: curseforge.com/wow/addons/att ]")
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

    local extraoptions = CreatePopUpFrame(panel, "Extra Options")

    local bgMode = panel:MakeToggle('name', 'Battleground Mode', 'description', 'Show only trinkets and racials\ninside Battlegrounds', 'extra', extraoptions, 'default', false, 'getFunc', function()
        return db.bgMode
    end, 'getCurrent', function()
        return db.bgMode
    end, 'setFunc', function(value)
        db.bgMode = value;
        ATT:ApplyAnchorSettings();
    end)
    bgMode:SetPoint("TOP", extraoptions, "TOP", -110, -40)

    local cooldownsSync = panel:MakeToggle('name', 'Sync Cooldowns (NOT YET ACTIVE)', 'description', 'Sync cooldowns with your party and raid members -|cffFF4500 BETA|r ', 'extra', extraoptions, 'default', true, 'getFunc', function()
        return db.cooldownsSync
    end, 'getCurrent', function()
        return db.cooldownsSync
    end, 'setFunc', function(value)
        db.cooldownsSync = value;
        ATT:ApplyAnchorSettings();
    end)
    cooldownsSync:SetPoint("TOP", bgMode, "TOP", 0, -30)

    local syncInfo = extraoptions:CreateFontString(nil, nil, "GameFontNormalSmall")
    syncInfo:SetWidth(250)
    syncInfo:SetText("- Sync only works for players with ATT v10+ WotLK and Sync Cooldowns option enabled\n- Sync will accurately update all cooldowns for spells with a base cooldown higher than 15 seconds\n- Sync is mostly usefull for spells that can not be accurately tracked using internal logic")
    syncInfo:SetJustifyH("LEFT")
    syncInfo:SetPoint("TOPLEFT", cooldownsSync, "TOPLEFT", 0, -35)

    local showExtraOptions = panel:MakeButton('name', 'Options', 'description', 'Open Options Tab', 'newsize', false, 'func', function()
        if panel.popUP then panel.popUP:Hide() panel.popUP = false else extraoptions:Show() panel.popUP = extraoptions end
    end)
    showExtraOptions:SetPoint("TOPLEFT", panel, "TOPLEFT", 325, -520)
end

function ATT:CreateVisibilityFrame()
    local panel = self.panel
    local visibility = CreatePopUpFrame(panel, "Visibility")

    local arena = panel:MakeToggle('name', 'Show in Arenas', 'description', '', 'extra', visibility, 'default', false, 'getFunc', function()
        return db.isEnabledVisibility["arena"]
    end, 'getCurrent', function()
        return db.isEnabledVisibility["arena"]
    end, 'setFunc', function(value)
        db.isEnabledVisibility["arena"] = value;
        ATT:ApplyAnchorSettings();
    end)
    arena:SetPoint("TOP", visibility, "TOP", -110, -40)

    local dungeons = panel:MakeToggle('name', 'Show in Dungeons', 'description', '', 'extra', visibility, 'default', false, 'getFunc', function()
        return db.isEnabledVisibility["dungeons"]
    end, 'getCurrent', function()
        return db.isEnabledVisibility["dungeons"]
    end, 'setFunc', function(value)
        db.isEnabledVisibility["dungeons"] = value;
        ATT:ApplyAnchorSettings();
    end)
    dungeons:SetPoint("TOP", arena, "TOP", 0, -30)

    local scenarios = panel:MakeToggle('name', 'Show in Scenarios', 'description', '', 'extra', visibility, 'default', false, 'getFunc', function()
        return db.isEnabledVisibility["scenarios"]
    end, 'getCurrent', function()
        return db.isEnabledVisibility["scenarios"]
    end, 'setFunc', function(value)
        db.isEnabledVisibility["scenarios"] = value;
        ATT:ApplyAnchorSettings();
    end)
    scenarios:SetPoint("TOP", dungeons, "TOP", 0, -30)

    local inbg = panel:MakeToggle('name', 'Show in Battlegrounds', 'description', '', 'extra', visibility, 'default', false, 'getFunc', function()
        return db.isEnabledVisibility["inbg"]
    end, 'getCurrent', function()
        return db.isEnabledVisibility["inbg"]
    end, 'setFunc', function(value)
        db.isEnabledVisibility["inbg"] = value;
        ATT:ApplyAnchorSettings();
    end)
    inbg:SetPoint("TOP", scenarios, "TOP", 0, -30)

    local inraid = panel:MakeToggle('name', 'Show in Raid Instances', 'description', '', 'extra', visibility, 'default', false, 'getFunc', function()
        return db.isEnabledVisibility["inraid"]
    end, 'getCurrent', function()
        return db.isEnabledVisibility["inraid"]
    end, 'setFunc', function(value)
        db.isEnabledVisibility["inraid"] = value;
        ATT:ApplyAnchorSettings();
    end)
    inraid:SetPoint("TOP", inbg, "TOP", 0, -30)

    local outside = panel:MakeToggle('name', 'Show in Open World', 'description', '', 'extra', visibility, 'default', false, 'getFunc', function()
        return db.isEnabledVisibility["outside"]
    end, 'getCurrent', function()
        return db.isEnabledVisibility["outside"]
    end, 'setFunc', function(value)
        db.isEnabledVisibility["outside"] = value;
        ATT:ApplyAnchorSettings();
    end)
    outside:SetPoint("TOP", inraid, "TOP", 0, -30)

    local showVisibility = panel:MakeButton('name', 'Visibility', 'description', 'Open Visibility Tab', 'newsize', false, 'func', function()
        if panel.popUP then panel.popUP:Hide() panel.popUP = false else visibility:Show() panel.popUP = visibility end
    end)
    showVisibility:SetPoint("TOPLEFT", panel, "TOPLEFT", 425, -520)
end

function ATT:CreateProfilesFrame()
    local panel = self.panel

    local profiles = CreatePopUpFrame(panel, "Profiles")
    
    local selectProfile = panel:MakeDropDown('name', ' Select Profile', 'description', 'Select Profile', 'extra', profiles, 'values',
        {"DEFAULT", "Main", "TANK", "Tank", "HEALER", "Healer", "DAMAGER", "DPS", "BG", "BattleGround", "Extra1", "Extra Profie 1", "Extra2", "Extra Profie 2"}, 'default', "DEFAULT", 'getFunc', function()
            return selectedDB.ProfileSelected
        end, 'getCurrent', function()
            return selectedDB.ProfileSelected
        end, 'setFunc', function(value)
            local _, instanceType = IsInInstance()
            if selectedDB.autoselectBG and instanceType == "pvp" then print("You can not change profiles in battleground if |cffFF4500'Auto Switch BG Profile'|r is enabled") panel:UpdateSettings() return end
            selectedDB.ProfileSelected = value
            self:CheckProfile();
            self:UpdateScrollBar();
            self:ApplyAnchorSettings();
            panel:UpdateSettings()
        end) -- here
    selectProfile:SetPoint("TOP", profiles, "TOP", -40, -60)
    
    local copyProfile = panel:MakeButton('name', 'Import', 'description', 'Copy settings from the Main profile to the current profile', 'extra', profiles, 'newsize', 2, 'func', function()
      if selectedDB.ProfileSelected ~= "DEFAULT" then StaticPopup_Show("ATT_COPYPROFILES") else print("You have to select a different profile - |cffFF4500Main|r profile can NOT copy itsef.") end
    end)
    copyProfile:SetPoint("LEFT", selectProfile, "RIGHT", -5, 3)
    
     StaticPopupDialogs["ATT_COPYPROFILES"] = {
        text = "Are you sure you want to copy the settings from the Main profile to this profile?\n\nAll the settings on the current profile will be overwritten.",
        button1 = "Yes",
        button2 = "No",
        OnAccept = function()
           if selectedDB.ProfileSelected ~= "DEFAULT" then
            selectedDB[selectedDB.ProfileSelected] = selectedDB["DEFAULT"]
            self:CheckProfile();
            self:UpdateScrollBar();
            self:ApplyAnchorSettings();
            panel:UpdateSettings()
            print("Current profile has been |cffFF4500updated|r")
           end
        end,
        exclusive = true,
        whileDead = true,
        hideOnEscape = true,
        preferredIndex = 3,
    }
    
    local autoselectBG = panel:MakeToggle('name', 'Auto Switch BG Profile', 'description', 'Auto Switch to BattleGround profile inside battlegrounds\n', 'extra', profiles, 'default', false, 'getFunc', function()
        return selectedDB.autoselectBG
    end, 'setFunc', function(value)
        selectedDB.autoselectBG = value;
        ATT:CheckProfile();
        ATT:UpdateScrollBar();
        ATT:ApplyAnchorSettings();
        panel:UpdateSettings()
    end)
    autoselectBG:SetPoint("TOP", profiles, "TOP", -95, -100)
    
    local profilebychar = panel:MakeToggle('name', 'Use Character DB', 'description', 'Your profiles will be stored per Charcater and not per Account\n', 'extra', profiles, 'default', false, 'getFunc', function()
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

    local reset = panel:MakeButton('name', 'Reset Addon', 'description', 'Reset all settings and profiles', 'extra', profiles,'newsize', false, 'func', function()
        StaticPopup_Show("ATT_RESET")
    end)
    reset:SetPoint("TOP", profilebychar, "TOP", 95, -60)
    
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

   profiles:SetScript("OnHide", function(self) StaticPopup_Hide("ATT_RESET") StaticPopup_Hide("ATT_COPYPROFILES") StaticPopup_Hide("ATT_CHARDB") end)

    local showProfiles = panel:MakeButton('name', 'Profiles', 'description', 'Open Profiles tab', 'newsize', false, 'func', function()
       if panel.popUP then panel.popUP:Hide() panel.popUP = false else profiles:Show() panel.popUP = profiles end
    end)
    showProfiles:SetPoint("TOPLEFT", panel, "TOPLEFT", 525, -520)
end

function ATT:CreateOrderFrame()
    local panel = self.panel
    local popUpFrame = CreateFrame("Frame", "Order", panel, "TooltipBorderedFrameTemplate"); 
    self.OrderPopUpFrame = popUpFrame
  
    popUpFrame:SetFrameLevel(popUpFrame:GetFrameLevel() + 3)
    popUpFrame:EnableMouse(true);
    popUpFrame:SetBackdropColor(0,0,0);
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
    
    local order = panel:MakeSlider('name', 'Icon Order', 'extra', popUpFrame, 'description', 'Adjust icon order priority', 'minText', '1', 'maxText', '20', 'minValue', 1, 'maxValue', 20, 'step', 1, 'default', 1, 'current',
        tonumber(db.iconOrder[db.classSelected][popUpFrame.id]) or 20, 'setFunc', function(value)
            if value ~= db.iconOrder[db.classSelected][popUpFrame.id] then
                db.iconOrder[db.classSelected][popUpFrame.id] = tonumber(string.format("%.1d", value))
            end
        end, 'currentTextFunc', function(value)
            return tonumber(string.format("%.1d", value))
        end) 
    order:SetPoint("TOP", popUpFrame, "TOP", 0, -60)
    
    local notorder = popUpFrame:CreateFontString(nil, "ARTWORK", "GameFontNormal")
    notorder:SetText("Changing order of trinkets or racials\n is not supported")
    notorder:SetPoint("TOP", popUpFrame, "TOP", 0, -60)

    local alertCD = panel:MakeToggle('name', 'Sound alert', 'extra', popUpFrame, 'description', 'Play a sound when activated', 'default', false, 'getFunc', function()
        return db.alertCD[db.classSelected][popUpFrame.id]
         end, 
        'setFunc', function(value)
        if db.globalSelections and db.category ~= "abilities" then
            EnableGlobalSpell(popUpFrame.id, value, "alertCD") --global selections
        else
            db.alertCD[db.classSelected][popUpFrame.id] = value;
        end
    end)
    alertCD:SetPoint("TOP", order, "BOTTOM", -90, -30)

    local alertCDtext = panel:MakeToggle('name', 'Text alert', 'extra', popUpFrame, 'description', 'Show a text alert when activated', 'default', false, 'getFunc', function()
        return db.alertCDtext[db.classSelected][popUpFrame.id]
    end, 'setFunc', function(value)
        if db.globalSelections and db.category ~= "abilities" then
            EnableGlobalSpell(popUpFrame.id, value, "alertCDtext") --global selections
        else
            db.alertCDtext[db.classSelected][popUpFrame.id] = value;
        end
    end)
    alertCDtext:SetPoint("LEFT", alertCD, "RIGHT", 100, 0)
    
    popUpFrame:SetScript("OnShow", function(self)
              alertCD:SetChecked(not not db.alertCD[db.classSelected][popUpFrame.id])
              alertCDtext:SetChecked(not not db.alertCDtext[db.classSelected][popUpFrame.id])
          if  (db.category == "abilities") then   
              order:SetValue(tonumber(db.iconOrder[db.classSelected][popUpFrame.id]) or 20)
              order.currentText:SetText(tonumber(db.iconOrder[db.classSelected][popUpFrame.id]) or 20)
              order:Show(); notorder:Hide();
           else
              order:Hide(); notorder:Show();
           end 
    end)
end

function ATT:UpdateScrollBar()
    local panel, scrollframe, btns = self.panel, self.scrollframe, self.btns
    local OrderPopUpFrame = self.OrderPopUpFrame
    local line = 1

    for abilityIndex, abilityTable in pairs(self:MergeTable(db.classSelected, db.category)) do
        local name, id, cooldown, maxcharges, custom, texture, trinketId, isPvPtrinket = abilityTable.name, abilityTable.ability, abilityTable.cooldown, abilityTable.maxcharges, abilityTable.custom, abilityTable.texture, abilityTable.trinketId, abilityTable.isPvPtrinket
        local button = btns[line]
        local abilitytexture = texture or self:FindAbilityIcon(name, id) or ""
    
        if line == 1 then
            button:SetPoint("TOPLEFT", scrollframe, "TOPLEFT", 2, 0)
        end

        if custom then
            button.Text:SetText("|T" .. abilitytexture .. ":20|t |cff808080" .. name .. "|r")
            button:SetChecked(db.isEnabledSpell[db.classSelected][id .. "custom"])
            button:SetScript("OnClick", function(self)
                db.isEnabledSpell[db.classSelected][id .. "custom"] = (button:GetChecked() == true and true) or false;
                ATT:UpdateIcons();
            end)
        else
            if isPvPtrinket then
                button.Text:SetText("|T" .. abilitytexture .. ":20|t |cffFF4500" .. name.. "|r")
            else
                button.Text:SetText("|T" .. abilitytexture .. ":20|t " .. name)
            end
            button:SetChecked(db.isEnabledSpell[db.classSelected][trinketId and trinketId or id])
            button:SetScript("OnClick", function(self)
                if db.globalSelections and db.category ~= "abilities" and db.category ~= "glyphs" then
                     EnableGlobalSpell(trinketId and trinketId or id, (button:GetChecked() == true and true) or false, "spell") --global selections
                else
                    db.isEnabledSpell[db.classSelected][trinketId and trinketId or id] = (button:GetChecked() == true and button:GetChecked()) or false;
                end
                ATT:UpdateIcons();
            end)
        end
        button.Text:SetSize(160,22)
        button.Text:SetJustifyH("LEFT")
        button:SetHitRectInsets(0, -160, 0, 0)
      
        button:SetScript('OnEnter', function()
          local tooltip = trinketId and Item:CreateFromItemID(trinketId) or Spell:CreateFromSpellID(id)
          if trinketId then
            tooltip:ContinueOnItemLoad(function()
            GameTooltip:ClearLines();
            GameTooltip:SetOwner(button.Text, "ANCHOR_TOP")
            if isPvPtrinket then GameTooltip:SetSpellByID(id) GameTooltip:AddLine("|cffFF4500PvP|r - Spell ID:" .. id, 1, 1, 1) else GameTooltip:SetItemByID(trinketId) GameTooltip:AddLine("Spell ID: " .. id, 1, 1, 1) end
            GameTooltip:SetPadding(16, 0)
            GameTooltip:Show()
          end)
          else
          tooltip:ContinueOnSpellLoad(function()
            GameTooltip:ClearLines();
            GameTooltip:SetOwner(button.Text, "ANCHOR_TOP")
            GameTooltip:SetSpellByID(id)
            if custom then
                GameTooltip:AddLine("Spell ID: " .. id .. " - Cooldown: " .. cooldown, 1, 1, 1)
            else               
                if db.category == "glyphs" then 
                GameTooltip:AddLine("Glyph ID: " .. id.."\n|cffFF4500Glyphs are permanently active|r", 1, 1, 1) 
                else
                GameTooltip:AddLine("Spell ID: " .. id, 1, 1, 1)
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
        orderbtn:SetPoint("LEFT", button, "RIGHT", 160, 0)
        orderbtn:SetText("Order")
        orderbtn:SetScript("OnClick", function(self) 
           if (db.category == "glyphs") then print(" there are no extra options for |cffFF4500glyphs|r.") return end          
           OrderPopUpFrame.title:SetText(("|T" .. abilitytexture .. ":20|t " .. name:sub(1, 30)))
           OrderPopUpFrame.id = id
           if panel.popUP then panel.popUP:Hide() panel.popUP = false else OrderPopUpFrame:Show() panel.popUP = OrderPopUpFrame end
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

    local scrollframe = CreateFrame("ScrollFrame", "ATTScrollFrame", panel, (BackdropTemplateMixin and "UIPanelScrollFrameTemplate, BackdropTemplate") or "UIPanelScrollFrameTemplate")
    local backdrop = {
        bgFile = [=[Interface\Buttons\WHITE8X8]=],
        insets = {
            left = 0,
            right = 0,
            top = -5,
            bottom = -5
        }
    }

    scrollframe:SetBackdrop(backdrop)
    scrollframe:SetBackdropColor(0, 0, 0, 0.50)
    local child = CreateFrame("Frame", "ATTScrollFrameChild", scrollframe)
    child:SetSize(1, 1)
    scrollframe:SetScrollChild(child)
    self.scrollframe = child
    scrollframe:SetSize(430, 210)
    scrollframe:SetPoint('LEFT', 10, -100)

    for i = 1, 50 do
        local button = CreateListButton(child, tostring(i), panel)
        if (i % 2 == 0) then button:SetPoint("LEFT", btns[#btns], "RIGHT", 190, 0) else button:SetPoint("TOPLEFT", btns[#btns-1], "BOTTOMLEFT", 0, 0) end
        btns[#btns + 1] = button
    end

    scrollframe:SetScript("OnShow", function(self) ATT:FindFrameType(); if panel.popUP then panel.popUP:Hide() panel.popUP = false end  child.dropdown.initialize() child.dropdown:SetValue(db.classSelected or "WARRIOR")  panel:UpdateSettings() end)

    local dropdown = panel:MakeDropDown(
        'name', ' Class',
        'description', 'Pick a class',
        'values', {
            "WARRIOR", "Warrior",
            "PALADIN", "Paladin",
            "PRIEST", "Priest",
            "SHAMAN", "Shaman",
            "DRUID", "Druid",
            "ROGUE", "Rogue",
            "MAGE", "Mage",
            "WARLOCK", "Warlock",
            "HUNTER", "Hunter",
            "DEATHKNIGHT", "Deathknight",
        },
        'default', 'WARRIOR',
        'getFunc', function() return db.classSelected end,
        'getCurrent', function() return db.classSelected end,
        'setFunc', function(value)
            db.classSelected = value; 
            db.category = "abilities" 
            child.dropdown2.initialize()
            child.dropdown2:SetValue(db.category)
        end)
    dropdown:SetPoint("TOPLEFT",scrollframe,"TOPRIGHT",10,-10)
    child.dropdown = dropdown

    local dropdown2 = panel:MakeDropDown('name', ' Category', 'description', 'Pick a category', 'values', {"abilities", "Abilities", "trinkets", "Trinkets", "racials", "Racials", "glyphs", "Glyphs"}, 'default', "abilities", 'current', "abilities", 'getCurrent', function()
        return db.category
    end, 'setFunc', function(value)
        if panel.popUP then panel.popUP:Hide() panel.popUP = false end
        db.category = value;
        ATT:UpdateScrollBar()
    end)
    dropdown2:SetPoint("TOPLEFT", dropdown, "BOTTOMLEFT", 0, -20)
    child.dropdown2 = dropdown2

     local globalSelections = panel:MakeToggle('name', 'Global Selections', 'description', 'When enabled next selections of trinkets or racials will be applied to all classes', 'default', true, 'getFunc', function()
        return db.globalSelections
    end, 'getCurrent', function()
        return db.globalSelections
    end, 'setFunc', function(value)
        db.globalSelections = value;
        self:UpdateIcons();
    end)
    globalSelections:SetPoint("TOPLEFT", dropdown2, "BOTTOMLEFT", 20, -5)
    
    local ideditbox = CreateEditBox("Ability ID", panel, 75, 30)
    ideditbox:SetPoint("TOPLEFT", dropdown2, "BOTTOMLEFT", 25, -50)

    local cdeditbox = CreateEditBox("CD (s)", panel, 35, 30)
    cdeditbox:SetPoint("LEFT", ideditbox, "RIGHT", 15, 0)

    local addbutton = panel:MakeButton(
        'name', 'Add',
        'description', "Add / Update ability",
        'newsize', 2,
        'func', function()
            local id = ideditbox:GetText():match("^[0-9]+$")
            local ability = GetSpellInfo(id)
            local iconfound = ATT:FindAbilityIcon(ability, id)
            local cdtext = cdeditbox:GetText():match("^[0-9]+$")

            if iconfound and cdtext and id and db.customSpells[db.classSelected] then
                local abilities = db.customSpells[db.classSelected]
                local order = db.iconOrder[db.classSelected]
                local _ability, _index = ATT:FindAbilityByName(db.customSpells[db.classSelected], tonumber(ideditbox:GetText()))
                if _ability and _index then
                    abilities[_index] = {ability = tonumber(id), cooldown = tonumber(cdtext), order = _ability.order , custom = true}
                    ideditbox:SetText("");
                    cdeditbox:SetText("");
                    print("Updated: |cffFF4500"..ability.."|r cd: |cffFF4500" ..tonumber(cdtext).."|r")
                else
                    table.insert(abilities, {ability = tonumber(id),cooldown = tonumber(cdtext), order = 1 , custom = true})
                    ideditbox:SetText("");
                    cdeditbox:SetText("");
                    print("Added: |cffFF4500"..ability.."|r cd: |cffFF4500" ..tonumber(cdtext).."|r")
                end
                ATT:UpdateScrollBar();
                ATT:UpdateIcons()
            else
                print("Invalid/blank:|cffFF4500 Ability ID or Cooldown|r")
            end
        end)
    addbutton:SetPoint("TOPLEFT", ideditbox, "BOTTOMLEFT", -5, -5)

    local removebutton = panel:MakeButton(
        'name', 'Remove',
        'description', 'Remove ability',
        'newsize', 2,
        'func', function()
            local _ability, _index = ATT:FindAbilityByName(db.customSpells[db.classSelected], tonumber(ideditbox:GetText()))
            if _ability and _index then table.remove(db.customSpells[db.classSelected], _index)
                local ability = GetSpellInfo(tonumber(ideditbox:GetText()))
                print("Removed ability |cffFF4500" ..ability.. "|r id: |cffFF4500" ..ideditbox:GetText().."|r")
            ideditbox:SetText("");
            cdeditbox:SetText("");
            ATT:UpdateScrollBar();
            ATT:UpdateIcons()
            else
             print("Invalid/blank:|cffFF4500 Ability ID|r")
            end
        end)
    removebutton:SetPoint("LEFT", addbutton, "RIGHT", 5, 0)

end

ATT:RegisterEvent("ADDON_LOADED")
ATT:SetScript("OnEvent",ATT_OnLoad)