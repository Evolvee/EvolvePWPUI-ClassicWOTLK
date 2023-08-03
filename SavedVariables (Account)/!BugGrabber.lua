
BugGrabberDB = {
	["session"] = 6126,
	["lastSanitation"] = 3,
	["errors"] = {
		{
			["message"] = "Interface/AddOns/SimpleAuraFilter/SimpleAuraFilter.lua:121: 'end' expected (to close 'if' at line 107) near 'else'",
			["time"] = "2023/07/19 17:28:58",
			["locals"] = "",
			["stack"] = "",
			["session"] = 5975,
			["counter"] = 1,
		}, -- [1]
		{
			["message"] = "Interface/AddOns/SimpleAuraFilter/SimpleAuraFilter.lua:1 Interface/AddOns/SimpleAuraFilter/SimpleAuraFilter.lua:121: 'end' expected (to close 'if' at line 107) near 'else'",
			["session"] = 5975,
			["time"] = "2023/07/19 17:28:59",
			["counter"] = 1,
		}, -- [2]
		{
			["message"] = "Interface_Wrath\\FrameXML\\Bindings.xml:1 Interface/AddOns/SimpleAuraFilter/SimpleAuraFilter.lua:1 Interface/AddOns/SimpleAuraFilter/SimpleAuraFilter.lua:121: 'end' expected (to close 'if' at line 107) near 'else'",
			["session"] = 5975,
			["time"] = "2023/07/19 17:28:59",
			["counter"] = 1,
		}, -- [3]
		{
			["message"] = "Interface/AddOns/SimpleAuraFilter/SimpleAuraFilter.lua:122: 'end' expected (to close 'for' at line 101) near 'else'",
			["time"] = "2023/07/19 17:33:45",
			["locals"] = "",
			["stack"] = "",
			["session"] = 5976,
			["counter"] = 1,
		}, -- [4]
		{
			["message"] = "Interface/AddOns/SimpleAuraFilter/Options.lua:1: Usage: GetAddon(name): 'name' - Cannot find an AceAddon 'SimpleAuraFilter'.",
			["time"] = "2023/07/19 17:28:58",
			["locals"] = "(*temporary) = \"Usage: GetAddon(name): 'name' - Cannot find an AceAddon 'SimpleAuraFilter'.\"\n",
			["stack"] = "[string \"=[C]\"]: ?\n[string \"@Interface/AddOns/DeBuffFilter/Libs/AceAddon-3.0-13/AceAddon-3.0.lua\"]:155: in function `GetAddon'\n[string \"@Interface/AddOns/SimpleAuraFilter/Options.lua\"]:1: in main chunk",
			["session"] = 5976,
			["counter"] = 2,
		}, -- [5]
		{
			["message"] = "Interface/AddOns/SimpleAuraFilter/SimpleAuraFilter.lua:1 Interface/AddOns/SimpleAuraFilter/SimpleAuraFilter.lua:122: 'end' expected (to close 'for' at line 101) near 'else'",
			["time"] = "2023/07/19 17:33:46",
			["session"] = 5976,
			["counter"] = 1,
		}, -- [6]
		{
			["message"] = "Interface/AddOns/SimpleAuraFilter/Options.lua:1 (null)",
			["session"] = 5976,
			["time"] = "2023/07/19 17:28:59",
			["counter"] = 2,
		}, -- [7]
		{
			["message"] = "Interface_Wrath\\FrameXML\\Bindings.xml:1 Interface/AddOns/SimpleAuraFilter/SimpleAuraFilter.lua:1 Interface/AddOns/SimpleAuraFilter/SimpleAuraFilter.lua:122: 'end' expected (to close 'for' at line 101) near 'else'",
			["time"] = "2023/07/19 17:33:46",
			["session"] = 5976,
			["counter"] = 1,
		}, -- [8]
		{
			["message"] = "Interface_Wrath\\FrameXML\\Bindings.xml:1 Interface/AddOns/SimpleAuraFilter/Options.lua:1 (null)",
			["session"] = 5976,
			["time"] = "2023/07/19 17:28:59",
			["counter"] = 2,
		}, -- [9]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'WeakAuras' tried to call the protected function 'Search()'.",
			["time"] = "2023/07/19 22:04:43",
			["locals"] = "_ = Frame {\n RegisterEvent = <function> defined @Interface/AddOns/!BugGrabber/BugGrabber.lua:487\n 0 = <userdata>\n UnregisterEvent = <function> defined @Interface/AddOns/!BugGrabber/BugGrabber.lua:487\n SetScript = <function> defined @Interface/AddOns/!BugGrabber/BugGrabber.lua:487\n}\nevent = \"ADDON_ACTION_BLOCKED\"\nevents = <table> {\n ADDON_ACTION_BLOCKED = <function> defined @Interface/AddOns/!BugGrabber/BugGrabber.lua:553\n ADDON_ACTION_FORBIDDEN = <function> defined @Interface/AddOns/!BugGrabber/BugGrabber.lua:553\n PLAYER_LOGIN = <function> defined @Interface/AddOns/!BugGrabber/BugGrabber.lua:547\n LUA_WARNING = <function> defined @Interface/AddOns/!BugGrabber/BugGrabber.lua:562\n ADDON_LOADED = <function> defined @Interface/AddOns/!BugGrabber/BugGrabber.lua:507\n}\n",
			["stack"] = "[string \"@Interface/AddOns/!BugGrabber/BugGrabber.lua\"]:481: in function <Interface/AddOns/!BugGrabber/BugGrabber.lua:481>\n[string \"=[C]\"]: in function `Search'\n[string \"@Interface/AddOns/Blizzard_LookingForGroupUI/Blizzard_LFGBrowse.lua\"]:226: in function `LFGBrowse_DoSearch'\n[string \"@Interface/AddOns/Blizzard_LookingForGroupUI/Blizzard_LFGBrowse.lua\"]:179: in function `SearchActiveEntry'\n[string \"@Interface/AddOns/Blizzard_LookingForGroupUI/Blizzard_LFGParentFrame.lua\"]:92: in function `LFGParentFrame_SearchActiveEntry'\n[string \"@Interface/AddOns/Blizzard_LookingForGroupUI/Blizzard_LFGListing.lua\"]:72: in function <...s/Blizzard_LookingForGroupUI/Blizzard_LFGListing.lua:54>",
			["session"] = 6004,
			["counter"] = 2,
		}, -- [10]
		{
			["message"] = "Interface/AddOns/TextureScript/TextureScript.lua:1761: calling 'GetParent' on bad self (Usage: local parent = self:GetParent())",
			["time"] = "2023/07/22 19:19:49",
			["locals"] = "(*temporary) = StatusBar {\n 0 = <userdata>\n showTradeSkills = false\n holdTime = 0\n Border = Texture {\n }\n Flash = Texture {\n }\n showCastbar = true\n value = 1.834000\n Icon = Texture {\n }\n startChannelColor = <table> {\n }\n finishedCastColor = <table> {\n }\n castID = \"Cast-3-5571-603-10953-58702-00013C0FB4\"\n nonInterruptibleColor = <table> {\n }\n maxValue = 2.200000\n finishedColorSameAsStart = false\n Text = FontString {\n }\n unit = \"nameplate5\"\n casting = true\n showShield = true\n BorderShield = Texture {\n }\n Spark = Texture {\n }\n startCastColor = <table> {\n }\n flashColorSameAsStart = true\n notInterruptible = true\n failedCastColor = <table> {\n }\n}\n",
			["stack"] = "[string \"=[C]\"]: in function `GetParent'\n[string \"@Interface/AddOns/TextureScript/TextureScript.lua\"]:1761: in function <Interface/AddOns/TextureScript/TextureScript.lua:1760>\n[string \"=[C]\"]: in function `CastingBarFrame_OnShow'\n[string \"@Interface_TBC/AddOns/Blizzard_NamePlates/Blizzard_NamePlates.lua\"]:426: in function <...C/AddOns/Blizzard_NamePlates/Blizzard_NamePlates.lua:425>\n[string \"=[C]\"]: in function `Show'\n[string \"@Interface_Wrath/FrameXML/CompactUnitFrame.lua\"]:372: in function `CompactUnitFrame_UpdateVisible'\n[string \"@Interface_Wrath/FrameXML/CompactUnitFrame.lua\"]:299: in function `CompactUnitFrame_UpdateAll'\n[string \"@Interface_Wrath/FrameXML/CompactUnitFrame.lua\"]:185: in function `CompactUnitFrame_SetUnit'\n[string \"@Interface_TBC/AddOns/Blizzard_NamePlates/Blizzard_NamePlates.lua\"]:330: in function `OnAdded'\n[string \"@Interface_TBC/AddOns/Blizzard_NamePlates/Blizzard_NamePlates.lua\"]:118: in function `OnNamePlateAdded'\n[string \"@Interface_TBC/AddOns/Blizzard_NamePlates/Blizzard_NamePlates.lua\"]:51: in function <...C/AddOns/Blizzard_NamePlates/Blizzard_NamePlates.lua:42>",
			["session"] = 6026,
			["counter"] = 1,
		}, -- [11]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'HideChatButton' tried to call the protected function 'Search()'.",
			["time"] = "2023/07/22 13:10:32",
			["locals"] = "_ = Frame {\n RegisterEvent = <function> defined @Interface/AddOns/!BugGrabber/BugGrabber.lua:487\n 0 = <userdata>\n UnregisterEvent = <function> defined @Interface/AddOns/!BugGrabber/BugGrabber.lua:487\n SetScript = <function> defined @Interface/AddOns/!BugGrabber/BugGrabber.lua:487\n}\nevent = \"ADDON_ACTION_BLOCKED\"\nevents = <table> {\n ADDON_ACTION_BLOCKED = <function> defined @Interface/AddOns/!BugGrabber/BugGrabber.lua:553\n ADDON_ACTION_FORBIDDEN = <function> defined @Interface/AddOns/!BugGrabber/BugGrabber.lua:553\n PLAYER_LOGIN = <function> defined @Interface/AddOns/!BugGrabber/BugGrabber.lua:547\n LUA_WARNING = <function> defined @Interface/AddOns/!BugGrabber/BugGrabber.lua:562\n ADDON_LOADED = <function> defined @Interface/AddOns/!BugGrabber/BugGrabber.lua:507\n}\n",
			["stack"] = "[string \"@Interface/AddOns/!BugGrabber/BugGrabber.lua\"]:481: in function <Interface/AddOns/!BugGrabber/BugGrabber.lua:481>\n[string \"=[C]\"]: in function `Search'\n[string \"@Interface/AddOns/Blizzard_LookingForGroupUI/Blizzard_LFGBrowse.lua\"]:226: in function `LFGBrowse_DoSearch'\n[string \"@Interface/AddOns/Blizzard_LookingForGroupUI/Blizzard_LFGBrowse.lua\"]:179: in function `SearchActiveEntry'\n[string \"@Interface/AddOns/Blizzard_LookingForGroupUI/Blizzard_LFGParentFrame.lua\"]:92: in function `LFGParentFrame_SearchActiveEntry'\n[string \"@Interface/AddOns/Blizzard_LookingForGroupUI/Blizzard_LFGListing.lua\"]:72: in function <...s/Blizzard_LookingForGroupUI/Blizzard_LFGListing.lua:54>",
			["session"] = 6060,
			["counter"] = 8,
		}, -- [12]
		{
			["message"] = "Interface_Wrath/FrameXML/TargetFrame.lua:758: Action[SetPoint] failed because[Cannot anchor to a region dependent on it]: attempted from: TargetFrameBuff1:SetPoint.",
			["time"] = "2023/07/19 15:03:27",
			["locals"] = "(*temporary) = TargetFrameBuff1 {\n 0 = <userdata>\n unit = \"target\"\n}\n(*temporary) = \"TOPLEFT\"\n(*temporary) = TargetFrameDebuffs {\n 0 = <userdata>\n}\n(*temporary) = \"BOTTOMLEFT\"\n(*temporary) = 0\n(*temporary) = -1\n",
			["stack"] = "[string \"=[C]\"]: in function `SetPoint'\n[string \"@Interface_Wrath/FrameXML/TargetFrame.lua\"]:758: in function `updateFunc'\n[string \"@Interface_Wrath/FrameXML/TargetFrame.lua\"]:726: in function `TargetFrame_UpdateAuraPositions'\n[string \"@Interface_Wrath/FrameXML/TargetFrame.lua\"]:644: in function <Interface_Wrath/FrameXML/TargetFrame.lua:486>\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: in function `TargetFrame_UpdateAuras'\n[string \"*TargetFrame.xml:481_OnShow\"]:1: in function <[string \"*TargetFrame.xml:481_OnShow\"]:1>\n[string \"=[C]\"]: in function `Show'\n[string \"@Interface_Wrath/FrameXML/TargetFrame.lua\"]:971: in function `TargetofTarget_Update'\n[string \"@Interface_Wrath/FrameXML/TargetFrame.lua\"]:129: in function `TargetFrame_Update'\n[string \"@Interface_Wrath/FrameXML/TargetFrame.lua\"]:170: in function `OnEvent'\n[string \"@Interface/FrameXML/UnitFrame.lua\"]:762: in function <Interface/FrameXML/UnitFrame.lua:760>\n[string \"=[C]\"]: in function `CameraOrSelectOrMoveStop'\n[string \"CAMERAORSELECTORMOVE\"]:4: in function <[string \"CAMERAORSELECTORMOVE\"]:1>",
			["session"] = 6067,
			["counter"] = 17,
		}, -- [13]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'iMorph' tried to call the protected function 'MultiBarRightButton1:Hide()'.",
			["time"] = "2023/07/29 17:33:58",
			["locals"] = "Skipped (In Encounter)",
			["stack"] = "[string \"@Interface/AddOns/!BugGrabber/BugGrabber.lua\"]:481: in function <Interface/AddOns/!BugGrabber/BugGrabber.lua:481>\n[string \"=[C]\"]: in function `Hide'\n[string \"@Interface/FrameXML/ActionButton.lua\"]:498: in function `ActionButton_HideGrid'\n[string \"@Interface/FrameXML/MultiActionBars.lua\"]:130: in function `MultiActionBar_UpdateGrid'\n[string \"@Interface/FrameXML/MultiActionBars.lua\"]:120: in function `MultiActionBar_HideAllGrids'\n[string \"@Interface/FrameXML/SpellBookFrame.lua\"]:269: in function <Interface/FrameXML/SpellBookFrame.lua:258>\n[string \"=[C]\"]: in function `Hide'\n[string \"@Interface_Wrath/FrameXML/UIParent.lua\"]:2220: in function `SetUIPanel'\n[string \"@Interface_Wrath/FrameXML/UIParent.lua\"]:2300: in function `HideUIPanel'\n[string \"@Interface_Wrath/FrameXML/UIParent.lua\"]:1953: in function <Interface_Wrath/FrameXML/UIParent.lua:1945>\n[string \"=[C]\"]: in function `SetAttribute'\n[string \"@Interface_Wrath/FrameXML/UIParent.lua\"]:2780: in function `HideUIPanel'\n[string \"@Interface/SharedXML/SharedUIPanelTemplates.lua\"]:213: in function `HideParentPanel'\n[string \"*SharedUIPanelTemplates.xml:251_OnClick\"]:1: in function <[string \"*SharedUIPanelTemplates.xml:251_OnClick\"]:1>",
			["session"] = 6074,
			["counter"] = 1,
		}, -- [14]
		{
			["message"] = "Interface/AddOns/TextureScript/TextureScript.lua:1766: bad argument #1 to 'find' (string expected, got nil)",
			["time"] = "2023/08/01 09:51:11",
			["locals"] = "(*temporary) = nil\n(*temporary) = \"nameplate\"\n(*temporary) = \"string expected, got nil\"\n",
			["stack"] = "[string \"=[C]\"]: in function `find'\n[string \"@Interface/AddOns/TextureScript/TextureScript.lua\"]:1766: in function <Interface/AddOns/TextureScript/TextureScript.lua:1765>\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: in function `CreateFrame'\n[string \"@Interface/AddOns/JaxPartyCastbars/JaxPartyCastbars.lua\"]:88: in function <...terface/AddOns/JaxPartyCastbars/JaxPartyCastbars.lua:74>",
			["session"] = 6086,
			["counter"] = 5,
		}, -- [15]
		{
			["message"] = "raid1SpellBar:SetPoint(): Usage: (\"point\" [, region or nil] [, \"relativePoint\"] [, offsetX, offsetY]",
			["time"] = "2023/08/01 10:21:05",
			["locals"] = "(*temporary) = raid1SpellBar {\n 0 = <userdata>\n showTradeSkills = true\n holdTime = 0\n Border = Texture {\n }\n Flash = Texture {\n }\n showCastbar = true\n castID = \"Cast-3-4458-571-15959-57978-0000C8BDC0\"\n value = -0.006000\n Icon = Texture {\n }\n startChannelColor = <table> {\n }\n finishedCastColor = <table> {\n }\n finishedColorSameAsStart = false\n nonInterruptibleColor = <table> {\n }\n maxValue = 8\n Text = FontString {\n }\n unit = \"party1\"\n showShield = true\n BorderShield = Texture {\n }\n Spark = Texture {\n }\n startCastColor = <table> {\n }\n flashColorSameAsStart = true\n notInterruptible = false\n failedCastColor = <table> {\n }\n}\n(*temporary) = nil\n(*temporary) = PartyMemberFrame1 {\n 0 = <userdata>\n portrait = PartyMemberFrame1Portrait {\n }\n statusSign = -1\n unit = \"party1\"\n notPresentIcon = PartyMemberFrame1NotPresentIcon {\n }\n debuffTotal = 0\n statusCounter = 0\n debuffCountdown = 30\n manabar = PartyMemberFrame1ManaBar {\n }\n unitHPPercent = 1\n threatIndicator = PartyMemberFrame1Flash {\n }\n state = \"player\"\n name = PartyMemberFrame1Name {\n }\n menu = <function> defined @Interface/FrameXML/PartyMemberFrame.lua:115\n healthbar = PartyMemberFrame1HealthBar {\n }\n numDebuffs = 0\n OnEvent = <function> defined *PartyFrameTemplates.xml:387_OnEvent:1\n noTextPrefix = true\n}\n(*temporary) = nil\n(*temporary) = 49.743622\n(*temporary) = 38.560349\n",
			["stack"] = "[string \"=[C]\"]: in function `SetPoint'\n[string \"@Interface/AddOns/JaxPartyCastbars/JaxPartyCastbars.lua\"]:49: in function `UpdateBars'\n[string \"@Interface/AddOns/JaxPartyCastbars/JaxPartyCastbars.lua\"]:57: in function <...terface/AddOns/JaxPartyCastbars/JaxPartyCastbars.lua:56>\n[string \"=[C]\"]: in function `CompactRaidFrameContainer_SetFlowSortFunction'\n[string \"@Interface/AddOns/Blizzard_CompactRaidFrames/Blizzard_CompactRaidFrameManager_Shared.lua\"]:387: in function <...idFrames/Blizzard_CompactRaidFrameManager_Shared.lua:382>\n[string \"@Interface/AddOns/Blizzard_CompactRaidFrames/Blizzard_CompactRaidFrameManager_Shared.lua\"]:471: in function `CompactRaidFrameManager_SetSetting'\n[string \"@Interface/AddOns/Blizzard_CUFProfiles/Blizzard_CompactUnitFrameProfiles.lua\"]:558: in function `func'\n[string \"@Interface/AddOns/Blizzard_CUFProfiles/Blizzard_CompactUnitFrameProfiles.lua\"]:535: in function `CompactUnitFrameProfiles_ApplyProfile'\n[string \"@Interface/AddOns/Blizzard_CUFProfiles/Blizzard_CompactUnitFrameProfiles.lua\"]:176: in function `CompactUnitFrameProfiles_ApplyCurrentSettings'\n[string \"@Interface/FrameXML/SettingDefinitions/InterfaceOverrides.lua\"]:263: in function `SetRaidProfileOption'\n[string \"@Interface/FrameXML/SettingDefinitions/InterfaceOverrides.lua\"]:420: in function <...e/FrameXML/SettingDefinitions/InterfaceOverrides.lua:419>\n[string \"@Interface/SharedXML/Settings/Blizzard_Setting.lua\"]:260: in function `SetValueInternal'\n[string \"@Interface/SharedXML/Settings/Blizzard_Setting.lua\"]:67: in function <Interface/SharedXML/Settings/Blizzard_Setting.lua:55>\n[string \"=[C]\"]: in function `securecallfunction'\n[string \"@Interface/FrameXML/SettingDefinitions/InterfaceOverrides.lua\"]:225: in function <...e/FrameXML/SettingDefinitions/InterfaceOverrides.lua:223>\n[string \"@Interface/FrameXML/SettingDefinitions/InterfaceOverrides.lua\"]:229: in function `RefreshRaidOptions'\n[string \"@Interface/FrameXML/SettingDefinitions/InterfaceOverrides.lua\"]:278: in function <...e/FrameXML/SettingDefinitions/InterfaceOverrides.lua:274>\n[string \"=[C]\"]: ?\n[string \"@Interface/SharedXML/CallbackRegistry.lua\"]:178: in function <Interface/SharedXML/CallbackRegistry.lua:177>\n[string \"=[C]\"]: ?\n[string \"@Interface/SharedXML/CallbackRegistry.lua\"]:181: in function `TriggerEvent'\n[string \"@Interface/SharedXML/CvarUtil.lua\"]:114: in function <Interface/SharedXML/CvarUtil.lua:106>",
			["session"] = 6088,
			["counter"] = 5,
		}, -- [16]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'TextureScript' tried to call the protected function 'MultiBarLeftButton5:Show()'.",
			["time"] = "2023/08/01 19:38:15",
			["locals"] = "Skipped (In Encounter)",
			["stack"] = "[string \"@Interface/AddOns/!BugGrabber/BugGrabber.lua\"]:481: in function <Interface/AddOns/!BugGrabber/BugGrabber.lua:481>\n[string \"=[C]\"]: in function `Show'\n[string \"@Interface/FrameXML/ActionButton.lua\"]:368: in function `ActionButton_Update'\n[string \"@Interface/FrameXML/ActionButton.lua\"]:705: in function `ActionButton_OnEvent'\n[string \"@Interface/FrameXML/ActionButton.lua\"]:208: in function <Interface/FrameXML/ActionButton.lua:205>",
			["session"] = 6094,
			["counter"] = 1,
		}, -- [17]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'TextureScript' tried to call the protected function 'MultiBarRightButton8:Show()'.",
			["time"] = "2023/08/01 19:45:32",
			["locals"] = "_ = Frame {\n RegisterEvent = <function> defined @Interface/AddOns/!BugGrabber/BugGrabber.lua:487\n 0 = <userdata>\n UnregisterEvent = <function> defined @Interface/AddOns/!BugGrabber/BugGrabber.lua:487\n SetScript = <function> defined @Interface/AddOns/!BugGrabber/BugGrabber.lua:487\n}\nevent = \"ADDON_ACTION_BLOCKED\"\nevents = <table> {\n ADDON_ACTION_BLOCKED = <function> defined @Interface/AddOns/!BugGrabber/BugGrabber.lua:553\n ADDON_ACTION_FORBIDDEN = <function> defined @Interface/AddOns/!BugGrabber/BugGrabber.lua:553\n PLAYER_LOGIN = <function> defined @Interface/AddOns/!BugGrabber/BugGrabber.lua:547\n LUA_WARNING = <function> defined @Interface/AddOns/!BugGrabber/BugGrabber.lua:562\n ADDON_LOADED = <function> defined @Interface/AddOns/!BugGrabber/BugGrabber.lua:507\n}\n",
			["stack"] = "[string \"@Interface/AddOns/!BugGrabber/BugGrabber.lua\"]:481: in function <Interface/AddOns/!BugGrabber/BugGrabber.lua:481>\n[string \"=[C]\"]: in function `Show'\n[string \"@Interface/FrameXML/ActionButton.lua\"]:368: in function `ActionButton_Update'\n[string \"@Interface/FrameXML/ActionButton.lua\"]:705: in function `ActionButton_OnEvent'\n[string \"@Interface/FrameXML/ActionButton.lua\"]:208: in function <Interface/FrameXML/ActionButton.lua:205>",
			["session"] = 6097,
			["counter"] = 1,
		}, -- [18]
		{
			["message"] = "Interface/AddOns/TextureScript/TextureScript.lua:1284: calling 'SetText' on bad self (Usage: self:SetText([text]))",
			["time"] = "2023/08/01 19:47:00",
			["locals"] = "Skipped (In Encounter)",
			["stack"] = "[string \"=[C]\"]: in function `SetText'\n[string \"@Interface/AddOns/TextureScript/TextureScript.lua\"]:1284: in function <Interface/AddOns/TextureScript/TextureScript.lua:1277>\n[string \"=[C]\"]: in function `CompactUnitFrame_UpdateName'\n[string \"@Interface_Wrath/FrameXML/CompactUnitFrame.lua\"]:307: in function `CompactUnitFrame_UpdateAll'\n[string \"@Interface_Wrath/FrameXML/CompactUnitFrame.lua\"]:185: in function `CompactUnitFrame_SetUnit'\n[string \"@Interface_TBC/AddOns/Blizzard_NamePlates/Blizzard_NamePlates.lua\"]:330: in function `OnAdded'\n[string \"@Interface_TBC/AddOns/Blizzard_NamePlates/Blizzard_NamePlates.lua\"]:118: in function `OnNamePlateAdded'\n[string \"@Interface_TBC/AddOns/Blizzard_NamePlates/Blizzard_NamePlates.lua\"]:51: in function <...C/AddOns/Blizzard_NamePlates/Blizzard_NamePlates.lua:42>",
			["session"] = 6097,
			["counter"] = 1,
		}, -- [19]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'TextureScript' tried to call the protected function 'StanceBarFrame:Show()'.",
			["time"] = "2023/08/01 19:55:37",
			["locals"] = "_ = Frame {\n RegisterEvent = <function> defined @Interface/AddOns/!BugGrabber/BugGrabber.lua:487\n 0 = <userdata>\n UnregisterEvent = <function> defined @Interface/AddOns/!BugGrabber/BugGrabber.lua:487\n SetScript = <function> defined @Interface/AddOns/!BugGrabber/BugGrabber.lua:487\n}\nevent = \"ADDON_ACTION_BLOCKED\"\nevents = <table> {\n ADDON_ACTION_BLOCKED = <function> defined @Interface/AddOns/!BugGrabber/BugGrabber.lua:553\n ADDON_ACTION_FORBIDDEN = <function> defined @Interface/AddOns/!BugGrabber/BugGrabber.lua:553\n PLAYER_LOGIN = <function> defined @Interface/AddOns/!BugGrabber/BugGrabber.lua:547\n LUA_WARNING = <function> defined @Interface/AddOns/!BugGrabber/BugGrabber.lua:562\n ADDON_LOADED = <function> defined @Interface/AddOns/!BugGrabber/BugGrabber.lua:507\n}\n",
			["stack"] = "[string \"@Interface/AddOns/!BugGrabber/BugGrabber.lua\"]:481: in function <Interface/AddOns/!BugGrabber/BugGrabber.lua:481>\n[string \"=[C]\"]: in function `Show'\n[string \"@Interface_TBC/FrameXML/StanceBar.lua\"]:43: in function `StanceBar_Update'\n[string \"@Interface/FrameXML/ActionBarController.lua\"]:65: in function <Interface/FrameXML/ActionBarController.lua:43>",
			["session"] = 6099,
			["counter"] = 1,
		}, -- [20]
		{
			["message"] = "Interface/AddOns/TextureScript/TextureScript.lua:1278: bad argument #2 to 'string_split' (string expected, got nil)",
			["time"] = "2023/08/01 21:40:55",
			["locals"] = "(*temporary) = \"-\"\n(*temporary) = nil\n(*temporary) = \"string expected, got nil\"\n",
			["stack"] = "[string \"=[C]\"]: ?\n[string \"@Interface/AddOns/TextureScript/TextureScript.lua\"]:1278: in function <Interface/AddOns/TextureScript/TextureScript.lua:1277>\n[string \"=[C]\"]: in function `CompactUnitFrame_UpdateName'\n[string \"@Interface_Wrath/FrameXML/CompactUnitFrame.lua\"]:67: in function <Interface_Wrath/FrameXML/CompactUnitFrame.lua:59>",
			["session"] = 6101,
			["counter"] = 1,
		}, -- [21]
		{
			["message"] = "Interface/AddOns/TextureScript/TextureScript.lua:121: '}' expected (to close '{' at line 111) near 'nameplateOccludedAlphaMult'",
			["time"] = "2023/08/02 10:28:24",
			["locals"] = "",
			["stack"] = "",
			["session"] = 6104,
			["counter"] = 1,
		}, -- [22]
		{
			["message"] = "Interface/AddOns/TextureScript/TextureScript.lua:1 Interface/AddOns/TextureScript/TextureScript.lua:121: '}' expected (to close '{' at line 111) near 'nameplateOccludedAlphaMult'",
			["time"] = "2023/08/02 10:28:25",
			["session"] = 6104,
			["counter"] = 1,
		}, -- [23]
		{
			["message"] = "Interface_Wrath\\FrameXML\\Bindings.xml:1 Interface/AddOns/TextureScript/TextureScript.lua:1 Interface/AddOns/TextureScript/TextureScript.lua:121: '}' expected (to close '{' at line 111) near 'nameplateOccludedAlphaMult'",
			["time"] = "2023/08/02 10:28:25",
			["session"] = 6104,
			["counter"] = 1,
		}, -- [24]
		{
			["message"] = "[ADDON_ACTION_FORBIDDEN] AddOn 'iMorph' tried to call the protected function 'CopyToClipboard()'.",
			["time"] = "2023/08/02 12:53:44",
			["locals"] = "_ = Frame {\n RegisterEvent = <function> defined @Interface/AddOns/!BugGrabber/BugGrabber.lua:487\n 0 = <userdata>\n UnregisterEvent = <function> defined @Interface/AddOns/!BugGrabber/BugGrabber.lua:487\n SetScript = <function> defined @Interface/AddOns/!BugGrabber/BugGrabber.lua:487\n}\nevent = \"ADDON_ACTION_FORBIDDEN\"\nevents = <table> {\n ADDON_ACTION_BLOCKED = <function> defined @Interface/AddOns/!BugGrabber/BugGrabber.lua:553\n ADDON_ACTION_FORBIDDEN = <function> defined @Interface/AddOns/!BugGrabber/BugGrabber.lua:553\n PLAYER_LOGIN = <function> defined @Interface/AddOns/!BugGrabber/BugGrabber.lua:547\n LUA_WARNING = <function> defined @Interface/AddOns/!BugGrabber/BugGrabber.lua:562\n ADDON_LOADED = <function> defined @Interface/AddOns/!BugGrabber/BugGrabber.lua:507\n}\n",
			["stack"] = "[string \"@Interface/AddOns/!BugGrabber/BugGrabber.lua\"]:481: in function <Interface/AddOns/!BugGrabber/BugGrabber.lua:481>\n[string \"=[C]\"]: in function `CopyToClipboard'\n[string \"@Interface/SharedXML/UnitPopupSharedButtonMixins.lua\"]:1125: in function `OnClick'\n[string \"@Interface/SharedXML/UnitPopupShared.lua\"]:148: in function `func'\n[string \"@Interface/FrameXML/UIDropDownMenu.lua\"]:956: in function `UIDropDownMenuButton_OnClick'\n[string \"*UIDropDownMenuTemplates.xml:149_OnClick\"]:1: in function <[string \"*UIDropDownMenuTemplates.xml:149_OnClick\"]:1>",
			["session"] = 6113,
			["counter"] = 1,
		}, -- [25]
		{
			["message"] = "...ns/Blizzard_LookingForGroupUI/Blizzard_LFGBrowse.lua:1124: attempt to index local 'roles' (a nil value)",
			["time"] = "2023/07/22 11:47:39",
			["locals"] = "lfgSearchResultID = 398\nroles = nil\nplayerRoles = <table> {\n tank = false\n dps = false\n healer = false\n}\n(*temporary) = <table> {\n tank = false\n dps = false\n healer = false\n}\n(*temporary) = false\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = \"attempt to index local 'roles' (a nil value)\"\n",
			["stack"] = "[string \"@Interface/AddOns/Blizzard_LookingForGroupUI/Blizzard_LFGBrowse.lua\"]:1124: in function <...ns/Blizzard_LookingForGroupUI/Blizzard_LFGBrowse.lua:1121>\n[string \"@Interface/AddOns/Blizzard_LookingForGroupUI/Blizzard_LFGBrowse.lua\"]:1219: in function <...ns/Blizzard_LookingForGroupUI/Blizzard_LFGBrowse.lua:1145>\n[string \"=[C]\"]: in function `sort'\n[string \"@Interface/AddOns/Blizzard_LookingForGroupUI/Blizzard_LFGBrowse.lua\"]:1248: in function `LFGBrowseUtil_SortSearchResults'\n[string \"@Interface/AddOns/Blizzard_LookingForGroupUI/Blizzard_LFGBrowse.lua\"]:122: in function `UpdateResultList'\n[string \"@Interface/AddOns/Blizzard_LookingForGroupUI/Blizzard_LFGBrowse.lua\"]:113: in function <...ns/Blizzard_LookingForGroupUI/Blizzard_LFGBrowse.lua:111>\n[string \"=[C]\"]: in function `Show'\n[string \"@Interface_Wrath/FrameXML/UIParent.lua\"]:2236: in function `SetUIPanel'\n[string \"@Interface_Wrath/FrameXML/UIParent.lua\"]:2081: in function `ShowUIPanel'\n[string \"@Interface_Wrath/FrameXML/UIParent.lua\"]:1949: in function <Interface_Wrath/FrameXML/UIParent.lua:1945>\n[string \"=[C]\"]: in function `SetAttribute'\n[string \"@Interface_Wrath/FrameXML/UIParent.lua\"]:2760: in function `ShowUIPanel'\n[string \"@Interface/AddOns/Blizzard_LookingForGroupUI/Blizzard_LFGParentFrame.lua\"]:48: in function `ShowLFGParentFrame'\n[string \"@Interface/AddOns/Blizzard_LookingForGroupUI/Blizzard_LFGParentFrame.lua\"]:73: in function `ToggleLFGParentFrame'\n[string \"*MainMenuBarMicroButtons.xml:365_OnClick\"]:1: in function <[string \"*MainMenuBarMicroButtons.xml:365_OnClick\"]:1>",
			["session"] = 6118,
			["counter"] = 6,
		}, -- [26]
		{
			["message"] = "...ns/Blizzard_LookingForGroupUI/Blizzard_LFGBrowse.lua:1205: attempt to index local 'roles1' (a nil value)",
			["time"] = "2023/07/26 13:51:06",
			["locals"] = "searchResultID1 = 182\nsearchResultID2 = 170\nsearchResultInfo1 = <table> {\n comment = \"|Kr94|k\"\n leaderName = \"Barrkvisten\"\n voiceChat = \"\"\n newPlayerFriendly = false\n searchResultID = 182\n isWarMode = false\n isDelisted = true\n numGuildMates = 0\n requiredItemLevel = 0\n hasSelf = false\n numBNetFriends = 0\n numMembers = 1\n name = \"\"\n age = 2666\n autoAccept = false\n activityIDs = <table> {\n }\n numCharFriends = 0\n requiredHonorLevel = 0\n}\nsearchResultInfo2 = <table> {\n comment = \"\"\n leaderName = \"Shizon\"\n voiceChat = \"\"\n newPlayerFriendly = false\n searchResultID = 170\n isWarMode = false\n isDelisted = false\n numGuildMates = 0\n requiredItemLevel = 0\n hasSelf = false\n numBNetFriends = 0\n numMembers = 1\n name = \"\"\n age = 1141\n autoAccept = false\n activityIDs = <table> {\n }\n numCharFriends = 0\n requiredHonorLevel = 0\n}\nhasSelf1 = false\nhasSelf2 = false\nisSolo1 = true\nisSolo2 = true\nroleOrderings = <table> {\n 1 = \"TANK\"\n 2 = \"HEALER\"\n 3 = \"DAMAGER\"\n}\nroles1 = nil\nroles2 = <table> {\n HUNTER = 0\n WARRIOR = 0\n ROGUE = 1\n DAMAGER = 1\n LEADER_ROLE_HEALER = false\n NOROLE = 0\n HEALER_REMAINING = 0\n DRUID = 0\n DEATHKNIGHT = 0\n TANK = 0\n DAMAGER_REMAINING = 0\n LEADER_ROLE_DAMAGER = true\n HEALER = 0\n PRIEST = 0\n TANK_REMAINING = 0\n WARLOCK = 0\n MAGE = 0\n SHAMAN = 0\n PALADIN = 0\n LEADER_ROLE_TANK = false\n}\n(for generator) = <function> defined =[C]:-1\n(for state) = <table> {\n 1 = \"TANK\"\n 2 = \"HEALER\"\n 3 = \"DAMAGER\"\n}\n(for control) = 1\n_ = 1\ndesiredRole = \"TANK\"\n(*temporary) = \"LEADER_ROLE_TANK\"\n(*temporary) = \"TANK\"\n(*temporary) = \"TANK\"\n(*temporary) = \"attempt to index local 'roles1' (a nil value)\"\nactiveEntryInfo = nil\nactiveEntryUseDungeonRoles = false\ngroupMemberCounts = <table> {\n HUNTER = 0\n WARRIOR = 0\n PALADIN = 0\n DAMAGER = 0\n HEALER = 0\n NOROLE = 0\n PRIEST = 0\n MAGE = 0\n WARLOCK = 0\n SHAMAN = 0\n DEATHKNIGHT = 0\n DRUID = 0\n TANK = 0\n ROGUE = 0\n}\nLFGBROWSE_DUNGEON_NUM_TANKS_EXPECTED = 1\nLFGBROWSE_DUNGEON_NUM_HEALERS_EXPECTED = 1\nLFGBROWSE_DUNGEON_NUM_DPS_EXPECTED = 3\nHasRemainingSlotsForLocalPlayerRole = <function> defined @Interface/AddOns/Blizzard_LookingForGroupUI/Blizzard_LFGBrowse.lua:1121\n",
			["stack"] = "[string \"@Interface/AddOns/Blizzard_LookingForGroupUI/Blizzard_LFGBrowse.lua\"]:1205: in function <...ns/Blizzard_LookingForGroupUI/Blizzard_LFGBrowse.lua:1145>\n[string \"=[C]\"]: in function `sort'\n[string \"@Interface/AddOns/Blizzard_LookingForGroupUI/Blizzard_LFGBrowse.lua\"]:1248: in function `LFGBrowseUtil_SortSearchResults'\n[string \"@Interface/AddOns/Blizzard_LookingForGroupUI/Blizzard_LFGBrowse.lua\"]:122: in function `UpdateResultList'\n[string \"@Interface/AddOns/Blizzard_LookingForGroupUI/Blizzard_LFGBrowse.lua\"]:113: in function <...ns/Blizzard_LookingForGroupUI/Blizzard_LFGBrowse.lua:111>\n[string \"=[C]\"]: in function `Show'\n[string \"@Interface_Wrath/FrameXML/UIParent.lua\"]:2236: in function `SetUIPanel'\n[string \"@Interface_Wrath/FrameXML/UIParent.lua\"]:2081: in function `ShowUIPanel'\n[string \"@Interface_Wrath/FrameXML/UIParent.lua\"]:1949: in function <Interface_Wrath/FrameXML/UIParent.lua:1945>\n[string \"=[C]\"]: in function `SetAttribute'\n[string \"@Interface_Wrath/FrameXML/UIParent.lua\"]:2760: in function `ShowUIPanel'\n[string \"@Interface/AddOns/Blizzard_LookingForGroupUI/Blizzard_LFGParentFrame.lua\"]:48: in function `ShowLFGParentFrame'\n[string \"@Interface/AddOns/Blizzard_LookingForGroupUI/Blizzard_LFGParentFrame.lua\"]:73: in function `ToggleLFGParentFrame'\n[string \"*MainMenuBarMicroButtons.xml:365_OnClick\"]:1: in function <[string \"*MainMenuBarMicroButtons.xml:365_OnClick\"]:1>",
			["session"] = 6118,
			["counter"] = 2,
		}, -- [27]
		{
			["message"] = "Interface/AddOns/Blizzard_RaidUI/Blizzard_RaidUI.lua:125: bad argument #1 to 'getn' (table expected, got nil)",
			["time"] = "2023/07/19 22:03:37",
			["locals"] = "(*temporary) = nil\n(*temporary) = \"table expected, got nil\"\n",
			["stack"] = "[string \"=[C]\"]: ?\n[string \"@Interface/AddOns/Blizzard_RaidUI/Blizzard_RaidUI.lua\"]:125: in function `RaidClassButton_OnEnter'\n[string \"*Blizzard_RaidUI.xml:45_OnEnter\"]:1: in function <[string \"*Blizzard_RaidUI.xml:45_OnEnter\"]:1>",
			["session"] = 6119,
			["counter"] = 18,
		}, -- [28]
		{
			["message"] = "Interface/SharedXML/AddonList.lua:586: AddOn index must be in the range of 1 to 37",
			["time"] = "2023/08/02 11:32:42",
			["locals"] = "(*temporary) = 0\n",
			["stack"] = "[string \"=[C]\"]: in function `GetAddOnInfo'\n[string \"@Interface/SharedXML/AddonList.lua\"]:586: in function `AddonTooltip_Update'\n[string \"@Interface/SharedXML/AddonList.lua\"]:465: in function `AddonListScrollFrame_OnVerticalScroll'\n[string \"*AddonList.xml:350_OnVerticalScroll\"]:1: in function <[string \"*AddonList.xml:350_OnVerticalScroll\"]:1>\n[string \"=[C]\"]: in function `SetVerticalScroll'\n[string \"@Interface/SharedXML/SecureScrollTemplates.lua\"]:49: in function <Interface/SharedXML/SecureScrollTemplates.lua:48>\n[string \"=[C]\"]: in function `SetValue'\n[string \"@Interface/SharedXML/AddonList.lua\"]:461: in function `AddonListScrollFrame_OnVerticalScroll'\n[string \"*AddonList.xml:350_OnVerticalScroll\"]:1: in function <[string \"*AddonList.xml:350_OnVerticalScroll\"]:1>\n[string \"=[C]\"]: in function `SetVerticalScroll'\n[string \"@Interface/SharedXML/SecureScrollTemplates.lua\"]:49: in function <Interface/SharedXML/SecureScrollTemplates.lua:48>",
			["session"] = 6120,
			["counter"] = 18,
		}, -- [29]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'iMorph' tried to call the protected function 'Search()'.",
			["time"] = "2023/08/02 10:45:40",
			["locals"] = "_ = Frame {\n RegisterEvent = <function> defined @Interface/AddOns/!BugGrabber/BugGrabber.lua:487\n 0 = <userdata>\n UnregisterEvent = <function> defined @Interface/AddOns/!BugGrabber/BugGrabber.lua:487\n SetScript = <function> defined @Interface/AddOns/!BugGrabber/BugGrabber.lua:487\n}\nevent = \"ADDON_ACTION_BLOCKED\"\nevents = <table> {\n ADDON_ACTION_BLOCKED = <function> defined @Interface/AddOns/!BugGrabber/BugGrabber.lua:553\n ADDON_ACTION_FORBIDDEN = <function> defined @Interface/AddOns/!BugGrabber/BugGrabber.lua:553\n PLAYER_LOGIN = <function> defined @Interface/AddOns/!BugGrabber/BugGrabber.lua:547\n LUA_WARNING = <function> defined @Interface/AddOns/!BugGrabber/BugGrabber.lua:562\n ADDON_LOADED = <function> defined @Interface/AddOns/!BugGrabber/BugGrabber.lua:507\n}\n",
			["stack"] = "[string \"@Interface/AddOns/!BugGrabber/BugGrabber.lua\"]:481: in function <Interface/AddOns/!BugGrabber/BugGrabber.lua:481>\n[string \"=[C]\"]: in function `Search'\n[string \"@Interface/AddOns/Blizzard_LookingForGroupUI/Blizzard_LFGBrowse.lua\"]:226: in function `LFGBrowse_DoSearch'\n[string \"@Interface/AddOns/Blizzard_LookingForGroupUI/Blizzard_LFGBrowse.lua\"]:179: in function `SearchActiveEntry'\n[string \"@Interface/AddOns/Blizzard_LookingForGroupUI/Blizzard_LFGParentFrame.lua\"]:92: in function `LFGParentFrame_SearchActiveEntry'\n[string \"@Interface/AddOns/Blizzard_LookingForGroupUI/Blizzard_LFGListing.lua\"]:72: in function <...s/Blizzard_LookingForGroupUI/Blizzard_LFGListing.lua:54>",
			["session"] = 6120,
			["counter"] = 6,
		}, -- [30]
	},
}
