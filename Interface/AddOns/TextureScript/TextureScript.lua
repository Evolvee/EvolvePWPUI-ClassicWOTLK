--EVOLVE PWP UI

local string_split = string.split
local CombatLogGetCurrentEventInfo = CombatLogGetCurrentEventInfo
local UnitGUID, UnitIsPlayer, UnitIsConnected, UnitClass, UnitClassification = UnitGUID, UnitIsPlayer, UnitIsConnected, UnitClass, UnitClassification
local UnitIsEnemy, UnitBuff, UnitName = UnitIsEnemy, UnitBuff, UnitName
local IsActiveBattlefieldArena, GetBattlefieldTeamInfo = IsActiveBattlefieldArena, GetBattlefieldTeamInfo
local SetCVar, GetCVar = SetCVar, GetCVar
local pairs = pairs
local ipairs = ipairs
local tostring = tostring
local select = select
local tonumber = tonumber
local string_format = string.format
local _G = _G
local hooksecurefunc = hooksecurefunc
local FauxScrollFrame_GetOffset = FauxScrollFrame_GetOffset
local GetGuildRosterInfo = GetGuildRosterInfo
local GuildListScrollFrame = GuildListScrollFrame
local GUILDMEMBERS_TO_DISPLAY = GUILDMEMBERS_TO_DISPLAY
local RAID_CLASS_COLORS = RAID_CLASS_COLORS
local mmin, mmax = math.min, math.max
local mabs = math.abs
local floor, mceil = math.floor, math.ceil
local strfind = string.find
local GetFramerate = GetFramerate
local UnitExists, UnitIsFriend = UnitExists, UnitIsFriend
local UnitPowerType = UnitPowerType
local IsInInstance, PlaySound = IsInInstance, PlaySound

--dark theme
local frame2 = CreateFrame("Frame")
frame2:RegisterEvent("ADDON_LOADED")
frame2:SetScript("OnEvent", function(self, _, addon)
    for _, v in pairs({
        PlayerFrameTexture,
        TargetFrameTextureFrameTexture,
        TargetFrameToTTextureFrameTexture,
        FocusFrameToTTextureFrameTexture,
        FocusFrameTextureFrameTexture,
        PetFrameTexture,
        PartyMemberFrame1Texture,
        PartyMemberFrame2Texture,
        PartyMemberFrame3Texture,
        PartyMemberFrame4Texture,
        SlidingActionBarTexture0,
        SlidingActionBarTexture1,
        MainMenuBarLeftEndCap,
        MainMenuBarRightEndCap,
        PartyMemberFrame1PetFrameTexture,
        PartyMemberFrame2PetFrameTexture,
        PartyMemberFrame3PetFrameTexture,
        PartyMemberFrame4PetFrameTexture,
        BonusActionBarTexture0,
        BonusActionBarTexture1,
        TargetofTargetTexture,
        TargetofFocusTexture,
        BonusActionBarFrameTexture0,
        BonusActionBarFrameTexture1,
        BonusActionBarFrameTexture2,
        BonusActionBarFrameTexture3,
        BonusActionBarFrameTexture4,
        MainMenuBarTexture0,
        MainMenuBarTexture1,
        MainMenuBarTexture2,
        MainMenuBarTexture3,
        MainMenuMaxLevelBar0,
        MainMenuMaxLevelBar1,
        MainMenuMaxLevelBar2,
        MainMenuMaxLevelBar3,
        MainMenuBarTextureExtender, -- classic cancer
        MinimapBorder,
        CastingBarFrameBorder,
        MiniMapBattlefieldBorder,
        FocusFrameSpellBarBorder,
        CastingBarBorder,
        TargetFrameSpellBarBorder,
        MiniMapTrackingButtonBorder,
        MiniMapLFGFrameBorder,
        MainMenuXPBarTexture0,
        MainMenuXPBarTexture1,
        MainMenuXPBarTexture2,
        MainMenuXPBarTexture3,
        ReputationWatchBar.StatusBar.XPBarTexture0,
        ReputationWatchBar.StatusBar.XPBarTexture1,
        ReputationWatchBar.StatusBar.XPBarTexture2,
        ReputationWatchBar.StatusBar.XPBarTexture3,
        ReputationXPBarTexture0,
        ReputationXPBarTexture1,
        ReputationXPBarTexture2,
        ReputationXPBarTexture3,
        MainMenuXPBarTextureMid,
        MiniMapBattlefieldBorder,
        MiniMapMailBorder,
        MinimapBorderTop }) do
        v:SetVertexColor(0, 0, 0)
    end

    if addon == "Blizzard_TimeManager" then
        for _, v in pairs({ select(2, TimeManagerClockButton:GetRegions()) }) do
            v:SetVertexColor(1, 1, 1)
        end
    end

    local a, b, c, d, e, f, _, _, _, _, _, l = WorldStateScoreFrame:GetRegions()
    for _, v in pairs({ a, b, c, d, e, f, l }) do
        v:SetVertexColor(0.15, 0.15, 0.15)
    end

    self:UnregisterEvent("ADDON_LOADED")
    self:SetScript("OnEvent", nil)
end)

-- CVars

local cvars = {
    ShowClassColorInFriendlyNameplate = "1",
    ShowClassColorInNameplate = "1",
    nameplateMaxDistance = "41",
    nameplateGlobalScale = "1.12",
    enableFloatingCombatText = "1",
    threatWarning = "0",
    predictedHealth = "1",
    Sound_EnableDSPEffects = "0",
    countdownForCooldowns = "1",
    nameplateShowFriendlyNPCs = "0",
    nameplateShowFriendlyMinions = "0",
    nameplateShowFriendlyPets = "0",
    nameplateShowFriendlyTotems = "0",
    showPartyPets = "0",
    -- these are only due to the retarded changes they made in the ICC clAASic Patch
    UnitNameFriendlySpecialNPCName = "0",
    UnitNameHostleNPC = "0",
    UnitNameInteractiveNPC = "0"
}

local function CustomCvar()
    for cvar, value in pairs(cvars) do
        local current = tostring(GetCVar(cvar))
        if current ~= value then
            SetCVar(cvar, value)
        end
    end
end

-- adding class colours to guild tab
local function ColorGuildTabs()
    local _, guildIndex, class, color
    local guildOffset = FauxScrollFrame_GetOffset(GuildListScrollFrame)
    for i = 1, GUILDMEMBERS_TO_DISPLAY do
        guildIndex = guildOffset + i
        _, _, _, _, _, _, _, _, _, _, class = GetGuildRosterInfo(guildIndex)
        if not class then
            break
        end
        color = RAID_CLASS_COLORS[class]
        _G["GuildFrameButton" .. i .. "Class"]:SetTextColor(color.r, color.g, color.b)
    end
end

-- Create PartyMemberFrame StatusText
for i = 1, 4 do
    local pFrame = _G["PartyMemberFrame" .. i]

    local healthText = pFrame.healthbar:CreateFontString(nil, "OVERLAY", "GameFontWhite")
    healthText:SetFont("Fonts/FRIZQT__.TTF", 15, "OUTLINE")
    healthText:SetPoint("CENTER")
    healthText:Show()

    local manaText = pFrame.manabar:CreateFontString(nil, "OVERLAY", "GameFontWhite")
    manaText:SetFont("Fonts/FRIZQT__.TTF", 9, "OUTLINE")
    manaText:SetPoint("CENTER")
    manaText:Show()

    pFrame.healthbar.fontString = healthText
    pFrame.manabar.fontString = manaText
end

hooksecurefunc("PartyMemberFrame_UpdateMemberHealth", function(self)
    local healthbar = self.healthbar
    local manabar = self.manabar
    local hp = healthbar.finalValue or healthbar:GetValue()
    local mana = manabar.finalValue or manabar:GetValue()
    local powertype = UnitPowerType(self.unit)
    local prefix = self:GetName()

    local _, class = UnitClass(self.unit)
    local c = RAID_CLASS_COLORS[class]
    if c then
        _G[prefix .. "HealthBar"]:SetStatusBarColor(c.r, c.g, c.b)
    end

    if hp ~= healthbar.lastTextValue then
        healthbar.lastTextValue = hp
        healthbar.fontString:SetText(healthbar.lastTextValue)
    end

    if powertype ~= 0 then
        manabar.fontString:SetText("")
        manabar.lastTextValue = -1
    elseif mana ~= manabar.lastTextValue then
        manabar.lastTextValue = mana
        manabar.fontString:SetText(manabar.lastTextValue)
    end

    if ( (self.unitHPPercent > 0) and (self.unitHPPercent <= 0.2) ) then
        self.portrait:SetVertexColor(1, 1, 1, 1)
    end
end)

hooksecurefunc("PartyMemberFrame_UpdateMember", function(self)
    local prefix = self:GetName();
    _G[prefix .. "Name"]:Hide();
end)

-- Hidden Party Frame Colour-Statuses (debuffs)
hooksecurefunc(PartyMemberFrame1Status, "Show", PartyMemberFrame1Status.Hide)
hooksecurefunc(PartyMemberFrame2Status, "Show", PartyMemberFrame2Status.Hide)
hooksecurefunc(PartyMemberFrame3Status, "Show", PartyMemberFrame3Status.Hide)
hooksecurefunc(PartyMemberFrame4Status, "Show", PartyMemberFrame4Status.Hide)

local sounds = {
    569772, -- sound/spells/fizzle/fizzleholya.ogg
    569773, -- sound/spells/fizzle/fizzlefirea.ogg
    569774, -- sound/spells/fizzle/fizzlenaturea.ogg
    569775, -- sound/spells/fizzle/fizzlefrosta.ogg
    569776, -- sound/spells/fizzle/fizzleshadowa.ogg
    567407, -- sound/interface/uchatscrollbutton.ogg annoying clicking sound when you press a spell on action bar
    598127, -- DalaranArena_WaterIncoming
    565772, -- DalaranSewer_ArenaWaterFall_Closed
    569506, -- DalaranSewer_ArenaWaterFall_Close
    598178, -- Orgrimmar_Arena_PillarWarning
    545431, -- sound/creature/brann/ur_brann_dalaran01.ogg (dalaran cancer)
    559130, -- sound/creature/rhonin/ur_rhonin_event01.ogg
    559131, -- sound/creature/rhonin/ur_rhonin_event02.ogg
    559126, -- sound/creature/rhonin/ur_rhonin_event03.ogg
    559128, -- sound/creature/rhonin/ur_rhonin_event04.ogg
    559133, -- sound/creature/rhonin/ur_rhonin_event05.ogg
    559129, -- sound/creature/rhonin/ur_rhonin_event06.ogg
    559132, -- sound/creature/rhonin/ur_rhonin_event07.ogg
    559127, -- sound/creature/rhonin/ur_rhonin_event08.ogg
    538978, -- Greenslime
    538976, -- Greenslime
    1229, -- crab sounds (Blizzard is too dogshit to fix this themselves, as usual)
    1230,
    1228,
    1227,
    1226,
    1225,
    567231, --RiverA
    567250,
    567272,
    567251,
    567253,
    567266,
    567230, -- RiverB
    567271,
    567234,
    567246,
    567244,
    567261,
    567453, -- target
    567520, -- untarget
}

local tooltipOwnerBlacklist = {
    "ActionButton%d+$", -- bar buttons
    "MultiBarBottomLeftButton",
    "MultiBarBottomRightButton",
    "MultiBarLeftButton",
    "MultiBarRightButton",
    "MinimapZoneTextButton",
    "CharacterMicroButton",
    "SpellbookMicroButton",
    "TalentMicroButton",
    "AchievementMicroButton",
    "QuestLogMicroButton",
    "SocialsMicroButton",
    "PVPMicroButton",
    "LFGMicroButton",
    "HelpMicroButton",
    --"CollectionsMicroButton", -- classic cancer
    "^KeyRingButton$", -- key ring
    "^CharacterBag%dSlot$", -- bags
    "^MainMenuBarBackpackButton$", -- backpack
}

local function PlayerFrameArt()
    PlayerFrameTexture:SetTexture("Interface\\AddOns\\TextureScript\\UI-TargetingFrame")
    PlayerStatusTexture:SetTexture("Interface\\AddOns\\TextureScript\\UI-Player-Status")
    PlayerFrameHealthBar:SetPoint("TOPLEFT", 106, -22)
    PlayerFrameHealthBar:SetWidth(119)
    PlayerFrameHealthBar:SetHeight(29)
    PlayerName:SetPoint("CENTER", 50, 35)
    PlayerFrameHealthBarText:SetPoint("CENTER", 50, 12)
    PlayerFrameHealthBarText:SetFont("Fonts/FRIZQT__.TTF", 16, "OUTLINE")
    PlayerFrameManaBarText:SetFont("Fonts/FRIZQT__.TTF", 10, "OUTLINE")
end
hooksecurefunc("PlayerFrame_ToPlayerArt", PlayerFrameArt)

local function OnInit()

    --minimap buttons, horde/alliance icons on target/focus/player,minimap city location, minimap sun/clock, minimap text frame,minimap zoomable with mousewheel etc
    MinimapZoomIn:Hide()
    MinimapZoomOut:Hide()
    Minimap:EnableMouseWheel(true)
    Minimap:SetScript('OnMouseWheel', function(_, delta)
        if delta > 0 then
            Minimap_ZoomIn()
        else
            Minimap_ZoomOut()
        end
    end)
    MiniMapTracking:Hide()
    MinimapBorderTop:Hide()

    GameTimeTexture:Hide()
    GameTimeFrame:Hide()
    MiniMapMailFrame:ClearAllPoints()
    MiniMapMailFrame:SetPoint('BOTTOMRIGHT', 0, -10)
    MinimapZoneTextButton:Hide()

    -- MiniMapWorldMapButton:Hide() needs to be done like this since patch 2.5.3 for some reason
    hooksecurefunc(MiniMapWorldMapButton, "Show", MiniMapWorldMapButton.Hide)

    -- Color Clock
    select(1, TimeManagerClockButton:GetRegions()):SetVertexColor(0, 0, 0)

    -- Position

    FocusFrame:StopMovingOrSizing()
    FocusFrame:ClearAllPoints()
    FocusFrame:SetPoint("CENTER", UIParent, "CENTER", -237, 115)
    FocusFrame:SetUserPlaced(true)

    -- ToT texture closing the alpha gap (previously handled by ClassPortraits itself)
    TargetFrameToTTextureFrameTexture:SetVertexColor(0, 0, 0)

    -- Hide PVP Icon
    PlayerPVPIcon:SetAlpha(0)
    TargetFrameTextureFramePVPIcon:SetAlpha(0)
    FocusFrameTextureFramePVPIcon:SetAlpha(0)

    -- Hide Party PvP Icon
    for i = 1, 4 do
        _G["PartyMemberFrame" .. i .. "PVPIcon"]:SetAlpha(0)
    end

    -- Player Frame, Focus Frame, Target Frame
    PlayerFrameArt()

    TargetFrameHealthBar:SetWidth(119)
    TargetFrameHealthBar:SetHeight(29)
    TargetFrameHealthBar:SetPoint("TOPLEFT", 7, -22)
    TargetFrameHealthBar:SetPoint("CENTER", -50, 6)
    TargetFrameNameBackground:Hide()
    TargetFrameTextureFrameName:SetPoint("CENTER", -50, 35)
    TargetFrameHealthBar.TextString:SetPoint("CENTER", -50, 12)
    TargetFrameHealthBar.TextString:SetFont("Fonts/FRIZQT__.TTF", 16, "OUTLINE")
    TargetFrameManaBar.TextString:SetFont("Fonts/FRIZQT__.TTF", 10, "OUTLINE")

    FocusFrameHealthBar:SetWidth(119)
    FocusFrameHealthBar:SetHeight(29)
    FocusFrameHealthBar:SetPoint("TOPLEFT", 7, -22)
    FocusFrameHealthBar:SetPoint("CENTER", -50, 6)
    FocusFrameNameBackground:Hide()
    FocusFrameTextureFrameName:SetPoint("CENTER", -50, 35)
    FocusFrameHealthBar.TextString:SetPoint("CENTER", -50, 12)
    FocusFrameHealthBar.TextString:SetFont("Fonts/FRIZQT__.TTF", 16, "OUTLINE")
    FocusFrameManaBar.TextString:SetFont("Fonts/FRIZQT__.TTF", 10, "OUTLINE")

    --Party Member Frames 1-4
    PartyMemberFrame1:SetScale(1.25)
    PartyMemberFrame1Texture:SetTexture("Interface\\AddOns\\TextureScript\\UI-PartyFrame")
    PartyMemberFrame1HealthBar:SetWidth(70)
    PartyMemberFrame1HealthBar:SetHeight(18)
    PartyMemberFrame1ManaBar:SetWidth(71)
    PartyMemberFrame1ManaBar:SetHeight(10)
    PartyMemberFrame1HealthBar:SetPoint("TOPLEFT", 45, -14)
    PartyMemberFrame1ManaBar:SetPoint("TOPLEFT", 45, -32)

    PartyMemberFrame2:SetScale(1.25)
    PartyMemberFrame2Texture:SetTexture("Interface\\AddOns\\TextureScript\\UI-PartyFrame")
    PartyMemberFrame2HealthBar:SetWidth(70)
    PartyMemberFrame2HealthBar:SetHeight(18)
    PartyMemberFrame2ManaBar:SetWidth(71)
    PartyMemberFrame2ManaBar:SetHeight(10)
    PartyMemberFrame2HealthBar:SetPoint("TOPLEFT", 45, -14)
    PartyMemberFrame2ManaBar:SetPoint("TOPLEFT", 45, -32)

    PartyMemberFrame3:SetScale(1.25)
    PartyMemberFrame3Texture:SetTexture("Interface\\AddOns\\TextureScript\\UI-PartyFrame")
    PartyMemberFrame3HealthBar:SetWidth(70)
    PartyMemberFrame3HealthBar:SetHeight(18)
    PartyMemberFrame3ManaBar:SetWidth(71)
    PartyMemberFrame3ManaBar:SetHeight(10)
    PartyMemberFrame3HealthBar:SetPoint("TOPLEFT", 45, -14)
    PartyMemberFrame3ManaBar:SetPoint("TOPLEFT", 45, -32)

    PartyMemberFrame4:SetScale(1.25)
    PartyMemberFrame4Texture:SetTexture("Interface\\AddOns\\TextureScript\\UI-PartyFrame")
    PartyMemberFrame4HealthBar:SetWidth(70)
    PartyMemberFrame4HealthBar:SetHeight(18)
    PartyMemberFrame4ManaBar:SetWidth(71)
    PartyMemberFrame4ManaBar:SetHeight(10)
    PartyMemberFrame4HealthBar:SetPoint("TOPLEFT", 45, -14)
    PartyMemberFrame4ManaBar:SetPoint("TOPLEFT", 45, -32)

    -- Reposition
    PartyMemberFrame1:ClearAllPoints()
    PartyMemberFrame1:SetPoint("TOPLEFT", CompactRaidFrameManager, "TOPRIGHT", -13.4, 10.3)

    PartyMemberFrame2:ClearAllPoints()
    PartyMemberFrame2:SetPoint("TOPLEFT", PartyMemberFrame1PetFrame, "BOTTOMLEFT", -23.33, -32.4)

    PartyMemberFrame3:ClearAllPoints()
    PartyMemberFrame3:SetPoint("TOPLEFT", PartyMemberFrame2PetFrame, "BOTTOMLEFT", -23.33, -32.27)

    PartyMemberFrame4:ClearAllPoints()
    PartyMemberFrame4:SetPoint("TOPLEFT", PartyMemberFrame3PetFrame, "BOTTOMLEFT", -23.33, -32.7)

    --POSITION OF DEBUFFS ON PARTY MEMBER FRAMES 1-4

    PartyMemberFrame1Debuff1:ClearAllPoints();
    PartyMemberFrame1Debuff1:SetPoint("BOTTOMLEFT", 45.00000048894432, -9.374971298968035);

    PartyMemberFrame2Debuff1:ClearAllPoints();
    PartyMemberFrame2Debuff1:SetPoint("BOTTOMLEFT", 44.99999870080508, -8.437474379317337);

    PartyMemberFrame3Debuff1:ClearAllPoints();
    PartyMemberFrame3Debuff1:SetPoint("BOTTOMLEFT", 44.99999870080508, -10.31263004755721);

    PartyMemberFrame4Debuff1:ClearAllPoints();
    PartyMemberFrame4Debuff1:SetPoint("BOTTOMLEFT", 44.99999870080508, -8.437541575172077);

    PartyMemberFrame1LeaderIcon:SetAlpha(0)
    PartyMemberFrame1MasterIcon:SetAlpha(0)

    PartyMemberFrame2LeaderIcon:SetAlpha(0)
    PartyMemberFrame2MasterIcon:SetAlpha(0)

    PartyMemberFrame3LeaderIcon:SetAlpha(0)
    PartyMemberFrame3MasterIcon:SetAlpha(0)

    PartyMemberFrame4LeaderIcon:SetAlpha(0)
    PartyMemberFrame4MasterIcon:SetAlpha(0)

    -- Hide Gryphons
    MainMenuBarLeftEndCap:Hide()
    MainMenuBarRightEndCap:Hide()

    --Player,Focus,Target,Pet and Party 1-4 Frames cleaned of names, group frame titles, combat indicators, glows, leader icons, master looter icons, levels, rest icons, !Improved Error Frame button hidden, Red Erros in top-center of screen hidden etc

    PlayerName:SetAlpha(0)
    PetName:SetAlpha(0)
    PlayerFrameGroupIndicator:SetAlpha(0)
    ActionBarUpButton:Hide()
    ActionBarDownButton:Hide()
    MainMenuBarPageNumber:SetAlpha(0)

    UIErrorsFrame:SetAlpha(0)

    PlayerLevelText:SetAlpha(0)
    PlayerLeaderIcon:SetAlpha(0)
    PlayerStatusTexture:SetAlpha(0)
    PlayerMasterIcon:SetAlpha(0)

    FocusFrameTextureFrameLevelText:SetAlpha(0)
    FocusFrameTextureFrameLeaderIcon:SetAlpha(0)

    TargetFrameTextureFrameLevelText:SetAlpha(0)
    TargetFrameTextureFrameLeaderIcon:SetAlpha(0)

    ChatFrameMenuButton:Hide()
    ChatFrameChannelButton:Hide()

    -- TargetFrame castbar slight up-scaling
    TargetFrameSpellBar:SetScale(1.1)

    -- FocusFrame castbar slight up-scaling
    FocusFrameSpellBar:SetScale(1.1)

    -- Rework Main Cast-Bar texture (castbar is now going to be round) - this is kinda "idk kev"... not sure if I rly like it, yet...
    -- Commented out - currently temporarily replaced by the DragonflightUI castbar (testing it out and shit)
    --CastingBarFrame:SetScale(1)
    --CastingBarFrame.Border:SetTexture("Interface\\CastingBar\\UI-CastingBar-Border-Small")
    --CastingBarFrame.Flash:SetTexture("Interface\\CastingBar\\UI-CastingBar-Flash-Small")
    --CastingBarFrame.Spark:SetHeight(50)
    -- CastingBarFrame.Text:ClearAllPoints()
    --CastingBarFrame.Text:SetPoint("CENTER", 0, 1)
    -- CastingBarFrame.Border:SetWidth(CastingBarFrame.Border:GetWidth() + 4)
    -- CastingBarFrame.Flash:SetWidth(CastingBarFrame.Flash:GetWidth() + 4)
    --CastingBarFrame.BorderShield:SetWidth(CastingBarFrame.BorderShield:GetWidth() + 4)
    -- CastingBarFrame.Border:SetPoint("TOP", 0, 26)
    -- CastingBarFrame.Flash:SetPoint("TOP", 0, 26)
    --CastingBarFrame.BorderShield:SetPoint("TOP", 0, 26)



    -- removing the "interrupted" red delay bar from nameplate castbars
    --^^ handled in JaxPartyCastBars addon!

    --removing character "C" button image
    MicroButtonPortrait:Hide()
    CharacterMicroButton:SetNormalTexture("Interface/BUTTONS/Custom Evo C panel");
    CharacterMicroButton:SetPushedTexture("Interface/BUTTONS/Custom Evo C panel");
    LFGMicroButton:SetNormalTexture("Interface/BUTTONS/UI-MicroButton-Help-Up");
    LFGMicroButton:SetPushedTexture("Interface/BUTTONS/UI-MicroButton-Help-Up");

    -- removing the new "latency" bar unfortunately introduced in wotlk
    MainMenuBarPerformanceBar:SetAlpha(0)

    -- move target of target to the right in order to allow clear vision of buffs/debuffs on a target, this will also be prolly mandatory when I try to resize the debuff scale to match 2.4.3
    TargetFrameToT:ClearAllPoints();
    TargetFrameToT:SetPoint("RIGHT", "TargetFrame", "BOTTOMRIGHT", -20, 5);
    FocusFrameToT:ClearAllPoints();
    FocusFrameToT:SetPoint("RIGHT", "FocusFrame", "BOTTOMRIGHT", -20, 5);

    --position of minimap(remove to reset minimap position)
    MinimapCluster:ClearAllPoints();
    MinimapCluster:SetPoint("BOTTOMLEFT", 1186.333618164063, 595.0001831054688);

    -- Removing Stance Bar (Shadowform icon literally the most useless and space-taking thing Lizzard invented in WOTLK)
    StanceBarFrame:SetAlpha(0)
    RegisterStateDriver(StanceBarFrame, "visibility", "hide")

    --disable mouseover flashing on buttons
    local texture
    texture = MultiBarBottomLeftButton1:GetHighlightTexture()
    texture:SetAlpha(0)
    texture = MultiBarBottomLeftButton2:GetHighlightTexture()
    texture:SetAlpha(0)
    texture = MultiBarBottomLeftButton3:GetHighlightTexture()
    texture:SetAlpha(0)
    texture = MultiBarBottomLeftButton4:GetHighlightTexture()
    texture:SetAlpha(0)
    texture = MultiBarBottomLeftButton5:GetHighlightTexture()
    texture:SetAlpha(0)
    texture = MultiBarBottomLeftButton6:GetHighlightTexture()
    texture:SetAlpha(0)
    texture = MultiBarBottomLeftButton7:GetHighlightTexture()
    texture:SetAlpha(0)
    texture = MultiBarBottomLeftButton8:GetHighlightTexture()
    texture:SetAlpha(0)
    texture = MultiBarBottomLeftButton9:GetHighlightTexture()
    texture:SetAlpha(0)
    texture = MultiBarBottomLeftButton10:GetHighlightTexture()
    texture:SetAlpha(0)
    texture = MultiBarBottomLeftButton11:GetHighlightTexture()
    texture:SetAlpha(0)
    texture = MultiBarBottomLeftButton12:GetHighlightTexture()
    texture:SetAlpha(0)

    texture = MultiBarBottomRightButton1:GetHighlightTexture()
    texture:SetAlpha(0)
    texture = MultiBarBottomRightButton2:GetHighlightTexture()
    texture:SetAlpha(0)
    texture = MultiBarBottomRightButton3:GetHighlightTexture()
    texture:SetAlpha(0)
    texture = MultiBarBottomRightButton4:GetHighlightTexture()
    texture:SetAlpha(0)
    texture = MultiBarBottomRightButton5:GetHighlightTexture()
    texture:SetAlpha(0)
    texture = MultiBarBottomRightButton6:GetHighlightTexture()
    texture:SetAlpha(0)
    texture = MultiBarBottomRightButton7:GetHighlightTexture()
    texture:SetAlpha(0)
    texture = MultiBarBottomRightButton8:GetHighlightTexture()
    texture:SetAlpha(0)
    texture = MultiBarBottomRightButton9:GetHighlightTexture()
    texture:SetAlpha(0)
    texture = MultiBarBottomRightButton10:GetHighlightTexture()
    texture:SetAlpha(0)
    texture = MultiBarBottomRightButton11:GetHighlightTexture()
    texture:SetAlpha(0)
    texture = MultiBarBottomRightButton12:GetHighlightTexture()
    texture:SetAlpha(0)

    texture = MultiBarLeftButton1:GetHighlightTexture()
    texture:SetAlpha(0)
    texture = MultiBarLeftButton2:GetHighlightTexture()
    texture:SetAlpha(0)
    texture = MultiBarLeftButton3:GetHighlightTexture()
    texture:SetAlpha(0)
    texture = MultiBarLeftButton4:GetHighlightTexture()
    texture:SetAlpha(0)
    texture = MultiBarLeftButton5:GetHighlightTexture()
    texture:SetAlpha(0)
    texture = MultiBarLeftButton6:GetHighlightTexture()
    texture:SetAlpha(0)
    texture = MultiBarLeftButton7:GetHighlightTexture()
    texture:SetAlpha(0)
    texture = MultiBarLeftButton8:GetHighlightTexture()
    texture:SetAlpha(0)
    texture = MultiBarLeftButton9:GetHighlightTexture()
    texture:SetAlpha(0)
    texture = MultiBarLeftButton10:GetHighlightTexture()
    texture:SetAlpha(0)
    texture = MultiBarLeftButton11:GetHighlightTexture()
    texture:SetAlpha(0)
    texture = MultiBarLeftButton12:GetHighlightTexture()
    texture:SetAlpha(0)

    texture = MultiBarRightButton1:GetHighlightTexture()
    texture:SetAlpha(0)
    texture = MultiBarRightButton2:GetHighlightTexture()
    texture:SetAlpha(0)
    texture = MultiBarRightButton3:GetHighlightTexture()
    texture:SetAlpha(0)
    texture = MultiBarRightButton4:GetHighlightTexture()
    texture:SetAlpha(0)
    texture = MultiBarRightButton5:GetHighlightTexture()
    texture:SetAlpha(0)
    texture = MultiBarRightButton6:GetHighlightTexture()
    texture:SetAlpha(0)
    texture = MultiBarRightButton7:GetHighlightTexture()
    texture:SetAlpha(0)
    texture = MultiBarRightButton8:GetHighlightTexture()
    texture:SetAlpha(0)
    texture = MultiBarRightButton9:GetHighlightTexture()
    texture:SetAlpha(0)
    texture = MultiBarRightButton10:GetHighlightTexture()
    texture:SetAlpha(0)
    texture = MultiBarRightButton11:GetHighlightTexture()
    texture:SetAlpha(0)
    texture = MultiBarRightButton12:GetHighlightTexture()
    texture:SetAlpha(0)

    texture = ActionButton1:GetHighlightTexture()
    texture:SetAlpha(0)
    texture = ActionButton2:GetHighlightTexture()
    texture:SetAlpha(0)
    texture = ActionButton3:GetHighlightTexture()
    texture:SetAlpha(0)
    texture = ActionButton4:GetHighlightTexture()
    texture:SetAlpha(0)
    texture = ActionButton5:GetHighlightTexture()
    texture:SetAlpha(0)
    texture = ActionButton6:GetHighlightTexture()
    texture:SetAlpha(0)
    texture = ActionButton7:GetHighlightTexture()
    texture:SetAlpha(0)
    texture = ActionButton8:GetHighlightTexture()
    texture:SetAlpha(0)
    texture = ActionButton9:GetHighlightTexture()
    texture:SetAlpha(0)
    texture = ActionButton10:GetHighlightTexture()
    texture:SetAlpha(0)
    texture = ActionButton11:GetHighlightTexture()
    texture:SetAlpha(0)
    texture = ActionButton12:GetHighlightTexture()
    texture:SetAlpha(0)

    texture = MainMenuBarBackpackButton:GetHighlightTexture()
    texture:SetAlpha(0)

    texture = CharacterBag0Slot:GetHighlightTexture()
    texture:SetAlpha(0)

    texture = CharacterBag1Slot:GetHighlightTexture()
    texture:SetAlpha(0)

    texture = CharacterBag2Slot:GetHighlightTexture()
    texture:SetAlpha(0)

    texture = CharacterBag3Slot:GetHighlightTexture()
    texture:SetAlpha(0)

    texture = CharacterMicroButton:GetHighlightTexture()
    texture:SetAlpha(0)

    texture = SpellbookMicroButton:GetHighlightTexture()
    texture:SetAlpha(0)

    texture = TalentMicroButton:GetHighlightTexture()
    texture:SetAlpha(0)

    texture = QuestLogMicroButton:GetHighlightTexture()
    texture:SetAlpha(0)

    texture = SocialsMicroButton:GetHighlightTexture()
    texture:SetAlpha(0)

    texture = AchievementMicroButton:GetHighlightTexture()
    texture:SetAlpha(0)

    texture = PVPMicroButton:GetHighlightTexture()
    texture:SetAlpha(0)

    PVPMicroButtonTexture:SetAlpha(0)

    -- |since Patch 2.5.2 no longer valid| texture = WorldMapMicroButton:GetHighlightTexture()
    -- |since Patch 2.5.2 no longer valid| texture:SetAlpha(0)

    texture = LFGMicroButton:GetHighlightTexture()
    texture:SetAlpha(0)

    texture = MainMenuMicroButton:GetHighlightTexture()
    texture:SetAlpha(0)

    texture = HelpMicroButton:GetHighlightTexture()
    texture:SetAlpha(0)

    --texture = CollectionsMicroButton:GetHighlightTexture() -- classic cancer
    --texture:SetAlpha(0)

    -- Remove Fizzle sounds (this was previously done by replacing the actual sound in Data/Sounds)
    for _, fdid in pairs(sounds) do
        MuteSoundFile(fdid)
    end

    -- Hide certain Macro & Keybind texts from Action Bar buttons

    for i = 1, 12 do
        _G["ActionButton" .. i .. "HotKey"]:Hide()
        _G["MultiBarBottomRightButton" .. i .. "HotKey"]:Hide()
        _G["MultiBarBottomLeftButton" .. i .. "HotKey"]:Hide()
        _G["MultiBarRightButton" .. i .. "HotKey"]:Hide()
        _G["MultiBarLeftButton" .. i .. "HotKey"]:Hide()
    end
    for i = 1, 12 do
        _G["ActionButton" .. i .. "Name"]:SetAlpha(0)
        _G["MultiBarBottomRightButton" .. i .. "Name"]:SetAlpha(0)
        _G["MultiBarBottomLeftButton" .. i .. "Name"]:SetAlpha(0)
        _G["MultiBarRightButton" .. i .. "Name"]:SetAlpha(0)
        _G["MultiBarLeftButton" .. i .. "Name"]:SetAlpha(0)
    end
end

-- SpeedyActions level: Garage clicker & Pro Gaymer
local _G = getfenv(0)
local GetBindingKey, SetOverrideBindingClick = _G.GetBindingKey, _G.SetOverrideBindingClick
local InCombatLockdown = _G.InCombatLockdown
local tonumber = _G.tonumber
local frame = CreateFrame("Frame")

local function WAHK(button, ok)
    if not button then
        return
    end

    local btn = _G[button]
    if not btn then
        return
    end

    local clickButton, id
    local clk = tostring(button)
    id = tonumber(button:match("(%d+)"))
    local actionButtonType = btn.buttonType
    local buttonType = actionButtonType and (actionButtonType .. id) or ("ACTIONBUTTON%d"):format(id)
    clickButton = buttonType or ("CLICK " .. button .. ":LeftButton")

    local key = GetBindingKey(clickButton)

    if key and btn then
        if ok then
            local wahk = CreateFrame("Button", "WAHK" .. button, nil, "SecureActionButtonTemplate")
            wahk:RegisterForClicks("AnyDown", "AnyUp")
            wahk:SetAttribute("type", "macro")
            local onclick = string.format([[ local id = tonumber(self:GetName():match("(%d+)")) if down then if HasVehicleActionBar() then self:SetAttribute("macrotext", "/click OverrideActionBarButton" .. id) else self:SetAttribute("macrotext", "/click ActionButton" .. id) end else if HasVehicleActionBar() then self:SetAttribute("macrotext", "/click OverrideActionBarButton" .. id) else self:SetAttribute("macrotext", "/click ActionButton" .. id) end end]], id, id, id)
            SecureHandlerWrapScript(wahk, "OnClick", wahk, onclick)
            SetOverrideBindingClick(wahk, true, key, wahk:GetName())
            wahk:SetScript("OnMouseDown", function() if HasVehicleActionBar() then _G["OverrideActionBarButton"..id]:SetButtonState("PUSHED") else btn:SetButtonState("PUSHED") end end)
            wahk:SetScript("OnMouseUp", function() if HasVehicleActionBar() then _G["OverrideActionBarButton"..id]:SetButtonState("NORMAL") else btn:SetButtonState("NORMAL") end end)
        else
            btn:RegisterForClicks("AnyDown", "AnyUp")
            local onclick = ([[ if down then
        self:SetAttribute("macrotext", "/click clk") else self:SetAttribute("macrotext", "/click clk") end
    ]]):gsub("clk", clk), nil
            SecureHandlerWrapScript(btn, "OnClick", btn, onclick)
            SetOverrideBindingClick(btn, true, key, btn:GetName())
        end
    end
end

local function UpdateBinds()
    if InCombatLockdown() then
        frame:RegisterEvent("PLAYER_REGEN_ENABLED")
        return
    end

    for i = 1, 12 do
        WAHK("ActionButton" .. i, true)
        WAHK("MultiBarBottomRightButton" .. i)
        WAHK("MultiBarBottomLeftButton" .. i)
        WAHK("MultiBarRightButton" .. i)
        WAHK("MultiBarLeftButton" .. i)
    end
end

frame:RegisterEvent("UPDATE_BINDINGS")
frame:RegisterEvent("PLAYER_LOGIN")
frame:SetScript("OnEvent", function(self, event, ...)
    if event == "PLAYER_REGEN_ENABLED" then
        self:UnregisterEvent("PLAYER_REGEN_ENABLED")
    end
    C_Timer.After(1, UpdateBinds)
end)

-- Hide the modern shitclient multigroup icon at PlayerFrame
local mg = PlayerPlayTime:GetParent().MultiGroupFrame
hooksecurefunc(mg, "Show", mg.Hide)

-- Hide Player and Pet hit indicators
hooksecurefunc(PlayerHitIndicator, "Show", PlayerHitIndicator.Hide)
hooksecurefunc(PetHitIndicator, "Show", PetHitIndicator.Hide)

-- Color Guild Tabs
hooksecurefunc("GuildStatus_Update", ColorGuildTabs)

-- Pet Frame (IT IS NECCESSARY TO COPY INTERFACE/TARGETINGFRAME FOLDER AS WELL)
hooksecurefunc("PetFrame_Update", function()
    PetFrameHealthBar:SetWidth(70)
    PetFrameHealthBar:SetHeight(18)
    PetFrameManaBar:SetWidth(71)
    PetFrameManaBar:SetHeight(10)
    PetFrameHealthBar:SetPoint("TOPLEFT", 45, -14)
    PetFrameHealthBarText:SetPoint("CENTER", 19, 4)
    PetFrameHealthBarText:SetFont("Fonts/FRIZQT__.TTF", 14, "OUTLINE")
    PetFrameManaBarText:SetPoint("CENTER", 19, -10)
    PetFrameManaBarText:SetFont("Fonts/FRIZQT__.TTF", 9, "OUTLINE")
    PetFrameManaBar:SetPoint("TOPLEFT", 45, -32)
end)

-- Hide level text
hooksecurefunc("PlayerFrame_UpdateLevelTextAnchor", function()
    PlayerLevelText:SetAlpha(0)
    PlayerFrameHealthBar:SetPoint("TOPLEFT", 106, -22);
end)

-- Remove color on name background
hooksecurefunc("TargetFrame_CheckFaction", function(self)
    if self and self.nameBackground then
        self.nameBackground:SetVertexColor(0.0, 0.0, 0.0, 0.5);
    end
end)

-- Hidden Player glow combat/rested flashes + Hidden Focus Flash on Focused Target + Trying to completely hide the red glowing status on target/focus frames when they have low HP(this is not completely fixed yet)
hooksecurefunc("PlayerFrame_UpdateStatus", function()
    PlayerStatusTexture:Hide()
    PlayerRestGlow:Hide()
    PlayerRestIcon:Hide()
    PlayerAttackIcon:Hide()
    PlayerAttackGlow:Hide()
    PlayerStatusGlow:Hide()
    PlayerAttackBackground:Hide()
end)
hooksecurefunc(PlayerFrameGroupIndicator, "Show", PlayerFrameGroupIndicator.Hide)

--Action bar buttons are now bigger, better looking and also fixes spellbook/wep switch bugging of dark theme
hooksecurefunc("ActionButton_ShowGrid", function(button)
    if button.NormalTexture then
        button.NormalTexture:SetVertexColor(1.0, 1.0, 1.0, 1.0)
    end
end)
for _, Bar in pairs({ "Action", "MultiBarBottomLeft", "MultiBarBottomRight", "MultiBarLeft", "MultiBarRight", "Stance", "PetAction" }) do
    for i = 1, 12 do
        local Button = Bar .. "Button" .. i
        if _G[Button] then
            _G[Button .. "Icon"]:SetTexCoord(0.06, 0.94, 0.06, 0.94)
        end
    end
end

PaperDollFrame:HookScript("OnShow", function()
    MicroButtonPortrait:Show()
end)

PaperDollFrame:HookScript("OnHide", function()
    MicroButtonPortrait:Hide()
end)

--current HP/MANA value

local function TextStatusBar_UpdateTextString(statusFrame, textString, value, valueMin, valueMax)
    local value = statusFrame.finalValue or statusFrame:GetValue();

    if (statusFrame.LeftText and statusFrame.RightText) then
        statusFrame.LeftText:SetText("");
        statusFrame.RightText:SetText("");
        statusFrame.LeftText:Hide();
        statusFrame.RightText:Hide();
    end

    if ((tonumber(valueMax) ~= valueMax or valueMax > 0) and not (statusFrame.pauseUpdates)) then
        statusFrame:Show();

        if ((statusFrame.cvar and GetCVar(statusFrame.cvar) == "1" and statusFrame.textLockable) or statusFrame.forceShow) then
            textString:Show();
        elseif (statusFrame.lockShow > 0 and (not statusFrame.forceHideText)) then
            textString:Show();
        else
            textString:SetText("");
            textString:Hide();
            return ;
        end

        local valueDisplay = value;
        local valueMaxDisplay = valueMax;
        -- Modern WoW always breaks up large numbers, whereas Classic never did.
        -- We'll remove breaking-up by default for Classic, but add a flag to reenable it.
        if (statusFrame.breakUpLargeNumbers) then
            if (statusFrame.capNumericDisplay) then
                valueDisplay = AbbreviateLargeNumbers(value);
                valueMaxDisplay = AbbreviateLargeNumbers(valueMax);
            else
                valueDisplay = BreakUpLargeNumbers(value);
                valueMaxDisplay = BreakUpLargeNumbers(valueMax);
            end
        end

        local textDisplay = GetCVar("statusTextDisplay");
        if (value and valueMax > 0 and ((textDisplay ~= "NUMERIC" and textDisplay ~= "NONE") or statusFrame.showPercentage) and not statusFrame.showNumeric) then
            if (value == 0 and statusFrame.zeroText) then
                textString:SetText(statusFrame.zeroText);
                statusFrame.isZero = 1;
                textString:Show();
            elseif (textDisplay == "BOTH" and not statusFrame.showPercentage) then
                if (statusFrame.LeftText and statusFrame.RightText) then
                    if (not statusFrame.powerToken or statusFrame.powerToken == "MANA") then
                        statusFrame.LeftText:SetText(mceil((value / valueMax) * 100) .. "%");
                        statusFrame.LeftText:Show();
                    end
                    statusFrame.RightText:SetText(valueDisplay);
                    statusFrame.RightText:Show();
                    textString:Hide();
                else
                    valueDisplay = "(" .. mceil((value / valueMax) * 100) .. "%) " .. valueDisplay .. " / " .. valueMaxDisplay;
                end
                textString:SetText(valueDisplay);
            else
                valueDisplay = mceil((value / valueMax) * 100) .. "%";
                if (statusFrame.prefix and (statusFrame.alwaysPrefix or not (statusFrame.cvar and GetCVar(statusFrame.cvar) == "1" and statusFrame.textLockable))) then
                    textString:SetText(statusFrame.prefix .. " " .. valueDisplay);
                else
                    textString:SetText(valueDisplay);
                end
            end
        elseif (value == 0 and statusFrame.zeroText) then
            textString:SetText(statusFrame.zeroText);
            statusFrame.isZero = 1;
            textString:Show();
            return ;
        else
            statusFrame.isZero = nil;
            if (statusFrame.prefix and (statusFrame.alwaysPrefix or not (statusFrame.cvar and GetCVar(statusFrame.cvar) == "1" and statusFrame.textLockable))) then
                textString:SetText(statusFrame.prefix .. " " .. valueDisplay .. " / " .. valueMaxDisplay);
            else
                textString:SetText(value);
            end
        end
    else
        textString:Hide();
        textString:SetText("");
        if (not statusFrame.alwaysShow) then
            statusFrame:Hide();
        else
            statusFrame:SetValue(0);
        end
    end
end
hooksecurefunc("TextStatusBar_UpdateTextStringWithValues", TextStatusBar_UpdateTextString)

local function Classification(self, forceNormalTexture)
    local classification = UnitClassification(self.unit);

    if classification == "elite" or classification == "worldboss" then
        self.borderTexture:SetTexture("Interface\\AddOns\\TextureScript\\UI-TargetingFrame-Elite")
    elseif classification == "rareelite" then
        self.borderTexture:SetTexture("Interface\\AddOns\\TextureScript\\UI-TargetingFrame-Rare-Elite")
    elseif classification == "rare" then
        self.borderTexture:SetTexture("Interface\\AddOns\\TextureScript\\UI-TargetingFrame-Rare")
    else
        self.borderTexture:SetTexture("Interface\\AddOns\\TextureScript\\UI-TargetingFrame")
    end

    -- fix Blizzard's overlapping backgrounds causing a darker line
    if forceNormalTexture then
        if classification ~= "minus" then
            self.Background:SetHeight(24)
            -- else
            -- not sure if "minus" mobs exist in TBC - wowpedia says:
            -- Patch 5.0.4: used for minion mobs that typically have less health than normal mobs of their level, but engage the player in larger numbers
            -- if they do exist, have to check if the default 12 is an OK size for it not to overlap
            -- self.Background:SetHeight(12)
        end
    else
        self.Background:SetHeight(24)
    end
end
hooksecurefunc("TargetFrame_CheckClassification", Classification)

--smooth status bars(animated)

local barstosmooth = {
    PlayerFrameHealthBar = "player",
    PlayerFrameManaBar = "player",
    TargetFrameHealthBar = "target",
    TargetFrameManaBar = "target",
    FocusFrameHealthBar = "focus",
    FocusFrameManaBar = "focus",
}

local smoothframe = CreateFrame("Frame")
local smoothing = {}

local function AnimationTick()
    local limit = 30 / GetFramerate()

    for bar, value in pairs(smoothing) do
        local cur = bar:GetValue()
        local new = cur + mmin((value - cur) / 3, mmax(value - cur, limit))
        if new ~= new then
            new = value
        end
        if cur == value or mabs(new - value) < 2 then
            bar:SetValue_(value)
            smoothing[bar] = nil
        else
            bar:SetValue_(floor(new))
        end
    end
end

local function SmoothSetValue(self, value)
    self.finalValue = value
    if self.unit then
        local guid = UnitGUID(self.unit)
        if value == self:GetValue() or not guid or guid ~= self.lastGuid then
            smoothing[self] = nil
            self:SetValue_(value)
        else
            smoothing[self] = value
        end
        self.lastGuid = guid
    else
        local _, max = self:GetMinMaxValues()
        if value == self:GetValue() or self._max and self._max ~= max then
            smoothing[self] = nil
            self:SetValue_(value)
        else
            smoothing[self] = value
        end
        self._max = max
    end
end

local function SmoothBar(bar)
    if not bar.SetValue_ then
        bar.SetValue_ = bar.SetValue
        bar.SetValue = SmoothSetValue
    end
end

smoothframe:SetScript("OnUpdate", function()
    for _, plate in pairs(C_NamePlate.GetNamePlates(true)) do
        if not plate:IsForbidden() and plate:IsVisible() and plate.UnitFrame:IsShown() then
            SmoothBar(plate.UnitFrame.healthBar)
        end
    end
    AnimationTick()
end)

smoothframe:RegisterEvent("ADDON_LOADED")
smoothframe:SetScript("OnEvent", function(self)
    for k, v in pairs(barstosmooth) do
        if _G[k] then
            SmoothBar(_G[k])
            _G[k]:SetScript("OnHide", function(frame)
                frame.lastGuid = nil;
                frame.max_ = nil
            end)
            if v ~= "" then
                _G[k].unit = v
            end
        end
    end
    self:UnregisterEvent("ADDON_LOADED")
    self:SetScript("OnEvent", nil)
end)

-- statusbar.lockColor causes taints
local function colour(statusbar, unit)
    if (not statusbar or statusbar.lockValues) then
        return
    end

    if unit then
        if UnitIsPlayer(unit) and unit == statusbar.unit then
            if (UnitIsConnected(unit) and UnitClass(unit) and unit ~= "player" and not statusbar.lockColor) then
                -- ArenaFrames lock/unlock color
                local _, class = UnitClass(unit)
                local c = RAID_CLASS_COLORS[class]
                if c then
                    if class == "DEATHKNIGHT" then
                        -- experimental DK recoulouring feature (part1)
                        statusbar:SetStatusBarColor(0, 1, 0.6)
                    else
                        statusbar:SetStatusBarColor(c.r, c.g, c.b)
                    end
                end
            elseif unit == "player" then
                local value = UnitHealth("player")
                local _, max = PlayerFrameHealthBar:GetMinMaxValues()
                local r, g

                if ((value < 0) or (value > max)) then
                    return
                end

                if max > 0 then
                    value = value / max
                else
                    value = 0
                end

                if value > 0.5 then
                    r = (1.0 - value) * 2;
                    g = 1.0;
                elseif value > 0.25 and value < 0.5 then
                    r = 1.0;
                    g = value * 1.75;
                else
                    r = 1.0;
                    g = 0.0;
                end
                PlayerFrameHealthBar:SetStatusBarColor(r, g, 0.0)
            else
                statusbar:SetStatusBarColor(0.5, 0.5, 0.5)
            end
        end
    end
end
hooksecurefunc("UnitFrameHealthBar_Update", colour)
hooksecurefunc("HealthBar_OnValueChanged", function(self)
    colour(self, self.unit)
end)

hooksecurefunc(TargetFramePortrait, "SetVertexColor", function(self, r, g, b) if r ~= 1.0 or g ~= 1.0 or b ~= 1.0 then self:SetVertexColor(1.0, 1.0, 1.0) end end)
hooksecurefunc(FocusFramePortrait, "SetVertexColor", function(self, r, g, b) if r ~= 1.0 or g ~= 1.0 or b ~= 1.0 then self:SetVertexColor(1.0, 1.0, 1.0) end end)
hooksecurefunc(TargetFramePortrait, "SetAlpha", function(self, a) if a ~= 1.0 then self:SetAlpha(1.0) end end)
hooksecurefunc(FocusFramePortrait, "SetAlpha", function(self, a) if a ~= 1.0 then self:SetAlpha(1.0) end end)
hooksecurefunc(FocusFrameToTPortrait, "SetVertexColor", function(self, r, g, b) if r ~= 1.0 or g ~= 1.0 or b ~= 1.0 then self:SetVertexColor(1.0, 1.0, 1.0) end end)
hooksecurefunc(TargetFrameToTPortrait, "SetVertexColor", function(self, r, g, b) if r ~= 1.0 or g ~= 1.0 or b ~= 1.0 then self:SetVertexColor(1.0, 1.0, 1.0) end end)

-- Blacklist of frames where tooltip mouseover is hidden
GameTooltip:HookScript("OnShow", function(self, ...)
    local owner = self:GetOwner() and self:GetOwner():GetName()
    if owner then
        -- hide world object tooltips like torches and signs
        if owner == "UIParent" and not self:GetUnit() then
            self:Hide()
            return
        end
        -- hide tooltips owned by frames in the blacklist
        for i = 1, #tooltipOwnerBlacklist do
            if owner:find(tooltipOwnerBlacklist[i]) then
                self:Hide()
                return
            end
        end
    end
end)

--increasing bufframe debuff size
hooksecurefunc("DebuffButton_UpdateAnchors", function(buttonName, index)
    _G[buttonName .. index]:SetScale(1.23)
end)

-- remove the shitty new client "raid frame manager" left gray bar next to the party frames (currently shows on/off on mouseover)
local manager = CompactRaidFrameManager
manager:SetAlpha(0)
-- look through a frame's parents
local function FindParent(frame, target)
    if frame == target then
        return true
    elseif frame then
        return FindParent(frame:GetParent(), target)
    end
end

manager:HookScript("OnEnter", function(self)
    self:SetAlpha(1)
end)

manager:HookScript("OnLeave", function(self)
    if manager.collapsed and not FindParent(GetMouseFocus(), self) then
        self:SetAlpha(0)
    end
end)

manager.toggleButton:HookScript("OnClick", function()
    if manager.collapsed then
        manager:SetAlpha(0)
    end
end)
-- keep the container frame visible
manager.container:SetIgnoreParentAlpha(true)
manager.containerResizeFrame:SetIgnoreParentAlpha(true)

-- Hide HealthBar under unit tooltips + Hide Titles, PVP flag and Guild Names from Player tooltips
GameTooltip:HookScript("OnTooltipSetUnit", function(self)
    GameTooltipStatusBar:Hide()

    local _, unit = self:GetUnit()
    if not unit then
        return
    end

    if UnitIsPlayer(unit) then
        local name = UnitName(unit)
        GameTooltipTextLeft1:SetFormattedText("%s", name)

        local guild = GetGuildInfo(unit)
        if guild and strfind(GameTooltipTextLeft2:GetText(), guild) then
            GameTooltipTextLeft2:SetFormattedText("")
        end

        for i = 2, self:NumLines() do
            local lines = _G["GameTooltipTextLeft" .. i]
            if i > 2 then
                if lines:GetText() == PVP_ENABLED then
                    lines:SetText("")
                end
            end
        end

        -- Add class-coloured names on mouseover tooltips
        local _, class = UnitClass(unit)
        local color = class and (CUSTOM_CLASS_COLORS or RAID_CLASS_COLORS)[class]
        if color then
            local text = GameTooltipTextLeft1:GetText()
            if text then
                if class == "DEATHKNIGHT" then
                    GameTooltipTextLeft1:SetFormattedText("|cff00ff99%s|r", text:match("|cff\x\x\x\x\x\x(.+)|r") or text)
                else
                    GameTooltipTextLeft1:SetFormattedText("|cff%02x%02x%02x%s|r", color.r * 255, color.g * 255, color.b * 255, text:match("|cff\x\x\x\x\x\x(.+)|r") or text)
                end
            end
        end
    end
    self:Show()
end)

-- Change BuffFrame position
hooksecurefunc("UIParent_UpdateTopFramePositions", function()
    BuffFrame:ClearAllPoints()
    BuffFrame:SetPoint("TOPRIGHT", UIParent, "TOPRIGHT", -180, -13)
end)

local function PlateNames(frame)
    if not frame or frame:IsForbidden() then
        return
    end

    if frame.unit and UnitExists(frame.unit) and strfind(frame.unit, "nameplate") then
        -- static pet names for more clarity
        local _, _, _, _, _, npcId = string_split("-", UnitGUID(frame.unit))
        if npcId == "1863" then
            frame.name:SetText("Succubus")
        elseif npcId == "417" then
            frame.name:SetText("Felhunter")
        elseif npcId == "185317" then
            frame.name:SetText("Succubus")
        end

        if UnitIsPlayer(frame.unit) then
            frame.name:SetText((UnitName(frame.unit)):gsub("%-.*", "")) -- not sure if UnitName() adds the realm so :gsub() might not be needed
            if UnitIsEnemy("player", frame.unit) then
                local _, _, class = UnitClass(frame.unit)
                if (class == 6) then
                    -- Only actual retards play this dogshit broken class that has nothing to do with World of Warcraft design
                    frame.name:SetText("I AM RETARDED")
                end
            end
        end
    end
end

local f = CreateFrame("Frame")
f:RegisterEvent("PLAYER_LOGIN")
f:RegisterUnitEvent("UNIT_PET", "player")
f:SetScript("OnEvent", function(self, event)
    if event == "PLAYER_LOGIN" then
        CustomCvar()
        OnInit()
        hooksecurefunc("CompactUnitFrame_UpdateName", PlateNames)
        self:UnregisterEvent("PLAYER_LOGIN")
	Settings.SetOnValueChangedCallback("floatingCombatTextCombatHealing", function() return end)
        -- Mark Shadowfiend with a "pussy" Raid Icon (dont mind me, just re-adding a lost feature of ArenaMarker addon that we removed due to a script below)
    elseif event == "UNIT_PET" then
        local _, type = IsInInstance()
        if type ~= "arena" then
            return
        end
        if GetRaidTargetIndex("pet") ~= 3 then
            SetRaidTarget("pet", 3)
        end
    end
end)

-- stop Gladdy from showing nameplates (necessary for the next script) !! IMPORTANT - You MUST use the "Lock Frame" function in General tab of Gladdy alongside with this!!

-- IT IS ALSO ABSOLUTELY NECESSARY FOR YOU TO DISABLE THE "Totem Plates" PLUGIN IN GLADDY UI

if IsAddOnLoaded("Gladdy") then
    local Gladdy = LibStub and LibStub("Gladdy")
    if Gladdy then
        local TotemPlates = Gladdy.modules["Totem Plates"]
        if TotemPlates then
            local TotemPlates_ToggleAddon = TotemPlates.ToggleAddon
            function TotemPlates:ToggleAddon(nameplate, show)
                if not show then
                    TotemPlates_ToggleAddon(self, nameplate, show)
                end
            end
        end
    end
end

-- Highlight Tremor Totem (disable nameplates of everything else) + disable Snake Trap Cancer + prevent displaying already dead Tremor Totem (retarded Classic-like behavior)

local HideNameplateUnits = {
    ["Viper"] = true,
    ["Venomous Snake"] = true,
    ["Underbelly Croc"] = true,
    ["Vern"] = true,
    ["Army of the Dead Ghoul"] = true,
    ["Spirit Wolf"] = true,
    ["Treant"] = true,
    ["Risen Ghoul"] = true,

    ["31216"] = true, -- Mirror Image
}

local ShowNameplatePetIds = {
    ["417"] = true, -- Felhunter
    ["1863"] = true, -- Succubus
    ["185317"] = true, -- Incubus
}

local tremorTotems = {} -- {[totem GUID] = {[shaman]=GUID, nameplate=<nameplate frame>}, ...}
local nameplatesToRecheck = {}

local plateEventFrame = CreateFrame("frame")
plateEventFrame:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
plateEventFrame:RegisterEvent("NAME_PLATE_UNIT_ADDED")
plateEventFrame:RegisterEvent("NAME_PLATE_UNIT_REMOVED")
plateEventFrame:RegisterEvent("PLAYER_ENTERING_WORLD")
plateEventFrame:Hide()

local function HideNameplate(nameplate)
    if nameplate.UnitFrame then
        nameplate.wasHidden = true
        nameplate.UnitFrame:Hide()
    end
end

local function HandleNewNameplate(nameplate, unit)
    local name = UnitName(unit)
    if name == "Unknown" then
        nameplate.recheckGuid = UnitGUID(unit)
        nameplatesToRecheck[UnitGUID(unit)] = nameplate
        plateEventFrame:Show()
        return
    end

    local creatureType, _, _, _, _, npcId = string_split("-", UnitGUID(unit))
    -- the rest of nameplate stuff
    if name:match("Totem") and not name:match("Tremor Totem") then
        HideNameplate(nameplate)
    elseif (HideNameplateUnits[name] or HideNameplateUnits[npcId])
            or (creatureType == "Pet" and not ShowNameplatePetIds[npcId]) then
        HideNameplate(nameplate)
    elseif name == "Tremor Totem" then
        local texture = (nameplate.UnitFrame.healthBar.border:GetRegions())
        local guid = UnitGUID(unit)
        if guid then
            local totem = tremorTotems[guid]
            if totem then
                totem.nameplate = nameplate
            else
                tremorTotems[guid] = { ["shaman"] = "Unknown", ["nameplate"] = nameplate }
            end
            nameplate.tremorTotemGuid = guid
            texture:SetTexture("Interface/Addons/TextureScript/Nameplate-Border-TREMOR.blp")
        end
    elseif name == "Ebon Gargoyle" then
        local texture = (nameplate.UnitFrame.healthBar.border:GetRegions())
        texture:SetTexture("Interface/Addons/TextureScript/Nameplate-Border-GARGOYLE.blp")
    end
end

local function plateOnUpdateFrame()
    for guid, nameplate in pairs(nameplatesToRecheck) do
        nameplatesToRecheck[guid] = nil
        if nameplate.recheckGuid == guid and nameplate.UnitFrame then
            HandleNewNameplate(nameplate, nameplate.UnitFrame.displayedUnit)
        end
    end

    if next(nameplatesToRecheck) == nil then
        plateEventFrame:Hide()
    end
end

-- PlaySound whenever an enemy casts Tremor Totem in arena (previously handled in a standalone addon "EvolveAlert" - https://github.com/Evolvee/EvolvePWPUI-ClassicTBC/tree/main/Interface/AddOns/EvolveAlert)

local COMBATLOG_FILTER_HOSTILE_PLAYERS = COMBATLOG_FILTER_HOSTILE_PLAYERS;
local CombatLog_Object_IsA = CombatLog_Object_IsA
local eventRegistered = {
    ["SPELL_CAST_SUCCESS"] = true,
    ["SPELL_SUMMON"] = true,
    ["SWING_DAMAGE"] = true,
    ["RANGE_DAMAGE"] = true,
    ["SPELL_DAMAGE"] = true,
    ["SPELL_HEAL"] = true,
    ["SPELL_PERIODIC_HEAL"] = true,

}

plateEventFrame:SetScript("OnEvent", function(_, event, unit)
    ----------------------------------------
    -- watch for recasts or damage to totems
    ----------------------------------------
    if event == "COMBAT_LOG_EVENT_UNFILTERED" then
        local _, action, _, sourceGuid, _, sourceFlags, _, destGuid, destName, _, _, ex1, _, _, ex4 = CombatLogGetCurrentEventInfo()
        local isSourceEnemy = CombatLog_Object_IsA(sourceFlags, COMBATLOG_FILTER_HOSTILE_PLAYERS)
        local _, instanceType = IsInInstance()

        if not (eventRegistered[action]) then
            return
        end

        if isSourceEnemy and instanceType == "arena" and ex1 == 8143 and action == "SPELL_CAST_SUCCESS" then
            PlaySound(12889)
        end


        if action == "SPELL_PERIODIC_HEAL" then
            if ex1 == 15290 then
                COMBAT_TEXT_TYPE_INFO.PERIODIC_HEAL.show = nil
                SetCVar("floatingCombatTextCombatHealing", 0)
            else
                COMBAT_TEXT_TYPE_INFO.PERIODIC_HEAL.show = 1
                SetCVar("floatingCombatTextCombatHealing", 1)
            end
        elseif action == "SPELL_HEAL" then
            if ex1 == 48300 or ex1 == 75999 then
                COMBAT_TEXT_TYPE_INFO.HEAL.show = nil
                SetCVar("floatingCombatTextCombatHealing", 0)
            else
                COMBAT_TEXT_TYPE_INFO.HEAL.show = 1
                SetCVar("floatingCombatTextCombatHealing", 1)
            end
        end

        if destName == "Tremor Totem" then
            if action == "SPELL_SUMMON" then
                if destName == "Tremor Totem" then
                    for totem, info in pairs(tremorTotems) do
                        if info.shaman == sourceGuid then
                            local nameplate = info.nameplate
                            if nameplate and nameplate.tremorTotemGuid == totem and nameplate.UnitFrame then
                                nameplate.wasHidden = true
                                nameplate.UnitFrame:Hide()
                            end
                        end
                    end
                    tremorTotems[destGuid] = { ["shaman"] = sourceGuid }
                end
            else
                local damage
                if action == "SWING_DAMAGE" or action == "RANGE_DAMAGE" then
                    damage = ex1
                elseif action == "SPELL_DAMAGE" then
                    damage = ex4
                else
                    damage = 0
                end

                if damage >= 5 then
                    local totem = tremorTotems[destGuid]
                    if totem then
                        local nameplate = totem.nameplate
                        if nameplate and nameplate.tremorTotemGuid == destGuid and nameplate.UnitFrame then
                            nameplate.wasHidden = true
                            nameplate.UnitFrame:Hide()
                        end
                    end
                end
            end
        end
        return
    elseif event == "PLAYER_ENTERING_WORLD" then
        -- clear the totems on loading screens
        tremorTotems = {}
        local _, type = IsInInstance()
        if type == "arena" or type == "pvp" then
            plateEventFrame:SetScript("OnUpdate", plateOnUpdateFrame)
        else
            plateEventFrame:SetScript("OnUpdate", nil)
        end
    end
    ----------------------------------------
    -- nameplates being added or removed
    ----------------------------------------

    if event == "NAME_PLATE_UNIT_ADDED" then
        local nameplate = C_NamePlate.GetNamePlateForUnit(unit)
        if not nameplate or nameplate:IsForbidden() then
            return
        end
        local texture = (nameplate.UnitFrame.healthBar.border:GetRegions())
        texture:SetTexture("Interface/Addons/TextureScript/Nameplate-Border.blp")

        -- hide level and expand healthbar
        nameplate.UnitFrame.LevelFrame:Hide()
        local hb = nameplate.UnitFrame.healthBar
        hb:ClearAllPoints()
        hb:SetPoint("BOTTOMLEFT", hb:GetParent(), "BOTTOMLEFT", 4, 4)
        hb:SetPoint("BOTTOMRIGHT", hb:GetParent(), "BOTTOMRIGHT", -4, 4)

        -- make the selection highlight a tiny bit smaller
        local sh = nameplate.UnitFrame.selectionHighlight
        sh:ClearAllPoints()
        sh:SetPoint("TOPLEFT", sh:GetParent(), "TOPLEFT", 1, -1)
        sh:SetPoint("BOTTOMRIGHT", sh:GetParent(), "BOTTOMRIGHT", -1, 1)
        HandleNewNameplate(nameplate, unit)
        return
    elseif event == "NAME_PLATE_UNIT_REMOVED" then
        local nameplate = C_NamePlate.GetNamePlateForUnit(unit)
        if not nameplate or nameplate:IsForbidden() then
            return
        end
        nameplate.tremorTotemGuid = nil
        tremorTotems[UnitGUID(unit) or ""] = nil
        if nameplate.UnitFrame then
            if nameplate.wasHidden then
                nameplate.wasHidden = nil
                nameplate.UnitFrame:Show()
            end
        end
        return
    end
end)

-- Skip certain gossip_menu windows for vendors and especially arena/bg NPCs --> can be bypassed by pressing ctrl/alt/shift
-- To see the icon number of gossip options, use: /dump C_GossipInfo.GetOptions()

local gossipSkipIcon = {
    [132050] = 1, -- banker
    [132051] = 1, -- battlemaster
    [132057] = 1, -- taxi
    [132058] = 1, -- trainer
    [132060] = 1, -- vendor
    [528409] = 1, -- Dalaran auction house
}

local IsShiftKeyDown, IsAltKeyDown, IsControlKeyDown = IsShiftKeyDown, IsAltKeyDown, IsControlKeyDown
local GetNumGossipActiveQuests, GetNumGossipAvailableQuests = C_GossipInfo.GetNumActiveQuests, C_GossipInfo.GetNumAvailableQuests
local SelectGossipOption, Dismount = C_GossipInfo.SelectOption, Dismount

local skipEventFrame = CreateFrame("frame")
skipEventFrame:RegisterEvent("GOSSIP_SHOW")
skipEventFrame:SetScript("OnEvent", function()
    local options = C_GossipInfo.GetOptions()
    local numOptions = #options

    if not IsShiftKeyDown() and numOptions == 1 and GetNumGossipActiveQuests() == 0 and GetNumGossipAvailableQuests() == 0 then
        if gossipSkipIcon[options[1].icon] then
            SelectGossipOption(options[1].gossipOptionID)
            if options[1].icon == 132057 then
                -- taxi
                Dismount()
            end
            return
        end
    end
    if numOptions > 0 and not IsShiftKeyDown() and not IsAltKeyDown() and not IsControlKeyDown() then
        for _, v in ipairs(options) do
            if v.icon == 132060 then
                -- vendor
                SelectGossipOption(v.gossipOptionID)
                return
            end
        end
    end
end)

-- Add MMR at the bottom of Arena Scoreboard

local teamRatingFrame = CreateFrame("frame", "TeamRatingTextFrame", WorldStateScoreFrame)
teamRatingFrame:SetPoint("BOTTOM", WorldStateScoreFrameLeaveButton, "TOP", 0, 12)
teamRatingFrame:SetSize(300, 80)
teamRatingFrame:Hide()

teamRatingFrame.names = teamRatingFrame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
teamRatingFrame.ratings = teamRatingFrame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
teamRatingFrame.names:SetFont("Fonts/FRIZQT__.TTF", 24)
teamRatingFrame.ratings:SetFont("Fonts/FRIZQT__.TTF", 24)
teamRatingFrame.names:SetJustifyH("LEFT")
teamRatingFrame.ratings:SetJustifyH("LEFT")
teamRatingFrame.ratings:SetPoint("TOPLEFT", teamRatingFrame.names, "TOPRIGHT", 0, 0)

teamRatingFrame:SetScript("OnShow", function()
    local nWidth = teamRatingFrame.names:GetWidth()
    local rWidth = teamRatingFrame.ratings:GetWidth()
    local x = (nWidth / 2) - ((nWidth + rWidth - 10) / 2) -- no idea why "- 10" helps centering it!
    teamRatingFrame.names:ClearAllPoints()
    teamRatingFrame.names:SetPoint("BOTTOM", teamRatingFrame, "BOTTOM", x, 0)
end)

teamRatingFrame:SetScript("OnEvent", function(_, event)
    if event == "UPDATE_BATTLEFIELD_SCORE" then
        local _, isRatedArena = IsActiveBattlefieldArena()
        if isRatedArena then
            local name1, _, newRating1, mmr1 = GetBattlefieldTeamInfo(0)
            local name2, _, _, mmr2 = GetBattlefieldTeamInfo(1)
            if newRating1 and newRating1 > 0 then
                local nameText = string_format('|cffbd67ff"%s" |r\n|cffffd500"%s" |r', name1, name2)
                local ratingText = string_format('|cffbd67ffMMR: %d|r\n|cffffd500MMR: %d|r', mmr1, mmr2)
                teamRatingFrame.names:SetText(nameText)
                teamRatingFrame.ratings:SetText(ratingText)
                teamRatingFrame:Show()
                return
            end
        end
    end
    teamRatingFrame:Hide()
end)
teamRatingFrame:RegisterEvent("UPDATE_BATTLEFIELD_SCORE")
teamRatingFrame:RegisterEvent("PLAYER_ENTERING_WORLD")

-- Moving right and left multibar (actionbars at the right side) to match the 2.4.3 position
local function SetPosition(frame, ...)
    if InCombatLockdown() then
        return
    end

    if type(frame) == "string" then
        frame = _G[frame]
    end

    if type(frame) == "table" and type(frame.IsObjectType) == "function" and frame:IsObjectType("Frame") then
        if ... then
            frame:ClearAllPoints()
            frame:SetPoint(...)
        end
    end
end
SetPosition(MultiBarRight, "TOPRIGHT", VerticalMultiBarsContainer, "TOPRIGHT", 2, 3)
SetPosition(MultiBarLeft, "TOPLEFT", VerticalMultiBarsContainer, "TOPLEFT", 2, 3)

local widget = _G["UIWidgetBelowMinimapContainerFrame"]
hooksecurefunc(widget, "SetPoint", function(self, _, parent)
    if parent and (parent == "MinimapCluster" or parent == _G["MinimapCluster"]) then
        widget:ClearAllPoints()
        widget:SetPoint("TOPRIGHT", UIWidgetTopCenterContainerFrame, "BOTTOMRIGHT", 580, -345)
    end
end)

-- Remove debuffs from Target of Target frame
for _, totFrame in ipairs({ TargetFrameToT, FocusFrameToT }) do
    totFrame:HookScript("OnShow", function()
        for i = 1, 4 do
            local dbf = _G[totFrame:GetName() .. "Debuff" .. i]
            if dbf and dbf:GetAlpha() > 0 then
                dbf:SetAlpha(0)
            end
        end
    end)
end

-- Testing new method of displaying partners in arena (Raid Icon Markers)
-- ^^ remove cvar "nameplateShowFriendlyNPCs" + friendly nameplates from UI options later (if deleted)

local classmarkers = {
    ["ROGUE"] = "Interface\\AddOns\\TextureScript\\PartyIcons\\Rogue",
    ["PRIEST"] = "Interface\\AddOns\\TextureScript\\PartyIcons\\Priest",
    ["WARRIOR"] = "Interface\\AddOns\\TextureScript\\PartyIcons\\Warrior",
    ["PALADIN"] = "Interface\\AddOns\\TextureScript\\PartyIcons\\Paladin",
    ["DEATHKNIGHT"] = "Interface\\AddOns\\TextureScript\\PartyIcons\\RetardedDog",
    ["HUNTER"] = "Interface\\AddOns\\TextureScript\\PartyIcons\\Hunter",
    ["DRUID"] = "Interface\\AddOns\\TextureScript\\PartyIcons\\Druid",
    ["MAGE"] = "Interface\\AddOns\\TextureScript\\PartyIcons\\Mage",
    ["SHAMAN"] = "Interface\\AddOns\\TextureScript\\PartyIcons\\Shaman",
    ["WARLOCK"] = "Interface\\AddOns\\TextureScript\\PartyIcons\\Warlock",
}

hooksecurefunc("CompactUnitFrame_OnUpdate", function(frame)
    if not frame or not frame.unit or not strfind(frame.unit, "nameplate") or frame:IsForbidden() then
        return
    end

    if not InCombatLockdown() then
        if not IsActiveBattlefieldArena() then
            if GetCVar("nameplateShowFriends") == "1" then
                SetCVar("nameplateShowFriends", 0)
            end
        else
            if GetCVar("nameplateShowFriends") == "0" then
                SetCVar("nameplateShowFriends", 1)
            end
        end
    end

    if UnitExists(frame.unit) then
        local _, unitClass = UnitClass(frame.unit)
        local namePlateFrameBase = C_NamePlate.GetNamePlateForUnit(frame.unit);

        if UnitIsPlayer(frame.unit) and UnitIsFriend("player", frame.unit) and IsActiveBattlefieldArena() then
            if not frame.texture then
                frame.texture = frame:CreateTexture(nil, "OVERLAY")
                frame.texture:SetSize(40, 40)
                frame.texture:SetPoint("CENTER", frame, "CENTER", 0, 20)
                frame.texture:Hide()
            end
            if unitClass then
                frame.texture:SetTexture(classmarkers[unitClass])
                frame.texture:Show()
            end
            frame.name:SetAlpha(0)
            frame.healthBar:SetAlpha(0)
            frame.LevelFrame:SetAlpha(0)
            frame.selectionHighlight:SetAlpha(0)
        else
            if frame.texture then
                frame.texture:Hide()
            end
            if frame.name:GetAlpha() < 1 then
                frame.name:SetAlpha(1)
            end
            if frame.healthBar:GetAlpha() < 1 then
                frame.healthBar:SetAlpha(1)
            end
            if frame.LevelFrame:GetAlpha() < 1 then
                frame.LevelFrame:SetAlpha(1)
            end
            if frame.selectionHighlight:GetAlpha() == 0 then
                frame.selectionHighlight:SetAlpha(0.25)
            end
        end
    end
end)

-- Hide the friendly nameplate cast bars (a subproduct of the script above ^^)
hooksecurefunc("Nameplate_CastBar_AdjustPosition", function(self)
    if not self or self:IsForbidden() then
        return
    end

    if UnitIsFriend("player", self.unit) then
        self:Hide()
    end

    local parentFrame = self:GetParent()
    if self.BorderShield:IsShown() then
        self:ClearAllPoints()
        self:SetPoint("TOP", parentFrame.healthBar, "BOTTOM", 9, -12)
    else
        self:ClearAllPoints()
        self:SetPoint("TOP", parentFrame.healthBar, "BOTTOM", 9, -4)
    end
end)


-- Removing the flashing animation of coooldown finish at action bars

for k, v in pairs(_G) do
    if type(v) == "table" and type(v.SetDrawBling) == "function" then
        v:SetDrawBling(false)
    end
end
hooksecurefunc(getmetatable(ActionButton1Cooldown).__index, 'SetCooldown', function(self)
    self:SetDrawBling(false)
end)

-- Since we disabled macro & keybind text above, there is no way to tell when target is too far to cast on, so adding this mechanic instead... (colouring action bar buttons that are out of range & out of mana to be casted...)

local IsActionInRange = IsActionInRange
local IsUsableAction = IsUsableAction

local function Usable(button)
    local isUsable, notEnoughMana = IsUsableAction(button.action)
    local icon = button.icon

    if isUsable then
        icon:SetVertexColor(1.0, 1.0, 1.0, 1.0)
        icon:SetDesaturated(false)
    elseif notEnoughMana then
        icon:SetVertexColor(0.3, 0.3, 0.3, 1.0)
        icon:SetDesaturated(true)
    else
        icon:SetVertexColor(0.4, 0.4, 0.4, 1.0)
        icon:SetDesaturated(true)
    end
end

hooksecurefunc("ActionButton_OnUpdate", function(self)
    local _, oom = IsUsableAction(self.action)
    local valid = IsActionInRange(self.action);
    local checksRange = (valid ~= nil);
    local inRange = checksRange and valid;

    if self.HotKey and self.HotKey:GetAlpha() > 0 then
        self.HotKey:SetAlpha(0)
    end
    if checksRange and not inRange then
        if oom then
            self.icon:SetVertexColor(0.3, 0.3, 0.3, 1.0)
            self.icon:SetDesaturated(true)
        else
            self.icon:SetVertexColor(1.0, 0.35, 0.35, 0.75)
            self.icon:SetDesaturated(true)
        end
    else
        Usable(self)
    end
end)

-- Preventing the black action bar borders to be hidden due to pressing an action button
hooksecurefunc("ActionButton_OnUpdate", function(self)
    if self.NormalTexture and not self.NormalTexture:IsShown()
    then
        self.NormalTexture:Show()
    end
end)

-- Changing DK default colour in order to bring more clarity
hooksecurefunc("CompactUnitFrame_UpdateHealthColor", function(frame)

    if not frame.unit or frame:IsForbidden() or not string.find(frame.unit, "nameplate") then
        return
    end

    if UnitIsConnected(frame.unit) and UnitIsPlayer(frame.unit) then
        local _, class = UnitClass(frame.unit)
        if class == "DEATHKNIGHT" then
            -- experimental DK recoulouring feature (part2)
            frame.healthBar:SetStatusBarColor(0, 1, 0.6)
        end
    end
end)


-- leave arena on PVP icon doubleclick (useful when playing against DK retards)
MiniMapBattlefieldFrame:HookScript("OnDoubleClick", function()
    LeaveBattlefield()
end)

-- trying to salvage the main action bar abomination they created in the clASSic ICC patch (bringing back the old looks of it)

MainMenuBar:SetSize(1024, 53)
MainMenuExpBar:SetSize(1024, 13);
MainMenuBarTexture0:SetPoint("BOTTOM", -384, 0);
MainMenuBarTexture1:SetPoint("BOTTOM", -128, 0);
MainMenuBarTexture2:SetPoint("BOTTOM", 128, 0);
MainMenuBarTexture3:SetPoint("BOTTOM", 384, 0);
MainMenuBarLeftEndCap:SetPoint("BOTTOM", -544, 0);
MainMenuBarRightEndCap:SetPoint("BOTTOM", 544, 0);
MainMenuBarPageNumber:SetPoint("CENTER", 30, -5);
MainMenuXPBarTexture0:SetSize(256, 10);
MainMenuXPBarTexture1:SetSize(256, 10);
MainMenuXPBarTexture2:SetSize(256, 10);
MainMenuXPBarTexture3:SetSize(256, 10);
MainMenuXPBarTexture3:SetPoint("BOTTOM", 384, 3);
CollectionsMicroButton:Hide()
PVPMicroButton:SetPoint("BOTTOMLEFT", SocialsMicroButton, "BOTTOMRIGHT", -2, 0)
UpdateMicroButtons()

if not CombatText then
    EventUtil.ContinueOnAddOnLoaded("Blizzard_CombatText", function()
CombatText_ClearAnimationList = function() return end 
    end) 
else
CombatText_ClearAnimationList = function() return end
end


-- classic cancer to fix the healing on VE party members: /console floatingCombatTextCombatHealing 0
-- ^^ yea idk... dogshit gayme









-- Temporary way to disable the dogshit cata spellqueue they brought to tbc instead of using the proper Retail TBC one that bypasses GCD: /console SpellQueueWindow 0
-- ^^ current value: 130 (100+ latency)

-- trying to remove the cancer weather that is not part of the video settings as it used to be in 2.4.3: /console set weatherdensity 0 // /console WeatherDensity 0

-- trying to reduce the view distance (maybe reduces fps drops?) because this dragonshit client doesnt even allow you to change it in interface options: /run SetCVar("farclip", 0)

-- Disable the ability to scroll chat with mouse wheel (fucks binds with the mouse-wheel-up/down): /console chatMouseScroll 0



-- FUCK BLIZZARD, garbage company:
-- https://eu.forums.blizzard.com/en/wow/t/lf-a-blizzard-response-all-talents-that-reduce-spell-resists-in-pvp-no-longer-works-since-phase-2/320188
-- https://us.forums.blizzard.com/en/wow/t/all-talents-that-reduce-spell-resists-in-pvp-no-longer-works-since-phase-2/1114096/5

-- WE DID IT REDDIT-> https://github.com/JamminL/wotlk-classic-bugs/issues/143#issuecomment-1209998266 - after a year of TBC being absolutely fucking unplayable, especially for a shadow priest, they "finally" fixed it... So adding more appropriate message instead for WOTLK (hi sacred cleansing)...

COMBAT_TEXT_RESIST = "SHIT EXPANSION"
COMBAT_TEXT_MISS = "SHIT EXPANSION"




--Login message informing all scripts of this file were properly executed
ChatFrame1:AddMessage("EvolvePWPUI-ClassicWOTLK v0.5 Loaded successfully!", 0, 205, 255)
ChatFrame1:AddMessage("Check for updates at:", 0, 205, 255)
ChatFrame1:AddMessage("https://github.com/Evolvee/EvolvePWPUI-ClassicWOTLK", 0, 205, 255)