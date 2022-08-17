--EVOLVE PWP UI


--dark theme
local frame2=CreateFrame("Frame")
frame2:RegisterEvent("ADDON_LOADED")
frame2:SetScript("OnEvent", function(self, event, addon)
        if (addon == "Blizzard_TimeManager") then
                for i, v in pairs({PlayerFrameTexture, PetFrameTexture, PartyMemberFrame1Texture, PartyMemberFrame2Texture, PartyMemberFrame3Texture, PartyMemberFrame4Texture, SlidingActionBarTexture0,
        SlidingActionBarTexture1,
        MainMenuBarLeftEndCap,
        MainMenuBarRightEndCap,
                        PartyMemberFrame1PetFrameTexture, PartyMemberFrame2PetFrameTexture, PartyMemberFrame3PetFrameTexture, PartyMemberFrame4PetFrameTexture, BonusActionBarTexture0, BonusActionBarTexture1,
                        TargetofTargetTexture, TargetofFocusTexture, BonusActionBarFrameTexture0, BonusActionBarFrameTexture1, BonusActionBarFrameTexture2, BonusActionBarFrameTexture3,
                        BonusActionBarFrameTexture4, MainMenuBarTexture0, MainMenuBarTexture1, MainMenuBarTexture2, MainMenuBarTexture3, MainMenuMaxLevelBar0, MainMenuMaxLevelBar1, MainMenuMaxLevelBar2,
                        MainMenuMaxLevelBar3, MinimapBorder, CastingBarFrameBorder, MiniMapBattlefieldBorder, FocusFrameSpellBarBorder, CastingBarBorder, TargetFrameSpellBarBorder, MiniMapTrackingButtonBorder, MiniMapLFGFrameBorder, MainMenuXPBarTextureLeftCap, MainMenuXPBarTextureRightCap, ReputationWatchBarTexture0, ReputationWatchBarTexture1,
   ReputationWatchBarTexture2, ReputationWatchBarTexture3,
   ReputationXPBarTexture0, ReputationXPBarTexture1,
   ReputationXPBarTexture2, ReputationXPBarTexture3, MainMenuXPBarTextureMid, MiniMapBattlefieldBorder,
                        MiniMapMailBorder, MinimapBorderTop,
                        select(1, TimeManagerClockButton:GetRegions())
                }) do
                        v:SetVertexColor(.0, .0, .0)
                end

                for i,v in pairs({ select(2, TimeManagerClockButton:GetRegions()) }) do
                        v:SetVertexColor(1, 1, 1)
                end

                self:UnregisterEvent("ADDON_LOADED")
                frame2:SetScript("OnEvent", nil)
		end
end)


-- class colour nameplates

SetCVar("ShowClassColorInFriendlyNameplate", 1)
SetCVar("ShowClassColorInNameplate", 1)


-- adding class colours to guild tab

local FauxScrollFrame_GetOffset = FauxScrollFrame_GetOffset
local GetGuildRosterInfo = GetGuildRosterInfo
local GuildListScrollFrame = GuildListScrollFrame
local GUILDMEMBERS_TO_DISPLAY = GUILDMEMBERS_TO_DISPLAY
local RAID_CLASS_COLORS = RAID_CLASS_COLORS

hooksecurefunc("GuildStatus_Update", function()
    local _, guildIndex, class, color
    local guildOffset = FauxScrollFrame_GetOffset(GuildListScrollFrame)
    for i=1,GUILDMEMBERS_TO_DISPLAY do
        guildIndex = guildOffset + i
        _, _, _, _, _, _, _, _, _, _, class = GetGuildRosterInfo(guildIndex)
        if not class then
            break
        end
        color = RAID_CLASS_COLORS[class]
        _G["GuildFrameButton"..i.."Class"]:SetTextColor(color.r, color.g, color.b)
    end
end)

-- ToT texture closing the alpha gap (previously handled by ClassPortraits itself)

TargetFrameToTTextureFrameTexture:SetVertexColor(0,0,0)



--minimap buttons, horde/alliance icons on target/focus/player,minimap city location, minimap sun/clock, minimap text frame,minimap zoomable with mousewheel etc

MinimapZoomIn:Hide()
MinimapZoomOut:Hide()
Minimap:EnableMouseWheel(true)
Minimap:SetScript('OnMouseWheel', function(self, delta)
        if delta > 0 then
                Minimap_ZoomIn()
        else
                Minimap_ZoomOut()
        end
end)
MiniMapTracking:Hide()
MinimapBorderTop:Hide()
PlayerPVPIcon:SetAlpha(0)
TargetFrameTextureFramePVPIcon:SetAlpha(0)
FocusFrameTextureFramePVPIcon:SetAlpha(0)
for i=1,4 do
   _G["PartyMemberFrame"..i.."PVPIcon"]:SetAlpha(0)
end
GameTimeTexture:Hide()
GameTimeFrame:Hide()
MiniMapMailFrame:ClearAllPoints() MiniMapMailFrame:SetPoint('BOTTOMRIGHT', 0, -10)
MinimapZoneTextButton:Hide()

-- MiniMapWorldMapButton:Hide() needs to be done like this since patch 2.5.3 for some reason

MiniMapWorldMapButton:Hide()
MiniMapWorldMapButton.Show = function() return end




-- Attempt to Hide the modern shitclient multigroup icon at PlayerFrame

local mg = PlayerPlayTime:GetParent().MultiGroupFrame
hooksecurefunc(mg, "Show", mg.Hide)






-- Disable combat text spam over player & pet frame
PlayerHitIndicator:SetText(nil)
PlayerHitIndicator.SetText = function() end

PetHitIndicator:SetText(nil)
PetHitIndicator.SetText = function() end





--current HP/MANA value
PetFrameHealthBar.useSimpleValue = true
PetFrameManaBar.useSimpleValue = true
PlayerFrameHealthBar.useSimpleValue = true
PlayerFrameManaBar.useSimpleValue = true
TargetFrameHealthBar.useSimpleValue = true
TargetFrameManaBar.useSimpleValue = true
FocusFrameHealthBar.useSimpleValue = true
FocusFrameManaBar.useSimpleValue = true
for i=1,4 do
   _G["PartyMemberFrame"..i.."HealthBar"].useSimpleValue = true
   _G["PartyMemberFrame"..i.."ManaBar"].useSimpleValue = true
end

function TextStatusBar_UpdateTextString(textStatusBar)
   if ( not textStatusBar ) then
      textStatusBar = this;
   end
   local textString = textStatusBar.TextString;
   if(textString) then
      local value = textStatusBar.finalValue or textStatusBar:GetValue();
      local valueMin, valueMax = textStatusBar:GetMinMaxValues();

      if ( ( tonumber(valueMax) ~= valueMax or valueMax > 0 ) and not ( textStatusBar.pauseUpdates ) ) then
         textStatusBar:Show();
         if ( value and valueMax > 0 and ( GetCVar("statusTextPercentage") == "1" or textStatusBar.showPercentage ) ) then
            if ( value == 0 and textStatusBar.zeroText ) then
               textString:SetText(textStatusBar.zeroText);
               textStatusBar.isZero = 1;
               textString:Show();
               return;
            end
            value = tostring(math.ceil((value / valueMax) * 100)) .. "%";
            if ( textStatusBar.prefix and (textStatusBar.alwaysPrefix or not (textStatusBar.cvar and GetCVar(textStatusBar.cvar) == "1" and textStatusBar.textLockable) ) ) then
               textString:SetText(textStatusBar.prefix .. " " .. value);
            else
               textString:SetText(value);
            end
         elseif ( value == 0 and textStatusBar.zeroText ) then
            textString:SetText(textStatusBar.zeroText);
            textStatusBar.isZero = 1;
            textString:Show();
            return;
         elseif ( textStatusBar.useSimpleValue ) then
            textStatusBar.isZero = nil;
            textString:SetText(value);
         else
            textStatusBar.isZero = nil;
            if ( textStatusBar.prefix and (textStatusBar.alwaysPrefix or not (textStatusBar.cvar and GetCVar(textStatusBar.cvar) == "1" and textStatusBar.textLockable) ) ) then
               textString:SetText(textStatusBar.prefix.." "..value.." / "..valueMax);
            else
               textString:SetText(value.." / "..valueMax);
            end
         end

         if ( (textStatusBar.cvar and GetCVar(textStatusBar.cvar) == "1" and textStatusBar.textLockable) or textStatusBar.forceShow ) then
            textString:Show();
         elseif ( textStatusBar.lockShow > 0 ) then
            textString:Show();
         else
            textString:Hide();
         end
      else
         textString:Hide();
         textStatusBar:Hide();
      end
   end
end



--Pet Frame (IT IS NECCESSARY TO COPY INTERFACE/TARGETINGFRAME FOLDER AS WELL)

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


--Party Member Frames 1-4

PartyMemberFrame1Texture:SetTexture("Interface\\AddOns\\TextureScript\\UI-PartyFrame")
PartyMemberFrame1HealthBar:SetWidth(70)
PartyMemberFrame1HealthBar:SetHeight(18)
PartyMemberFrame1ManaBar:SetWidth(71)
PartyMemberFrame1ManaBar:SetHeight(10)
PartyMemberFrame1HealthBar:SetPoint("TOPLEFT", 45, -14)
PartyMemberFrame1ManaBar:SetPoint("TOPLEFT", 45, -32)



PartyMemberFrame2Texture:SetTexture("Interface\\AddOns\\TextureScript\\UI-PartyFrame")
PartyMemberFrame2HealthBar:SetWidth(70)
PartyMemberFrame2HealthBar:SetHeight(18)
PartyMemberFrame2ManaBar:SetWidth(71)
PartyMemberFrame2ManaBar:SetHeight(10)
PartyMemberFrame2HealthBar:SetPoint("TOPLEFT", 45, -14)
PartyMemberFrame2ManaBar:SetPoint("TOPLEFT", 45, -32)


PartyMemberFrame3Texture:SetTexture("Interface\\AddOns\\TextureScript\\UI-PartyFrame")
PartyMemberFrame3HealthBar:SetWidth(70)
PartyMemberFrame3HealthBar:SetHeight(18)
PartyMemberFrame3ManaBar:SetWidth(71)
PartyMemberFrame3ManaBar:SetHeight(10)
PartyMemberFrame3HealthBar:SetPoint("TOPLEFT", 45, -14)
PartyMemberFrame3ManaBar:SetPoint("TOPLEFT", 45, -32)


PartyMemberFrame4Texture:SetTexture("Interface\\AddOns\\TextureScript\\UI-PartyFrame")
PartyMemberFrame4HealthBar:SetWidth(70)
PartyMemberFrame4HealthBar:SetHeight(18)
PartyMemberFrame4ManaBar:SetWidth(71)
PartyMemberFrame4ManaBar:SetHeight(10)
PartyMemberFrame4HealthBar:SetPoint("TOPLEFT", 45, -14)
PartyMemberFrame4ManaBar:SetPoint("TOPLEFT", 45, -32)



--Player Frame, Focus Frame, Target Frame

PlayerFrameTexture:SetTexture("Interface\\AddOns\\TextureScript\\UI-TargetingFrame")
PlayerStatusTexture:SetTexture("Interface\\AddOns\\TextureScript\\UI-Player-Status")
PlayerFrameHealthBar:SetPoint("TOPLEFT", 106, -22)
PlayerFrameHealthBar:SetWidth(119)
PlayerFrameHealthBar:SetHeight(29)
PlayerName:SetPoint("CENTER", 50, 35)
PlayerFrameHealthBarText:SetPoint("CENTER", 50, 12)
PlayerFrameHealthBarText:SetFont("Fonts/FRIZQT__.TTF", 16, "OUTLINE")

-- retarded classic client forces you to reapply this on every reload (god bless 2.4.3)

hooksecurefunc("PlayerFrame_UpdateLevelTextAnchor", function(level)
  if ( level >= 100 ) then
    PlayerLevelText:Hide();
    PlayerFrameHealthBar:SetPoint("TOPLEFT", 106, -22);
  else
    PlayerLevelText:Hide();
    PlayerFrameHealthBar:SetPoint("TOPLEFT", 106, -22);
  end
end)


hooksecurefunc("TargetFrame_CheckFaction", function(self)
    self.nameBackground:SetVertexColor(0.0, 0.0, 0.0, 0.5);
end)


-- end of retardation


TargetFrameHealthBar:SetWidth(119)
TargetFrameHealthBar:SetHeight(29)
TargetFrameHealthBar:SetPoint("TOPLEFT", 7, -22)TargetFrameHealthBar:SetPoint("CENTER", -50, 6)
TargetFrameNameBackground:Hide()
TargetFrameTextureFrameName:SetPoint("CENTER", -50, 35)
TargetFrameHealthBar.TextString:SetPoint("CENTER", -50, 12)
TargetFrameHealthBar.TextString:SetFont("Fonts/FRIZQT__.TTF", 16, "OUTLINE")


FocusFrameHealthBar:SetWidth(119)
FocusFrameHealthBar:SetHeight(29)
FocusFrameHealthBar:SetPoint("TOPLEFT", 7, -22)FocusFrameHealthBar:SetPoint("CENTER", -50, 6)
FocusFrameNameBackground:Hide()
FocusFrameTextureFrameName:SetPoint("CENTER", -50, 35)
FocusFrameHealthBar.TextString:SetPoint("CENTER", -50, 12)
FocusFrameHealthBar.TextString:SetFont("Fonts/FRIZQT__.TTF", 16, "OUTLINE")

-- aparently "FocusFrame_CheckClassification" doesnt exist anymore in this modern abomination of a client so docking it inside Target...

hooksecurefunc("TargetFrame_CheckClassification", function(self, forceNormalTexture)
    local classification = UnitClassification("target")
    if classification == "elite" or classification == "worldboss" then
        TargetFrameTextureFrameTexture:SetTexture("Interface\\AddOns\\TextureScript\\UI-TargetingFrame-Elite")
        FocusFrameTextureFrameTexture:SetTexture("Interface\\AddOns\\TextureScript\\UI-TargetingFrame-Elite")
    elseif classification == "rareelite" then
        TargetFrameTextureFrameTexture:SetTexture("Interface\\AddOns\\TextureScript\\UI-TargetingFrame-Rare-Elite")
        FocusFrameTextureFrameTexture:SetTexture("Interface\\AddOns\\TextureScript\\UI-TargetingFrame-Rare-Elite")
    elseif classification == "rare" then
        TargetFrameTextureFrameTexture:SetTexture("Interface\\AddOns\\TextureScript\\UI-TargetingFrame-Rare")
        FocusFrameTextureFrameTexture:SetTexture("Interface\\AddOns\\TextureScript\\UI-TargetingFrame-Rare")
    else
        TargetFrameTextureFrameTexture:SetTexture("Interface\\AddOns\\TextureScript\\UI-TargetingFrame")
        FocusFrameTextureFrameTexture:SetTexture("Interface\\AddOns\\TextureScript\\FocusFrame")
    end

    -- fix Blizzard's overlapping backgrounds causing a darker line
    if forceNormalTexture then
        if classification ~= "minus" then
            self.Background:SetHeight(24)
        else
            -- not sure if "minus" mobs exist in TBC - wowpedia says:
            -- Patch 5.0.4: used for minion mobs that typically have less health than normal mobs of their level, but engage the player in larger numbers
            -- if they do exist, have to check if the default 12 is an OK size for it not to overlap
            -- self.Background:SetHeight(12)
        end
    else
        self.Background:SetHeight(24)
    end
end)



--Left and Right Dragons on action bar hidden

MainMenuBarLeftEndCap:Hide()
MainMenuBarRightEndCap:Hide()





--Hidden Player glow combat/rested flashes + Hidden Focus Flash on Focused Target + Trying to completely hide the red glowing status on target/focus frames when they have low HP(this is not completely fixed yet)


hooksecurefunc("PlayerFrame_UpdateStatus", function()
   if IsResting("player") then
      PlayerStatusTexture:Hide()
      PlayerRestGlow:Hide()
      PlayerStatusGlow:Hide()
      elseif PlayerFrame.inCombat then
      PlayerStatusTexture:Hide()
      PlayerAttackGlow:Hide()
      PlayerStatusGlow:Hide()
   end
end)




--Player,Focus,Target,Pet and Party 1-4 Frames cleaned of names, group frame titles, combat indicators, glows, leader icons, master looter icons, levels, rest icons, !Improved Error Frame button hidden, Red Erros in top-center of screen hidden etc


PlayerName:Hide()
PetName:Hide()
PlayerFrameGroupIndicator:SetScript("OnShow", PlayerFrameGroupIndicator.Hide)
ActionBarUpButton:Hide()
ActionBarDownButton:Hide()
MainMenuBarPageNumber:SetAlpha(0)

UIErrorsFrame:Hide()

PlayerRestIcon:SetAlpha(0)
PlayerAttackIcon:SetAlpha(0)
PlayerRestGlow:SetAlpha(0)
PlayerLevelText:SetAlpha(0)
PlayerAttackGlow:SetAlpha(0)
PlayerStatusGlow:SetAlpha(0)
PlayerAttackBackground:SetAlpha(0)
PlayerLeaderIcon:SetAlpha(0)
PlayerStatusTexture:SetAlpha(0)
PlayerMasterIcon:SetAlpha(0)

FocusFrameTextureFrameLevelText:SetAlpha(0)
FocusFrameTextureFrameLeaderIcon:SetAlpha(0)

TargetFrameTextureFrameLevelText:SetAlpha(0)
TargetFrameTextureFrameLeaderIcon:SetAlpha(0)



PartyMemberFrame1LeaderIcon:SetAlpha(0)
PartyMemberFrame1MasterIcon:SetAlpha(0)

PartyMemberFrame2LeaderIcon:SetAlpha(0)
PartyMemberFrame2MasterIcon:SetAlpha(0)

PartyMemberFrame3LeaderIcon:SetAlpha(0)
PartyMemberFrame3MasterIcon:SetAlpha(0)

PartyMemberFrame4LeaderIcon:SetAlpha(0)
PartyMemberFrame4MasterIcon:SetAlpha(0)

PartyMemberFrame1Name:SetAlpha(0)
PartyMemberFrame2Name:SetAlpha(0)
PartyMemberFrame3Name:SetAlpha(0)
PartyMemberFrame4Name:SetAlpha(0)

ChatFrameMenuButton:Hide()
ChatFrameChannelButton:Hide()

function PlayerFrameMultiGroupFrame_OnLoad(self)
    self:Hide()
end


--POSITION OF DEBUFFS ON PARTY MEMBER FRAMES 1-4

PartyMemberFrame1Debuff1:ClearAllPoints();
PartyMemberFrame1Debuff1:SetPoint("BOTTOMLEFT", 45.00000048894432, -9.374971298968035);

PartyMemberFrame2Debuff1:ClearAllPoints();
PartyMemberFrame2Debuff1:SetPoint("BOTTOMLEFT", 44.99999870080508, -8.437474379317337);

PartyMemberFrame3Debuff1:ClearAllPoints();
PartyMemberFrame3Debuff1:SetPoint("BOTTOMLEFT", 44.99999870080508, -10.31263004755721);

PartyMemberFrame4Debuff1:ClearAllPoints();
PartyMemberFrame4Debuff1:SetPoint("BOTTOMLEFT", 44.99999870080508, -8.437541575172077);





-- TargetFrame castbar slight up-scaling

TargetFrameSpellBar:SetScale(1.1)


-- FocusFrame castbar slight up-scaling

FocusFrameSpellBar:SetScale(1.1)


-- Rework Main Cast-Bar texture (castbar is now going to be round) - this is kinda "idk kev"... not sure of I rly like it, yet

CastingBarFrame:SetScale(1)
CastingBarFrame.Border:SetTexture("Interface\\CastingBar\\UI-CastingBar-Border-Small")
CastingBarFrame.Flash:SetTexture("Interface\\CastingBar\\UI-CastingBar-Flash-Small")
CastingBarFrame.Spark:SetHeight(50)
CastingBarFrame.Text:ClearAllPoints()
CastingBarFrame.Text:SetPoint("CENTER", 0, 1)
CastingBarFrame.Border:SetWidth(CastingBarFrame.Border:GetWidth() + 4)
CastingBarFrame.Flash:SetWidth(CastingBarFrame.Flash:GetWidth() + 4)CastingBarFrame.BorderShield:SetWidth(CastingBarFrame.BorderShield:GetWidth() + 4)
CastingBarFrame.Border:SetPoint("TOP", 0, 26)
CastingBarFrame.Flash:SetPoint("TOP", 0, 26)
CastingBarFrame.BorderShield:SetPoint("TOP", 0, 26)
		


--Action bar buttons are now bigger, better looking and also fixes spellbook/wep switch bugging of dark theme

hooksecurefunc("ActionButton_ShowGrid", function(Button)
   if not Button then
      Button = this
   end
   _G[Button:GetName().."NormalTexture"]:SetVertexColor(1, 1, 1, 1)
end)
for _, Bar in pairs({ "Action", "MultiBarBottomLeft", "MultiBarBottomRight", "MultiBarLeft", "MultiBarRight", "Stance", "PetAction" }) do
for i = 1, 12 do
local Button = Bar.."Button"..i
if _G[Button] then _G[Button.."Icon"]:SetTexCoord(0.06, 0.94, 0.06, 0.94) end
end
end

--smooth status bars(animated)

local floor = math.floor
local barstosmooth = {
   PlayerFrameHealthBar = "player",
   PlayerFrameManaBar = "player",
   TargetFrameHealthBar = "target",
   PetFrameHealthBar = "pet",
   PetFrameManaBar = "pet",
   TargetFrameManaBar = "target",
   FocusFrameHealthBar = "focus",
   FocusFrameManaBar = "focus",
   ReputationWatchStatusBar = "",
   PartyMemberFrame1HealthBar = "party1",
   PartyMemberFrame1ManaBar = "party1",
   PartyMemberFrame2HealthBar = "party2",
   PartyMemberFrame2ManaBar = "party2",
   PartyMemberFrame3HealthBar = "party3",
   PartyMemberFrame3ManaBar = "party3",
   PartyMemberFrame4HealthBar = "party4",
   PartyMemberFrame4ManaBar = "party4",
    }
    MODUI_RAIDBARS_TO_SMOOTH = {}

    local smoothframe = CreateFrame'Frame'
    smoothing = {}

    local isPlate = function(frame)
        local overlayRegion = frame:GetRegions()
        if not overlayRegion or overlayRegion:GetObjectType() ~= 'Texture'
        or overlayRegion:GetTexture() ~= [[Interface\Tooltips\Nameplate-Border]] then
            return false
        end
        return true
    end

    local min, max = math.min, math.max
    local function AnimationTick()
        local limit = 30/GetFramerate()
        for bar, value in pairs(smoothing) do
            local cur = bar:GetValue()
            local new = cur + min((value - cur)/3, max(value - cur, limit))
            if new ~= new then new = value end
            if cur == value or abs(new - value) < 2 then
                bar:SetValue_(value)
                smoothing[bar] = nil
            else
                bar:SetValue_(floor(new))
            end
        end
    end

local function SmoothSetValue(self, value)
   self.finalValue = value
   if self.unitType then
      local guid = UnitGUID(self.unitType)
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
    for bar, value in pairs(smoothing) do
        if bar.SetValue_ then bar.SetValue = SmoothSetValue end
    end

    local function SmoothBar(bar)
        if not bar.SetValue_ then
            bar.SetValue_ = bar.SetValue bar.SetValue = SmoothSetValue
        end
    end

    local function ResetBar(bar)
        if bar.SetValue_ then
            bar.SetValue = bar.SetValue_ bar.SetValue_ = nil
        end
    end

    smoothframe:SetScript('OnUpdate', function()

-- skip applying the script in PVE instances because NuBlizzard is retarded as usual

        local _, instanceType = IsInInstance()
if instanceType ~= "party" and instanceType ~= "raid" then
        local frames = {WorldFrame:GetChildren()}
        for _, plate in ipairs(frames) do
            if not plate:IsForbidden() and plate:IsVisible() and isPlate(plate) then
                local v = plate:GetChildren()
                SmoothBar(v)
            end
        end
        end
        AnimationTick()
    end)

     for k,v in pairs (barstosmooth) do
      if _G[k] then
         SmoothBar(_G[k])
_G[k]:SetScript("OnHide", function(self) self.lastGuid = nil; self.max_ = nil end)
         if v ~= "" then
            _G[k].unitType = v
         end
      end
   end
    smoothframe:RegisterEvent'ADDON_LOADED'
    smoothframe:SetScript('OnEvent', function()
        if arg1 == 'Blizzard_RaidUI' then
            for i = 1, 40 do
                local hp = _G['modraid'..i]
                local pp = _G['modraid'..i]
                if hp then
                    for _, v in pairs({hp.hp, pp.mana}) do SmoothBar(v) end
                end
            end
        end
    end)



--removing character "C" button image

MicroButtonPortrait:Hide()
local originalPaperDollFrameOnShow = PaperDollFrame:GetScript("OnShow")
PaperDollFrame:SetScript("OnShow", function(...) MicroButtonPortrait:Show() if originalPaperDollFrameOnShow then originalPaperDollFrameOnShow(...) end end)
local originalPaperDollFrameOnHide = PaperDollFrame:GetScript("OnHide")
PaperDollFrame:SetScript("OnHide", function(...) MicroButtonPortrait:Hide() if originalPaperDollFrameOnHide then originalPaperDollFrameOnHide(...) end end)

CharacterMicroButton:SetNormalTexture("Interface/BUTTONS/Custom Evo C panel");
CharacterMicroButton:SetPushedTexture("Interface/BUTTONS/Custom Evo C panel");


-- removing WorldMapMicroButton (shait classic addition to the game)
-- E: as of Patch 2.5.2 Lizzard removed it and replaced it with LFG button instead

--WorldMapMicroButton:UnregisterEvent("UNIT_PORTRAIT_UPDATE")
--MicroButtonPortrait:SetTexture(nil)

-- ^^ commented out no longer usable (maybe usable later when Lizzard introduced some similar shit again)



LFGMicroButton:SetNormalTexture("Interface/BUTTONS/UI-MicroButton-Help-Up");
LFGMicroButton:SetPushedTexture("Interface/BUTTONS/UI-MicroButton-Help-Up");




--player health bar(status bar) colouring at certain % HP;class colours

local function colour(statusbar, unit)
    if UnitIsPlayer(unit) and UnitIsConnected(unit) and unit == statusbar.unit then
        if statusbar == PlayerFrameHealthBar then
		 statusbar.lockColor = true
            local percent = UnitHealth("player") * 100 / UnitHealthMax("player")
            if percent <= 25 then
                statusbar:SetStatusBarColor(1, 0, 0)
            elseif percent <= 60 then
                statusbar:SetStatusBarColor(1, 1, 0)
            else
                statusbar:SetStatusBarColor(0, 1, 0)
            end
        else
            local _, class = UnitClass(unit)
            local c = CUSTOM_CLASS_COLORS and CUSTOM_CLASS_COLORS[class] or RAID_CLASS_COLORS[class]
            if c then
                statusbar:SetStatusBarColor(c.r, c.g, c.b)
                statusbar.lockColor = true
            else
                statusbar:SetStatusBarColor(0, 1, 0)
                statusbar.lockColor = false
            end
        end
    else
        statusbar:SetStatusBarColor(0, 1, 0)
        statusbar.lockColor = false
    end
end
hooksecurefunc("UnitFrameHealthBar_Update", colour)
hooksecurefunc("UnitFrameHealthBar_OnUpdate", function(self)
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

hooksecurefunc("TargetofTargetHealthCheck", function(self)
   local r, g, b = self.portrait:GetVertexColor()
   if g == 0 and r > .99 and b == 0 then
      self.portrait:SetVertexColor(1.0, 1.0, 1.0, 1.0)
   end
end)

-- remove low health flashing from portraits
local function RemoveFlashFromPortrait(self)
	if self.portrait:GetAlpha() < 1 then
		self.portrait:SetAlpha(1)
	end
end
hooksecurefunc("TargetFrame_HealthUpdate", RemoveFlashFromPortrait)
hooksecurefunc("PartyMemberFrame_UpdateMemberHealth", RemoveFlashFromPortrait)

-- add health and mana text to party frames
for i=1,4 do
	local pFrame = _G["PartyMemberFrame"..i]

	local healthText = pFrame.healthbar:CreateFontString(nil, "OVERLAY", "GameFontWhite")
	healthText:SetFont("Fonts/FRIZQT__.TTF", 15, "OUTLINE")
	healthText:SetPoint("CENTER")

	local manaText = pFrame.manabar:CreateFontString(nil, "OVERLAY", "GameFontWhite")
	manaText:SetFont("Fonts/FRIZQT__.TTF", 9, "OUTLINE")
	manaText:SetPoint("CENTER")

	pFrame.healthbar.fontString = healthText
	pFrame.manabar.fontString = manaText
end

-- Do not show party1-5 rage/energy values in their PartyMemberFrames in order to provide more simplicity and cleaner UI

hooksecurefunc("PartyMemberFrame_UpdateMemberHealth", function(self)
    local healthbar = self.healthbar
    local manabar = self.manabar

    if healthbar.finalValue ~= healthbar.lastTextValue then
        healthbar.lastTextValue = healthbar.finalValue
        healthbar.fontString:SetText(healthbar.finalValue)
    end

    local _, max = manabar:GetMinMaxValues()
    if max <= 120 and max >= 100 then
        manabar.fontString:SetText("")
        manabar.lastTextValue = -1
    elseif manabar.finalValue ~= manabar.lastTextValue then
        manabar.lastTextValue = manabar.finalValue
        manabar.fontString:SetText(manabar.lastTextValue)
    end
end)


--Blacklist of frames where tooltips mouseovering is hidden(editable)

local tooltipOwnerBlacklist = {
    "ActionButton%d+$",            -- bar buttons
    "MultiBarBottomLeftButton",
    "MultiBarBottomRightButton",
    "MultiBarLeftButton",
    "MultiBarRightButton",
    "MinimapZoneTextButton",
    "MicroButton$",                -- micro buttons
    "^KeyRingButton$",             -- key ring
    "^CharacterBag%dSlot$",        -- bags
    "^MainMenuBarBackpackButton$", -- backpack
}

local GameTooltip_OnShow = GameTooltip:GetScript("OnShow")
GameTooltip:SetScript("OnShow", function(self, ...)
    local owner = self:GetOwner() and self:GetOwner():GetName()
    if owner then
        -- hide world object tooltips like torches and signs
        if owner == "UIParent" and not self:GetUnit() then
            self:Hide()
            return
        end
        -- hide tooltips owned by frames in the blacklist
        for i=1,#tooltipOwnerBlacklist do
            if owner:find(tooltipOwnerBlacklist[i]) then
                self:Hide()
                return
            end
        end
    end
    if GameTooltip_OnShow then
        GameTooltip_OnShow(self, ...)
    end
end)


--increasing self(player)-debuff size

hooksecurefunc("DebuffButton_UpdateAnchors", function(buttonName, index)
    _G[buttonName..index]:SetScale(1.23)
end)



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

local FRAMEZ = CreateFrame("FRAME")

FRAMEZ:RegisterEvent("ADDON_LOADED")

FRAMEZ:SetScript("OnUpdate",

	function()
		if not InCombatLockdown() then
			TargetFrameToT:ClearAllPoints();
			TargetFrameToT:SetPoint("RIGHT", "TargetFrame", "BOTTOMRIGHT", -20, 5);
			FocusFrameToT:ClearAllPoints();
			FocusFrameToT:SetPoint("RIGHT", "FocusFrame", "BOTTOMRIGHT", -20, 5);
		end

	end

)



-- Hiding some of the new retail shait UI elements

PlayerFrameGroupIndicator:Hide()


--position of minimap(remove to reset minimap position)
MinimapCluster:ClearAllPoints();
MinimapCluster:SetPoint("BOTTOMLEFT", 1186.333618164063, 595.0001831054688);



-- Increased nameplate DISTANCE and SIZE +
-- Hackfixed Floating Combat Text randomly turning off +
-- Hackfixed showing numbers for action bar cooldowns (there is aparently a conflict with OmniCC so this has to be forced at every login)


local function OnEvent(self, event)
	SetCVar("nameplateMaxDistance", "41")
	SetCVar("nameplateGlobalScale", "1.2")
	SetCVar("enableFloatingCombatText", 1)
	SetCVar("countdownForCooldowns", 1)
end

local f = CreateFrame("Frame")
f:RegisterEvent("PLAYER_ENTERING_WORLD")
f:SetScript("OnEvent", OnEvent)




--position of buff frame (for some reason Classic TBC has it more to the left than 2.4.3)
--positition of the 2 side action button bars, for some reason Classic TBC doesnt maximize the UI properly so its not possible to click on buttons by placing mouse to the border of the screen


--^^ BOTH HANDLED IN ADDON MoveAnyThing FOR NOW


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
PVPMicroButtonTexture:Hide()

PVPMicroButtonTexture:Hide()

-- |Patch 2.5.2 no longer valid| texture = WorldMapMicroButton:GetHighlightTexture()
-- |Patch 2.5.2 no longer vlaid| texture:SetAlpha(0)

texture = LFGMicroButton:GetHighlightTexture()
texture:SetAlpha(0)

texture = MainMenuMicroButton:GetHighlightTexture()
texture:SetAlpha(0)

texture = HelpMicroButton:GetHighlightTexture()
texture:SetAlpha(0)



-- Remove Fizzle sounds (this was previously done by replacing the actual sound in Data/Sounds) 

local sounds = {
	569772, -- sound/spells/fizzle/fizzleholya.ogg
	569773, -- sound/spells/fizzle/fizzlefirea.ogg
	569774, -- sound/spells/fizzle/fizzlenaturea.ogg
	569775, -- sound/spells/fizzle/fizzlefrosta.ogg
	569776, -- sound/spells/fizzle/fizzleshadowa.ogg
	567407, -- sound/interface/uchatscrollbutton.ogg annoying clicking sound when you press a spell on action bar
}

for _, fdid in pairs(sounds) do
	MuteSoundFile(fdid)
end



-- highlight dispelable shit from enemies target/focus

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
            if (isEnemy and frameStealable and debuffType == 'Magic') then
                frameStealable:Show()
            end
        end
    end
end
TargetFrame:HookScript("OnEvent", function(self) Update(self) end)
FocusFrame:HookScript("OnEvent", function(self) Update(self) end)





-- stop Gladdy from showing nameplates (necessary for the next script) !! IMPORTANT - You MUST use the "Lock Frame" function in General tab of Gladdy alongside with this!!

-- IT IS ALSO ABSOLUTELY NECESSARY FOR YOU TO DISABLE THE "Totem Plates" PLUGIN IN GLADDY UI


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

-- Highlight Tremor Totem (disable nameplates of everything else) + disable Snake Trap Cancer + prevent displaying already dead Tremor Totem (retarded Classic-like behavior)

local HideNameplateNames = {
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
	["Totem of Wrath"] = true,
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
}

local tremorTotems = {} -- {[totem GUID] = {[shaman]=GUID, nameplate=<nameplate frame>}, ...}
local nameplatesToRecheck = {}

local plateEventFrame = CreateFrame("frame")
plateEventFrame:Hide()

local function HandleNewNameplate(nameplate, unit)
    local name = UnitName(unit)
    if name == "Unknown" then
        nameplate.recheckGuid = UnitGUID(unit)
        nameplatesToRecheck[UnitGUID(unit)] = nameplate
        plateEventFrame:Show()
        return
    end
    if name and HideNameplateNames[name] then
        if nameplate.UnitFrame then
            nameplate.wasHidden = true
            nameplate.UnitFrame:Hide()
        end
    else
        if name == "Tremor Totem" then
            local texture = (nameplate.UnitFrame.healthBar.border:GetRegions())
            local guid = UnitGUID(unit)
            if guid then
                local totem = tremorTotems[guid]
                if totem then
                    totem.nameplate = nameplate
                else
                    tremorTotems[guid] = {["shaman"] = "Unknown", ["nameplate"] = nameplate}
                end
                nameplate.tremorTotemGuid = guid
                texture:SetTexture("Interface/Addons/TextureScript/Nameplate-Border-TREMOR.blp")
            end
        end
    end
end

local plateUpdateElapsed = 0
plateEventFrame:SetScript("OnUpdate", function(self, elapsed)
    
    for guid,nameplate in pairs(nameplatesToRecheck) do
        nameplatesToRecheck[guid] = nil
        if nameplate.recheckGuid == guid and nameplate.UnitFrame then
            HandleNewNameplate(nameplate, nameplate.UnitFrame.displayedUnit)
        end
    end

    if next(nameplatesToRecheck) == nil then
        plateEventFrame:Hide()
    end
end)

plateEventFrame:SetScript("OnEvent", function(self, event, unit)
    ----------------------------------------
    -- watch for recasts or damage to totems
    ----------------------------------------
    if event == "COMBAT_LOG_EVENT_UNFILTERED" then
	    local _, action, _, sourceGuid, sourceName, sourceFlags, _, destGuid, destName, destFlags, _,
            ex1, ex2, ex3, ex4, ex5, ex6, ex7, ex8, ex9, ex10, ex11, ex12, ex13, ex14 = CombatLogGetCurrentEventInfo()

        if destName == "Tremor Totem" then
            if action == "SPELL_SUMMON" then
                if destName == "Tremor Totem" then
                    for totem,info in pairs(tremorTotems) do
                        if info.shaman == sourceGuid then
                            local nameplate = info.nameplate
                            if nameplate and nameplate.tremorTotemGuid == totem and nameplate.UnitFrame then
                                nameplate.wasHidden = true
                                nameplate.UnitFrame:Hide()
                            end
                        end
                    end
                    tremorTotems[destGuid] = {["shaman"] = sourceGuid}
                end
            else
                local damage
                if action == "SWING_DAMAGE" or action == "RANGE_DAMAGE" then damage = ex1
                elseif action == "SPELL_DAMAGE" then                         damage = ex4
                else                                                         damage = 0
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

        -- move the castbar to be directly under the healthbar again
        local cb = nameplate.UnitFrame.CastBar
        cb:ClearAllPoints()
        cb:SetPoint("TOP", hb, "BOTTOM", 9, -4)

        -- make the selection highlight a tiny bit smaller
        local sh = nameplate.UnitFrame.selectionHighlight
        sh:ClearAllPoints()
        sh:SetPoint("TOPLEFT", sh:GetParent(), "TOPLEFT", 1, -1)
        sh:SetPoint("BOTTOMRIGHT", sh:GetParent(), "BOTTOMRIGHT", -1, 1)

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
plateEventFrame:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
plateEventFrame:RegisterEvent("NAME_PLATE_UNIT_ADDED")
plateEventFrame:RegisterEvent("NAME_PLATE_UNIT_REMOVED")
plateEventFrame:RegisterEvent("PLAYER_ENTERING_WORLD")


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



-- Prevent displaying the server name in player´s nameplate

hooksecurefunc("CompactUnitFrame_UpdateName",function(frame)
    if frame.unit:find("^nameplate") and UnitIsPlayer(frame.unit) then
        frame.name:SetText((UnitName(frame.unit)):gsub("%-.*", "")) -- not sure if UnitName() adds the realm so :gsub() might not be needed
    end
end)


-- Skip certain gossip_menu windows for vendors and especially arena/bg NPCs --> can be bypassed by pressing ctrl/alt/shift

local gossipSkipType = {
    ["banker"]=1,
    ["taxi"]=1,
    ["trainer"]=1,
    ["vendor"]=1,
    ["battlemaster"]=1,
}

local skipEventFrame = CreateFrame("frame")
skipEventFrame:SetScript("OnEvent", function(self)
    if not IsShiftKeyDown() and GetNumGossipOptions() == 1 and GetNumGossipActiveQuests() == 0 and GetNumGossipAvailableQuests() == 0 then
        local gossipText, gossipType = GetGossipOptions()
        if gossipSkipType[gossipType] then
            SelectGossipOption(1)
            if gossipType == "taxi" then
                Dismount()
            end
            return
        end
    end
    if GetNumGossipOptions() > 0 and not IsShiftKeyDown() and not IsAltKeyDown() and not IsControlKeyDown() then
        local options = {GetGossipOptions()}
        for i=1,GetNumGossipOptions() do
            if options[(i-1)*2+2] == "vendor" then
                SelectGossipOption(i)
                return
            end
        end
    end
end)
skipEventFrame:RegisterEvent("GOSSIP_SHOW")


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

teamRatingFrame:SetScript("OnShow", function(self)
	local nWidth = teamRatingFrame.names:GetWidth()
	local rWidth = teamRatingFrame.ratings:GetWidth()
	local x = (nWidth / 2) - ((nWidth + rWidth - 10) / 2) -- no idea why "- 10" helps centering it!
	teamRatingFrame.names:ClearAllPoints()
	teamRatingFrame.names:SetPoint("BOTTOM", teamRatingFrame, "BOTTOM", x, 0)
end)

teamRatingFrame:SetScript("OnEvent", function(self, event)
	if event == "UPDATE_BATTLEFIELD_SCORE" then
		local _, isRatedArena = IsActiveBattlefieldArena()
		if isRatedArena then
			local name1, oldRating1, newRating1, mmr1 = GetBattlefieldTeamInfo(0)
			local name2, oldRating2, newRating2, mmr2 = GetBattlefieldTeamInfo(1)
			if newRating1 and newRating1 > 0 then
				local nameText = string.format('|cffbd67ff"%s" |r\n|cffffd500"%s" |r', name1, name2)
				local ratingText = string.format('|cffbd67ffMMR: %d|r\n|cffffd500MMR: %d|r', mmr1, mmr2)
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


-- Hide healthbar under unit tooltips
GameTooltip:HookScript("OnTooltipSetUnit", function(self, tooltip)
    GameTooltipStatusBar:Hide()
end)


-- Temporary way to disable the dogshit cata spellqueue they brought to tbc instead of using the proper Retail TBC one that bypasses GCD: /console SpellQueueWindow 0


-- ^^ current value for testing:100, 400 was too cancerous - sometimes prevented the cast with /cqs+cast macro altogether

-- Ingame commmand for classcoloured names in chat: /console SET chatClassColorOverride "0"
-- trying to remove the cancer weather that is not part of the video settings as it used to be in 2.4.3: /console set weatherdensity 0 // /console WeatherDensity 0

-- Disable the ability to scroll chat with mouse wheel (fucks binds with the mouse-wheel-up/down): /console chatMouseScroll 0




--Login message informing all scripts of this file were properly executed

ChatFrame1:AddMessage("EvolvePWPUI-ClassicWOTLK v0.1 Loaded successfully!",0,205,255)
ChatFrame1:AddMessage("Check for updates at:",0,205,255)
ChatFrame1:AddMessage("https://github.com/Evolvee/EvolvePWPUI-ClassicWOTLK",0,205,255)





-- FUCK BLIZZARD, garbage company:
--https://eu.forums.blizzard.com/en/wow/t/lf-a-blizzard-response-all-talents-that-reduce-spell-resists-in-pvp-no-longer-works-since-phase-2/320188
-- https://us.forums.blizzard.com/en/wow/t/all-talents-that-reduce-spell-resists-in-pvp-no-longer-works-since-phase-2/1114096/5

-- COMBAT_TEXT_RESIST = "FUCK BLIZZARD"

-- WE DID IT REDDIT - https://github.com/JamminL/wotlk-classic-bugs/issues/143#issuecomment-1209998266 - after a year of TBC being absolutely fucking unplayable, especially for a shadow priest, they "finally" fixed it... So adding more appropriate message instead for WOTLK (hi sacred cleansing)...

COMBAT_TEXT_RESIST = "SHIT EXPANSION"
COMBAT_TEXT_MISS = "SHIT EXPANSION"
