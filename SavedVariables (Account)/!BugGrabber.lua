
BugGrabberDB = {
	["lastSanitation"] = 3,
	["session"] = 6033,
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
			["time"] = "2023/07/19 17:28:59",
			["session"] = 5975,
			["counter"] = 1,
		}, -- [2]
		{
			["message"] = "Interface_Wrath\\FrameXML\\Bindings.xml:1 Interface/AddOns/SimpleAuraFilter/SimpleAuraFilter.lua:1 Interface/AddOns/SimpleAuraFilter/SimpleAuraFilter.lua:121: 'end' expected (to close 'if' at line 107) near 'else'",
			["time"] = "2023/07/19 17:28:59",
			["session"] = 5975,
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
			["session"] = 5976,
			["time"] = "2023/07/19 17:33:46",
			["counter"] = 1,
		}, -- [6]
		{
			["message"] = "Interface/AddOns/SimpleAuraFilter/Options.lua:1 (null)",
			["time"] = "2023/07/19 17:28:59",
			["session"] = 5976,
			["counter"] = 2,
		}, -- [7]
		{
			["message"] = "Interface_Wrath\\FrameXML\\Bindings.xml:1 Interface/AddOns/SimpleAuraFilter/SimpleAuraFilter.lua:1 Interface/AddOns/SimpleAuraFilter/SimpleAuraFilter.lua:122: 'end' expected (to close 'for' at line 101) near 'else'",
			["session"] = 5976,
			["time"] = "2023/07/19 17:33:46",
			["counter"] = 1,
		}, -- [8]
		{
			["message"] = "Interface_Wrath\\FrameXML\\Bindings.xml:1 Interface/AddOns/SimpleAuraFilter/Options.lua:1 (null)",
			["time"] = "2023/07/19 17:28:59",
			["session"] = 5976,
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
			["message"] = "Interface_Wrath/FrameXML/TargetFrame.lua:758: Action[SetPoint] failed because[Cannot anchor to a region dependent on it]: attempted from: TargetFrameBuff1:SetPoint.",
			["time"] = "2023/07/19 15:03:27",
			["locals"] = "(*temporary) = TargetFrameBuff1 {\n 0 = <userdata>\n unit = \"target\"\n}\n(*temporary) = \"TOPLEFT\"\n(*temporary) = TargetFrameDebuffs {\n 0 = <userdata>\n}\n(*temporary) = \"BOTTOMLEFT\"\n(*temporary) = 0\n(*temporary) = -1\n",
			["stack"] = "[string \"=[C]\"]: in function `SetPoint'\n[string \"@Interface_Wrath/FrameXML/TargetFrame.lua\"]:758: in function `updateFunc'\n[string \"@Interface_Wrath/FrameXML/TargetFrame.lua\"]:726: in function `TargetFrame_UpdateAuraPositions'\n[string \"@Interface_Wrath/FrameXML/TargetFrame.lua\"]:644: in function <Interface_Wrath/FrameXML/TargetFrame.lua:486>\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: in function `TargetFrame_UpdateAuras'\n[string \"*TargetFrame.xml:481_OnShow\"]:1: in function <[string \"*TargetFrame.xml:481_OnShow\"]:1>\n[string \"=[C]\"]: in function `Show'\n[string \"@Interface_Wrath/FrameXML/TargetFrame.lua\"]:971: in function `TargetofTarget_Update'\n[string \"@Interface_Wrath/FrameXML/TargetFrame.lua\"]:129: in function `TargetFrame_Update'\n[string \"@Interface_Wrath/FrameXML/TargetFrame.lua\"]:170: in function `OnEvent'\n[string \"@Interface/FrameXML/UnitFrame.lua\"]:762: in function <Interface/FrameXML/UnitFrame.lua:760>\n[string \"=[C]\"]: in function `CameraOrSelectOrMoveStop'\n[string \"CAMERAORSELECTORMOVE\"]:4: in function <[string \"CAMERAORSELECTORMOVE\"]:1>",
			["session"] = 6024,
			["counter"] = 14,
		}, -- [11]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'HideChatButton' tried to call the protected function 'Search()'.",
			["time"] = "2023/07/22 13:10:32",
			["locals"] = "_ = Frame {\n RegisterEvent = <function> defined @Interface/AddOns/!BugGrabber/BugGrabber.lua:487\n 0 = <userdata>\n UnregisterEvent = <function> defined @Interface/AddOns/!BugGrabber/BugGrabber.lua:487\n SetScript = <function> defined @Interface/AddOns/!BugGrabber/BugGrabber.lua:487\n}\nevent = \"ADDON_ACTION_BLOCKED\"\nevents = <table> {\n ADDON_ACTION_BLOCKED = <function> defined @Interface/AddOns/!BugGrabber/BugGrabber.lua:553\n ADDON_ACTION_FORBIDDEN = <function> defined @Interface/AddOns/!BugGrabber/BugGrabber.lua:553\n PLAYER_LOGIN = <function> defined @Interface/AddOns/!BugGrabber/BugGrabber.lua:547\n LUA_WARNING = <function> defined @Interface/AddOns/!BugGrabber/BugGrabber.lua:562\n ADDON_LOADED = <function> defined @Interface/AddOns/!BugGrabber/BugGrabber.lua:507\n}\n",
			["stack"] = "[string \"@Interface/AddOns/!BugGrabber/BugGrabber.lua\"]:481: in function <Interface/AddOns/!BugGrabber/BugGrabber.lua:481>\n[string \"=[C]\"]: in function `Search'\n[string \"@Interface/AddOns/Blizzard_LookingForGroupUI/Blizzard_LFGBrowse.lua\"]:226: in function `LFGBrowse_DoSearch'\n[string \"@Interface/AddOns/Blizzard_LookingForGroupUI/Blizzard_LFGBrowse.lua\"]:179: in function `SearchActiveEntry'\n[string \"@Interface/AddOns/Blizzard_LookingForGroupUI/Blizzard_LFGParentFrame.lua\"]:92: in function `LFGParentFrame_SearchActiveEntry'\n[string \"@Interface/AddOns/Blizzard_LookingForGroupUI/Blizzard_LFGListing.lua\"]:72: in function <...s/Blizzard_LookingForGroupUI/Blizzard_LFGListing.lua:54>",
			["session"] = 6026,
			["counter"] = 2,
		}, -- [12]
		{
			["message"] = "Interface/AddOns/TextureScript/TextureScript.lua:1761: calling 'GetParent' on bad self (Usage: local parent = self:GetParent())",
			["time"] = "2023/07/22 19:19:49",
			["locals"] = "(*temporary) = StatusBar {\n 0 = <userdata>\n showTradeSkills = false\n holdTime = 0\n Border = Texture {\n }\n Flash = Texture {\n }\n showCastbar = true\n value = 1.834000\n Icon = Texture {\n }\n startChannelColor = <table> {\n }\n finishedCastColor = <table> {\n }\n castID = \"Cast-3-5571-603-10953-58702-00013C0FB4\"\n nonInterruptibleColor = <table> {\n }\n maxValue = 2.200000\n finishedColorSameAsStart = false\n Text = FontString {\n }\n unit = \"nameplate5\"\n casting = true\n showShield = true\n BorderShield = Texture {\n }\n Spark = Texture {\n }\n startCastColor = <table> {\n }\n flashColorSameAsStart = true\n notInterruptible = true\n failedCastColor = <table> {\n }\n}\n",
			["stack"] = "[string \"=[C]\"]: in function `GetParent'\n[string \"@Interface/AddOns/TextureScript/TextureScript.lua\"]:1761: in function <Interface/AddOns/TextureScript/TextureScript.lua:1760>\n[string \"=[C]\"]: in function `CastingBarFrame_OnShow'\n[string \"@Interface_TBC/AddOns/Blizzard_NamePlates/Blizzard_NamePlates.lua\"]:426: in function <...C/AddOns/Blizzard_NamePlates/Blizzard_NamePlates.lua:425>\n[string \"=[C]\"]: in function `Show'\n[string \"@Interface_Wrath/FrameXML/CompactUnitFrame.lua\"]:372: in function `CompactUnitFrame_UpdateVisible'\n[string \"@Interface_Wrath/FrameXML/CompactUnitFrame.lua\"]:299: in function `CompactUnitFrame_UpdateAll'\n[string \"@Interface_Wrath/FrameXML/CompactUnitFrame.lua\"]:185: in function `CompactUnitFrame_SetUnit'\n[string \"@Interface_TBC/AddOns/Blizzard_NamePlates/Blizzard_NamePlates.lua\"]:330: in function `OnAdded'\n[string \"@Interface_TBC/AddOns/Blizzard_NamePlates/Blizzard_NamePlates.lua\"]:118: in function `OnNamePlateAdded'\n[string \"@Interface_TBC/AddOns/Blizzard_NamePlates/Blizzard_NamePlates.lua\"]:51: in function <...C/AddOns/Blizzard_NamePlates/Blizzard_NamePlates.lua:42>",
			["session"] = 6026,
			["counter"] = 1,
		}, -- [13]
		{
			["message"] = "...ns/Blizzard_LookingForGroupUI/Blizzard_LFGBrowse.lua:1124: attempt to index local 'roles' (a nil value)",
			["time"] = "2023/07/22 11:47:39",
			["locals"] = "lfgSearchResultID = 398\nroles = nil\nplayerRoles = <table> {\n tank = false\n dps = false\n healer = false\n}\n(*temporary) = <table> {\n tank = false\n dps = false\n healer = false\n}\n(*temporary) = false\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = \"attempt to index local 'roles' (a nil value)\"\n",
			["stack"] = "[string \"@Interface/AddOns/Blizzard_LookingForGroupUI/Blizzard_LFGBrowse.lua\"]:1124: in function <...ns/Blizzard_LookingForGroupUI/Blizzard_LFGBrowse.lua:1121>\n[string \"@Interface/AddOns/Blizzard_LookingForGroupUI/Blizzard_LFGBrowse.lua\"]:1219: in function <...ns/Blizzard_LookingForGroupUI/Blizzard_LFGBrowse.lua:1145>\n[string \"=[C]\"]: in function `sort'\n[string \"@Interface/AddOns/Blizzard_LookingForGroupUI/Blizzard_LFGBrowse.lua\"]:1248: in function `LFGBrowseUtil_SortSearchResults'\n[string \"@Interface/AddOns/Blizzard_LookingForGroupUI/Blizzard_LFGBrowse.lua\"]:122: in function `UpdateResultList'\n[string \"@Interface/AddOns/Blizzard_LookingForGroupUI/Blizzard_LFGBrowse.lua\"]:113: in function <...ns/Blizzard_LookingForGroupUI/Blizzard_LFGBrowse.lua:111>\n[string \"=[C]\"]: in function `Show'\n[string \"@Interface_Wrath/FrameXML/UIParent.lua\"]:2236: in function `SetUIPanel'\n[string \"@Interface_Wrath/FrameXML/UIParent.lua\"]:2081: in function `ShowUIPanel'\n[string \"@Interface_Wrath/FrameXML/UIParent.lua\"]:1949: in function <Interface_Wrath/FrameXML/UIParent.lua:1945>\n[string \"=[C]\"]: in function `SetAttribute'\n[string \"@Interface_Wrath/FrameXML/UIParent.lua\"]:2760: in function `ShowUIPanel'\n[string \"@Interface/AddOns/Blizzard_LookingForGroupUI/Blizzard_LFGParentFrame.lua\"]:48: in function `ShowLFGParentFrame'\n[string \"@Interface/AddOns/Blizzard_LookingForGroupUI/Blizzard_LFGParentFrame.lua\"]:73: in function `ToggleLFGParentFrame'\n[string \"*MainMenuBarMicroButtons.xml:365_OnClick\"]:1: in function <[string \"*MainMenuBarMicroButtons.xml:365_OnClick\"]:1>",
			["session"] = 6027,
			["counter"] = 4,
		}, -- [14]
		{
			["message"] = "Interface/AddOns/Blizzard_RaidUI/Blizzard_RaidUI.lua:125: bad argument #1 to 'getn' (table expected, got nil)",
			["time"] = "2023/07/19 22:03:37",
			["locals"] = "(*temporary) = nil\n(*temporary) = \"table expected, got nil\"\n",
			["stack"] = "[string \"=[C]\"]: ?\n[string \"@Interface/AddOns/Blizzard_RaidUI/Blizzard_RaidUI.lua\"]:125: in function `RaidClassButton_OnEnter'\n[string \"*Blizzard_RaidUI.xml:45_OnEnter\"]:1: in function <[string \"*Blizzard_RaidUI.xml:45_OnEnter\"]:1>",
			["session"] = 6032,
			["counter"] = 13,
		}, -- [15]
	},
}
