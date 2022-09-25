--EVOLVE PWP UI

local string_split = string.split
local CombatLogGetCurrentEventInfo = CombatLogGetCurrentEventInfo
local UnitGUID, UnitIsPlayer, UnitIsConnected, UnitClass, UnitClassification = UnitGUID, UnitIsPlayer, UnitIsConnected, UnitClass, UnitClassification
local UnitIsEnemy, UnitBuff, UnitName = UnitIsEnemy, UnitBuff, UnitName
local IsActiveBattlefieldArena, GetBattlefieldTeamInfo = IsActiveBattlefieldArena, GetBattlefieldTeamInfo
local SetCVar = SetCVar
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
local floor = math.floor
local GetFramerate = GetFramerate

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
    nameplateGlobalScale = "1.2",
    enableFloatingCombatText = "1",
    threatWarning = "0",
    predictedHealth = "0",
    Sound_EnableDSPEffects = "0",
    countdownForCooldowns = "1"
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

-- Hide Pets
hooksecurefunc("PartyMemberFrame_UpdatePet", function(self, id)
    if (not id) then
        id = self:GetID();
    end

    local petFrame = _G["PartyMemberFrame" .. id .. "PetFrame"];
    petFrame:SetAlpha(0);
end)

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
    "^KeyRingButton$", -- key ring
    "^CharacterBag%dSlot$", -- bags
    "^MainMenuBarBackpackButton$", -- backpack
}

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

    --Player Frame, Focus Frame, Target Frame
    PlayerFrameTexture:SetTexture("Interface\\AddOns\\TextureScript\\UI-TargetingFrame")
    PlayerStatusTexture:SetTexture("Interface\\AddOns\\TextureScript\\UI-Player-Status")
    PlayerFrameHealthBar:SetPoint("TOPLEFT", 106, -22)
    PlayerFrameHealthBar:SetWidth(119)
    PlayerFrameHealthBar:SetHeight(29)
    PlayerName:SetPoint("CENTER", 50, 35)
    PlayerFrameHealthBarText:SetPoint("CENTER", 50, 12)
    PlayerFrameHealthBarText:SetFont("Fonts/FRIZQT__.TTF", 16, "OUTLINE")
    PlayerFrameManaBarText:SetFont("Fonts/FRIZQT__.TTF", 10, "OUTLINE")

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
    ActionBarUpButton:SetAlpha(0)
    ActionBarDownButton:SetAlpha(0)
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
    CastingBarFrame:SetScale(1)
    CastingBarFrame.Border:SetTexture("Interface\\CastingBar\\UI-CastingBar-Border-Small")
    CastingBarFrame.Flash:SetTexture("Interface\\CastingBar\\UI-CastingBar-Flash-Small")
    CastingBarFrame.Spark:SetHeight(50)
    CastingBarFrame.Text:ClearAllPoints()
    CastingBarFrame.Text:SetPoint("CENTER", 0, 1)
    CastingBarFrame.Border:SetWidth(CastingBarFrame.Border:GetWidth() + 4)
    CastingBarFrame.Flash:SetWidth(CastingBarFrame.Flash:GetWidth() + 4)
    CastingBarFrame.BorderShield:SetWidth(CastingBarFrame.BorderShield:GetWidth() + 4)
    CastingBarFrame.Border:SetPoint("TOP", 0, 26)
    CastingBarFrame.Flash:SetPoint("TOP", 0, 26)
    CastingBarFrame.BorderShield:SetPoint("TOP", 0, 26)

    --removing character "C" button image
    MicroButtonPortrait:Hide()
    CharacterMicroButton:SetNormalTexture("Interface/BUTTONS/Custom Evo C panel");
    CharacterMicroButton:SetPushedTexture("Interface/BUTTONS/Custom Evo C panel");
    LFGMicroButton:SetNormalTexture("Interface/BUTTONS/UI-MicroButton-Help-Up");
    LFGMicroButton:SetPushedTexture("Interface/BUTTONS/UI-MicroButton-Help-Up");

    -- removing the new "latency" bar unfortunately introduced in wotlk
    MainMenuBarPerformanceBar:SetAlpha(0)

    -- Remove the "highlight" dark texture when mouse-overing chat frame
    DEFAULT_CHATFRAME_ALPHA = 0

    -- COMBAT_TEXT_RESIST = "FUCK BLIZZARD"
    COMBAT_TEXT_RESIST = "SHIT EXPANSION"
    COMBAT_TEXT_MISS = "SHIT EXPANSION"

    -- SpeedyActions level: Garage clicker
    MultiBarBottomLeftButton1:RegisterForClicks("AnyDown")
    MultiBarBottomLeftButton2:RegisterForClicks("AnyDown")
    MultiBarBottomLeftButton3:RegisterForClicks("AnyDown")
    MultiBarBottomLeftButton4:RegisterForClicks("AnyDown")
    MultiBarBottomLeftButton5:RegisterForClicks("AnyDown")
    MultiBarBottomLeftButton6:RegisterForClicks("AnyDown")
    MultiBarBottomLeftButton7:RegisterForClicks("AnyDown")
    MultiBarBottomLeftButton8:RegisterForClicks("AnyDown")
    MultiBarBottomLeftButton9:RegisterForClicks("AnyDown")
    MultiBarBottomLeftButton10:RegisterForClicks("AnyDown")
    MultiBarBottomLeftButton11:RegisterForClicks("AnyDown")
    MultiBarBottomLeftButton12:RegisterForClicks("AnyDown")

    MultiBarBottomRightButton1:RegisterForClicks("AnyDown")
    MultiBarBottomRightButton2:RegisterForClicks("AnyDown")
    MultiBarBottomRightButton3:RegisterForClicks("AnyDown")
    MultiBarBottomRightButton4:RegisterForClicks("AnyDown")
    MultiBarBottomRightButton5:RegisterForClicks("AnyDown")
    MultiBarBottomRightButton6:RegisterForClicks("AnyDown")
    MultiBarBottomRightButton7:RegisterForClicks("AnyDown")
    MultiBarBottomRightButton8:RegisterForClicks("AnyDown")
    MultiBarBottomRightButton9:RegisterForClicks("AnyDown")
    MultiBarBottomRightButton10:RegisterForClicks("AnyDown")
    MultiBarBottomRightButton11:RegisterForClicks("AnyDown")
    MultiBarBottomRightButton12:RegisterForClicks("AnyDown")

    ActionButton1:RegisterForClicks("Anydown")
    ActionButton2:RegisterForClicks("Anydown")
    ActionButton3:RegisterForClicks("Anydown")
    ActionButton4:RegisterForClicks("Anydown")
    ActionButton5:RegisterForClicks("Anydown")
    ActionButton6:RegisterForClicks("Anydown")
    ActionButton7:RegisterForClicks("Anydown")
    ActionButton8:RegisterForClicks("Anydown")
    ActionButton9:RegisterForClicks("Anydown")
    ActionButton10:RegisterForClicks("Anydown")
    ActionButton11:RegisterForClicks("Anydown")
    ActionButton12:RegisterForClicks("Anydown")

    MainMenuBarBackpackButton:RegisterForClicks("Anydown")
    CharacterBag1Slot:RegisterForClicks("Anydown")
    CharacterBag0Slot:RegisterForClicks("Anydown")
    CharacterBag2Slot:RegisterForClicks("Anydown")
    CharacterBag3Slot:RegisterForClicks("Anydown")

    MultiBarLeftButton1:RegisterForClicks("Anydown")
    MultiBarLeftButton2:RegisterForClicks("Anydown")
    MultiBarLeftButton3:RegisterForClicks("Anydown")
    MultiBarLeftButton4:RegisterForClicks("Anydown")
    MultiBarLeftButton5:RegisterForClicks("Anydown")
    MultiBarLeftButton6:RegisterForClicks("Anydown")
    MultiBarLeftButton7:RegisterForClicks("Anydown")
    MultiBarLeftButton8:RegisterForClicks("Anydown")
    MultiBarLeftButton9:RegisterForClicks("Anydown")
    MultiBarLeftButton10:RegisterForClicks("Anydown")
    MultiBarLeftButton11:RegisterForClicks("Anydown")
    MultiBarLeftButton12:RegisterForClicks("Anydown")

    MultiBarRightButton1:RegisterForClicks("Anydown")
    MultiBarRightButton2:RegisterForClicks("Anydown")
    MultiBarRightButton3:RegisterForClicks("Anydown")
    MultiBarRightButton4:RegisterForClicks("Anydown")
    MultiBarRightButton5:RegisterForClicks("Anydown")
    MultiBarRightButton6:RegisterForClicks("Anydown")
    MultiBarRightButton7:RegisterForClicks("Anydown")
    MultiBarRightButton8:RegisterForClicks("Anydown")
    MultiBarRightButton9:RegisterForClicks("Anydown")
    MultiBarRightButton10:RegisterForClicks("Anydown")
    MultiBarRightButton11:RegisterForClicks("Anydown")
    MultiBarRightButton12:RegisterForClicks("Anydown")

    -- move target of target to the right in order to allow clear vision of buffs/debuffs on a target, this will also be prolly mandatory when I try to resize the debuff scale to match 2.4.3
    TargetFrameToT:ClearAllPoints();
    TargetFrameToT:SetPoint("RIGHT", "TargetFrame", "BOTTOMRIGHT", -20, 5);
    FocusFrameToT:ClearAllPoints();
    FocusFrameToT:SetPoint("RIGHT", "FocusFrame", "BOTTOMRIGHT", -20, 5);

    --position of minimap(remove to reset minimap position)
    MinimapCluster:ClearAllPoints();
    MinimapCluster:SetPoint("BOTTOMLEFT", 1186.333618164063, 595.0001831054688);

    -- Removing Stance Bar (Shadowform icon literally the most useless and space-taking thing Lizzard invented in WOTLK)
    RegisterStateDriver(StanceBarFrame, "visibility", "hide")

    --disable mouseover flashing on buttons
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

    -- Remove Fizzle sounds (this was previously done by replacing the actual sound in Data/Sounds)
    for _, fdid in pairs(sounds) do
        MuteSoundFile(fdid)
    end
end

-- Attempt to Hide the modern shitclient multigroup icon at PlayerFrame
local mg = PlayerPlayTime:GetParent().MultiGroupFrame
hooksecurefunc(mg, "Show", mg.Hide)

-- Hide Player and Pet hit indicators
hooksecurefunc(PlayerHitIndicator, "Show", PlayerHitIndicator.Hide)
hooksecurefunc(PetHitIndicator, "Show", PetHitIndicator.Hide)

-- Color Guild Tabs
hooksecurefunc("GuildStatus_Update", ColorGuildTabs)

--Pet Frame (IT IS NECCESSARY TO COPY INTERFACE/TARGETINGFRAME FOLDER AS WELL)
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
    self.nameBackground:SetVertexColor(0.0, 0.0, 0.0, 0.5);
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
hooksecurefunc("ActionButton_ShowGrid", function(Button)
    if not Button then
        Button = this
    end
    _G[Button:GetName() .. "NormalTexture"]:SetVertexColor(1, 1, 1, 1)
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
                        statusFrame.LeftText:SetText(math.ceil((value / valueMax) * 100) .. "%");
                        statusFrame.LeftText:Show();
                    end
                    statusFrame.RightText:SetText(valueDisplay);
                    statusFrame.RightText:Show();
                    textString:Hide();
                else
                    valueDisplay = "(" .. math.ceil((value / valueMax) * 100) .. "%) " .. valueDisplay .. " / " .. valueMaxDisplay;
                end
                textString:SetText(valueDisplay);
            else
                valueDisplay = math.ceil((value / valueMax) * 100) .. "%";
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

local function isPlate(frame)
    local name = frame:GetName()
    if name and name:find("NamePlate") then
        return true
    end

    return false
end

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
    local frames = { WorldFrame:GetChildren() }
    for _, plate in ipairs(frames) do
        if not plate:IsForbidden() and isPlate(plate) and C_NamePlate.GetNamePlates() and plate:IsVisible() then
            local v = plate:GetChildren()
            if v.healthBar then
                SmoothBar(v.healthBar)
            end
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
            if (UnitIsConnected(unit) and UnitClass(unit) and unit ~= "player" and not statusbar.lockColor) then -- ArenaFrames lock/unlock color
                local _, class = UnitClass(unit)
                local c = RAID_CLASS_COLORS[class]
                if c then
                    statusbar:SetStatusBarColor(c.r, c.g, c.b)
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

-- remove red tint when low on health
local function RemoveRedFromPortrait(bar)
    local parent = bar:GetParent()
    local r, g, b = parent.portrait:GetVertexColor()
    if g == 0 and r > .99 and b == 0 then
        parent.portrait:SetVertexColor(1.0, 1.0, 1.0, 1.0)
    end
end
hooksecurefunc("TargetHealthCheck", RemoveRedFromPortrait)
hooksecurefunc("PartyMemberHealthCheck", RemoveRedFromPortrait)

-- remove low health flashing from portraits
local function RemoveFlashFromPortrait(self)
    if self.portrait:GetAlpha() < 1 then
        self.portrait:SetAlpha(1)
    end
end
hooksecurefunc("TargetFrame_HealthUpdate", RemoveFlashFromPortrait)
hooksecurefunc("PartyMemberFrame_UpdateMemberHealth", RemoveFlashFromPortrait)

-- highlight dispellable shit from enemies target/focus

local function Update(frame)
    local buffFrame, frameStealable, icon, debuffType, isStealable, _
    local selfName = frame:GetName()
    local isEnemy = UnitIsEnemy(PlayerFrame.unit, frame.unit)
    for i = 1, MAX_TARGET_BUFFS do
        _, icon, _, debuffType, _, _, _, isStealable = UnitBuff(frame.unit, i)
        if (icon and (not frame.maxBuffs or i <= frame.maxBuffs)) then
            local frameName = selfName .. 'Buff' .. i
            buffFrame = _G[frameName]
            frameStealable = _G[frameName .. 'Stealable']
            if (isEnemy and isStealable and debuffType == 'Magic') then
                frameStealable:Show()
            else
                frameStealable:Hide()
            end
        end
    end
end
hooksecurefunc("TargetFrame_UpdateAuras", Update);

hooksecurefunc("TargetofTargetHealthCheck", function(self)
    local r, g, b = self.portrait:GetVertexColor()
    if g == 0 and r > .99 and b == 0 then
        self.portrait:SetVertexColor(1.0, 1.0, 1.0, 1.0)
    end
end)

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

-- Prevent displaying the server name in player nameplates
hooksecurefunc("CompactUnitFrame_UpdateName", function(frame)
    if frame.unit:find("^nameplate") and UnitIsPlayer(frame.unit) then
        frame.name:SetText((UnitName(frame.unit)):gsub("%-.*", "")) -- not sure if UnitName() adds the realm so :gsub() might not be needed
    end
end)

-- Hide HealthBar under unit tooltips
GameTooltip:HookScript("OnTooltipSetUnit", function()
    GameTooltipStatusBar:Hide()
end)

-- Change BuffFrame position
hooksecurefunc("UIParent_UpdateTopFramePositions", function()
    BuffFrame:ClearAllPoints()
    BuffFrame:SetPoint("TOPRIGHT", UIParent, "TOPRIGHT", -180, -13)
end)

-- Add class-coloured names on mouseover tooltips

GameTooltip:HookScript("OnTooltipSetUnit", function(GameTooltip)
    local _, unit = GameTooltip:GetUnit()

    if UnitIsPlayer(unit) then
        local _, class = UnitClass(unit)
        local color = class and (CUSTOM_CLASS_COLORS or RAID_CLASS_COLORS)[class]
        if color then
            local text = GameTooltipTextLeft1:GetText()
            GameTooltipTextLeft1:SetFormattedText("|cff%02x%02x%02x%s|r", color.r * 255, color.g * 255, color.b * 255, text:match("|cff\x\x\x\x\x\x(.+)|r") or text)
        end
    end
end)

local f = CreateFrame("Frame")
f:RegisterEvent("PLAYER_LOGIN")
f:SetScript("OnEvent", function(self)
    CustomCvar()
    OnInit()

    self:UnregisterEvent("PLAYER_LOGIN")
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
    ["Earth Elemental Totem"] = true,
    ["Earthbind Totem"] = true,
    ["Fire Elemental Totem"] = true,
    ["Fire Resistance Totem"] = true,
    ["Fire Resistance Totem II"] = true,
    ["Fire Resistance Totem III"] = true,
    ["Fire Resistance Totem IV"] = true,
    ["Fire Resistance Totem V"] = true,
    ["Fire Resistance Totem VI"] = true,
    ["Flametongue Totem"] = true,
    ["Flametongue Totem II"] = true,
    ["Flametongue Totem III"] = true,
    ["Flametongue Totem IV"] = true,
    ["Flametongue Totem V"] = true,
    ["Flametongue Totem VI"] = true,
    ["Flametongue Totem VII"] = true,
    ["Flametongue Totem VIII"] = true,
    ["Frost Resistance Totem"] = true,
    ["Frost Resistance Totem II"] = true,
    ["Frost Resistance Totem III"] = true,
    ["Frost Resistance Totem IV"] = true,
    ["Frost Resistance Totem V"] = true,
    ["Frost Resistance Totem VI"] = true,
    ["Grounding Totem"] = true,
    ["Healing Stream Totem"] = true,
    ["Healing Stream Totem II"] = true,
    ["Healing Stream Totem III"] = true,
    ["Healing Stream Totem IV"] = true,
    ["Healing Stream Totem V"] = true,
    ["Healing Stream Totem VI"] = true,
    ["Healing Stream Totem VII"] = true,
    ["Healing Stream Totem VIII"] = true,
    ["Healing Stream Totem IX"] = true,
    ["Healing Stream Totem X"] = true,
    ["Magma Totem"] = true,
    ["Magma Totem II"] = true,
    ["Magma Totem III"] = true,
    ["Magma Totem IV"] = true,
    ["Magma Totem V"] = true,
    ["Magma Totem VI"] = true,
    ["Magma Totem VII"] = true,
    ["Mana Spring Totem"] = true,
    ["Mana Spring Totem II"] = true,
    ["Mana Spring Totem III"] = true,
    ["Mana Spring Totem IV"] = true,
    ["Mana Spring Totem V"] = true,
    ["Mana Spring Totem VI"] = true,
    ["Mana Spring Totem VII"] = true,
    ["Mana Spring Totem VIII"] = true,
    ["Mana Tide Totem"] = true,
    ["Nature Resistance Totem"] = true,
    ["Nature Resistance Totem II"] = true,
    ["Nature Resistance Totem III"] = true,
    ["Nature Resistance Totem IV"] = true,
    ["Nature Resistance Totem V"] = true,
    ["Nature Resistance Totem VI"] = true,
    ["Searing Totem"] = true,
    ["Searing Totem II"] = true,
    ["Searing Totem III"] = true,
    ["Searing Totem IV"] = true,
    ["Searing Totem V"] = true,
    ["Searing Totem VI"] = true,
    ["Searing Totem VII"] = true,
    ["Searing Totem VIII"] = true,
    ["Searing Totem IX"] = true,
    ["Searing Totem X"] = true,
    ["Sentry Totem"] = true,
    ["Stoneclaw Totem"] = true,
    ["Stoneclaw Totem II"] = true,
    ["Stoneclaw Totem III"] = true,
    ["Stoneclaw Totem IV"] = true,
    ["Stoneclaw Totem V"] = true,
    ["Stoneclaw Totem VI"] = true,
    ["Stoneclaw Totem VII"] = true,
    ["Stoneclaw Totem VIII"] = true,
    ["Stoneclaw Totem IX"] = true,
    ["Stoneclaw Totem X"] = true,
    ["Stoneskin Totem"] = true,
    ["Stoneskin Totem II"] = true,
    ["Stoneskin Totem III"] = true,
    ["Stoneskin Totem IV"] = true,
    ["Stoneskin Totem V"] = true,
    ["Stoneskin Totem VI"] = true,
    ["Stoneskin Totem VII"] = true,
    ["Stoneskin Totem VIII"] = true,
    ["Stoneskin Totem IX"] = true,
    ["Stoneskin Totem X"] = true,
    ["Strength of Earth Totem"] = true,
    ["Strength of Earth Totem II"] = true,
    ["Strength of Earth Totem III"] = true,
    ["Strength of Earth Totem IV"] = true,
    ["Strength of Earth Totem V"] = true,
    ["Strength of Earth Totem VI"] = true,
    ["Strength of Earth Totem VII"] = true,
    ["Strength of Earth Totem VIII"] = true,
    ["Totem of Wrath I"] = true,
    ["Totem of Wrath II"] = true,
    ["Totem of Wrath III"] = true,
    ["Totem of Wrath IV"] = true,
    ["Windfury Totem"] = true,
    ["Wrath of Air Totem"] = true,
    ["Cleansing Totem"] = true,

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
    if (HideNameplateUnits[name] or HideNameplateUnits[npcId])
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

local plateUpdateElapsed = 0
plateEventFrame:SetScript("OnUpdate", function(self, elapsed)
    -- self and elapsed unused. Are you going to throttle it?

    for guid, nameplate in pairs(nameplatesToRecheck) do
        nameplatesToRecheck[guid] = nil
        if nameplate.recheckGuid == guid and nameplate.UnitFrame then
            HandleNewNameplate(nameplate, nameplate.UnitFrame.displayedUnit)
        end
    end

    if next(nameplatesToRecheck) == nil then
        plateEventFrame:Hide()
    end
end)

plateEventFrame:SetScript("OnEvent", function(_, event, unit)
    ----------------------------------------
    -- watch for recasts or damage to totems
    ----------------------------------------
    if event == "COMBAT_LOG_EVENT_UNFILTERED" then
        local _, action, _, sourceGuid, _, _, _, destGuid, destName, _, _, ex1, _, _, ex4 = CombatLogGetCurrentEventInfo()

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
    end

    ----------------------------------------
    -- clear the totems on loading screens
    ----------------------------------------
    if event == "PLAYER_ENTERING_WORLD" then
        tremorTotems = {}
        return
    end

    ----------------------------------------
    -- nameplates being added or removed
    ----------------------------------------
    local nameplate = C_NamePlate.GetNamePlateForUnit(unit)
    if not nameplate then
        return
    end

    if event == "NAME_PLATE_UNIT_ADDED" then
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
        -- this doesnt work for non-interruptable shield castbar when the enemy "spam-chains" such spells
        local cb = nameplate.UnitFrame.CastBar
        cb:HookScript("OnShow", function()
            if not cb:IsShown() then
                cb:Show()
            end
            local _, _, _, _, _, _, _, notInterruptible = UnitCastingInfo(unit)
            local _, _, _, _, _, _, nonInterruptible = UnitChannelInfo(unit)
            if notInterruptible or nonInterruptible then
                cb:ClearAllPoints()
                cb:SetPoint("TOP", hb, "BOTTOM", 9, -12)
            else
                cb:ClearAllPoints()
                cb:SetPoint("TOP", hb, "BOTTOM", 9, -4)
            end
        end)

        HandleNewNameplate(nameplate, unit)
        return
    end

    if event == "NAME_PLATE_UNIT_REMOVED" then
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

local gossipSkipType = {
    ["banker"] = 1,
    ["taxi"] = 1,
    ["trainer"] = 1,
    ["vendor"] = 1,
    ["battlemaster"] = 1,
}

local IsShiftKeyDown, IsAltKeyDown, IsControlKeyDown = IsShiftKeyDown, IsAltKeyDown, IsControlKeyDown
local GetNumGossipOptions, GetNumGossipActiveQuests, GetNumGossipAvailableQuests = GetNumGossipOptions, GetNumGossipActiveQuests, GetNumGossipAvailableQuests
local GetGossipOptions = GetGossipOptions
local SelectGossipOption, Dismount = SelectGossipOption, Dismount

local skipEventFrame = CreateFrame("frame")
skipEventFrame:RegisterEvent("GOSSIP_SHOW")
skipEventFrame:SetScript("OnEvent", function()
    if not IsShiftKeyDown() and GetNumGossipOptions() == 1 and GetNumGossipActiveQuests() == 0 and GetNumGossipAvailableQuests() == 0 then
        local _, gossipType = GetGossipOptions()
        if gossipSkipType[gossipType] then
            SelectGossipOption(1)
            if gossipType == "taxi" then
                Dismount()
            end
            return
        end
    end
    if GetNumGossipOptions() > 0 and not IsShiftKeyDown() and not IsAltKeyDown() and not IsControlKeyDown() then
        local options = { GetGossipOptions() }
        for i = 1, GetNumGossipOptions() do
            if options[(i - 1) * 2 + 2] == "vendor" then
                SelectGossipOption(i)
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

-- Filter out the Vampiric Embrace spam healing combat text due to Blizzard being retarded as usual (thx Xyz)
-- PlaySound whenever an enemy casts Tremor Totem in arena (previously handled in a standalone addon "EvolveAlert" - https://github.com/Evolvee/EvolvePWPUI-ClassicTBC/tree/main/Interface/AddOns/EvolveAlert)

local COMBATLOG_FILTER_HOSTILE_PLAYERS = COMBATLOG_FILTER_HOSTILE_PLAYERS;
local eventRegistered = {
    ["SPELL_PERIODIC_HEAL"] = true,
    ["SPELL_CAST_SUCCESS"] = true
}
local PF = CreateFrame("Frame")
PF:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
PF:SetScript("OnEvent", function()
    local _, eventType, _, _, _, sourceFlags, _, _, _, _, _, spellID = CombatLogGetCurrentEventInfo()
    local isSourceEnemy = CombatLog_Object_IsA(sourceFlags, COMBATLOG_FILTER_HOSTILE_PLAYERS)
    local _, instanceType = IsInInstance()

    if not (eventRegistered[eventType]) then
        return
    end

    if isSourceEnemy and instanceType == "arena" and spellID == 8143 and eventType == "SPELL_CAST_SUCCESS" then
        PlaySound(12889)
    end

    if eventType == "SPELL_PERIODIC_HEAL" and spellID == 15290 then
        COMBAT_TEXT_TYPE_INFO.PERIODIC_HEAL.show = nil
        SetCVar("floatingCombatTextCombatHealing", 0)
    else
        COMBAT_TEXT_TYPE_INFO.PERIODIC_HEAL.show = 1
        SetCVar("floatingCombatTextCombatHealing", 1)
    end
end)

-- Moving right and left multibar (actionbars at the right side) to match the 2.4.3 position
local function SetPosition(frame, ...)
    if InCombatLockdown() then
        return
    end

    if type(frame) == "string" then
        frame = _G[frame]
    end
    if type(frame) == "table" and type(frame.IsObjectType) == "function" and frame:IsObjectType("Frame") then
        frame:SetMovable(true)
        frame:SetUserPlaced(true)
        frame:SetDontSavePosition(true)
        if ... then
            frame:ClearAllPoints()
            frame:SetPoint(...)
        end
        frame:SetMovable(false)
    end
end
SetPosition(MultiBarRight, "TOPRIGHT", VerticalMultiBarsContainer, "TOPRIGHT", 2, 3)
SetPosition(MultiBarLeft, "TOPLEFT", VerticalMultiBarsContainer, "TOPLEFT", 2, 3)

local widget = _G["UIWidgetBelowMinimapContainerFrame"]
hooksecurefunc(widget, "SetPoint", function(self, _, parent)
    if parent and (parent == "MinimapCluster" or parent == _G["MinimapCluster"]) then
        widget:ClearAllPoints()
        widget:SetPoint("TOPRIGHT", UIWidgetTopCenterContainerFrame, "BOTTOMRIGHT", 585, -370)
    end
end)

-- Temporary way to disable the dogshit cata spellqueue they brought to tbc instead of using the proper Retail TBC one that bypasses GCD: /console SpellQueueWindow 0

-- ^^ current value for testing:100, 400 was too cancerous - sometimes prevented the cast with /cqs+cast macro altogether

-- Ingame commmand for classcoloured names in chat: /console SET chatClassColorOverride "0"
-- trying to remove the cancer weather that is not part of the video settings as it used to be in 2.4.3: /console set weatherdensity 0 // /console WeatherDensity 0

-- Disable the ability to scroll chat with mouse wheel (fucks binds with the mouse-wheel-up/down): /console chatMouseScroll 0

-- FUCK BLIZZARD, garbage company:
--https://eu.forums.blizzard.com/en/wow/t/lf-a-blizzard-response-all-talents-that-reduce-spell-resists-in-pvp-no-longer-works-since-phase-2/320188
-- https://us.forums.blizzard.com/en/wow/t/all-talents-that-reduce-spell-resists-in-pvp-no-longer-works-since-phase-2/1114096/5

-- WE DID IT REDDIT - https://github.com/JamminL/wotlk-classic-bugs/issues/143#issuecomment-1209998266 - after a year of TBC being absolutely fucking unplayable, especially for a shadow priest, they "finally" fixed it... So adding more appropriate message instead for WOTLK (hi sacred cleansing)...

--Login message informing all scripts of this file were properly executed

ChatFrame1:AddMessage("EvolvePWPUI-ClassicWOTLK v1.0 Loaded successfully!", 0, 205, 255)
ChatFrame1:AddMessage("Check for updates at:", 0, 205, 255)
ChatFrame1:AddMessage("https://github.com/Evolvee/EvolvePWPUI-ClassicWOTLK", 0, 205, 255)