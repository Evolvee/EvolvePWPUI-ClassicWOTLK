
BugGrabberDB = {
	["lastSanitation"] = 3,
	["session"] = 3135,
	["errors"] = {
		{
			["message"] = "...s\\Questie\\Modules\\Tracker\\QuestieTrackerPrivates.lua:105: Frame Questie_BaseFrame is not resizable",
			["time"] = "2022/05/06 18:28:15",
			["locals"] = "(*temporary) = Questie_BaseFrame {\n 0 = <userdata>\n TopLeftCorner = <unnamed> {\n }\n OnBackdropLoaded = <function> defined @Interface\\SharedXML\\Backdrop.lua:144\n Update = <function> defined @Interface\\AddOns\\Questie\\Modules\\Tracker\\QuestieTracker.lua:239\n Center = <unnamed> {\n }\n GetBackdropColor = <function> defined @Interface\\SharedXML\\Backdrop.lua:382\n SetupTextureCoordinates = <function> defined @Interface\\SharedXML\\Backdrop.lua:206\n OnBackdropSizeChanged = <function> defined @Interface\\SharedXML\\Backdrop.lua:174\n HasBackdropInfo = <function> defined @Interface\\SharedXML\\Backdrop.lua:270\n SetBackdropBorderColor = <function> defined @Interface\\SharedXML\\Backdrop.lua:414\n RightEdge = <unnamed> {\n }\n backdropInfo = <table> {\n }\n BottomEdge = <unnamed> {\n }\n GetEdgeSize = <function> defined @Interface\\SharedXML\\Backdrop.lua:180\n BottomLeftCorner = <unnamed> {\n }\n BottomRightCorner = <unnamed> {\n }\n TopEdge = <unnamed> {\n }\n ApplyBackdrop = <function> defined @Interface\\SharedXML\\Backdrop.lua:286\n SetBackdrop = <function> defined @Interface\\SharedXML\\Backdrop.lua:321\n ClearBackdrop = <function> defined @Interface\\SharedXML\\Backdrop.lua:274\n TopRightCorner = <unnamed> {\n }\n GetBackdropBorderColor = <function> defined @Interface\\SharedXML\\Backdrop.lua:401\n GetBackdrop = <function> defined @Interface\\SharedXML\\Backdrop.lua:339\n sizer = Questie_Sizer {\n }\n SetupPieceVisuals = <function> defined @Interface\\SharedXML\\Backdrop.lua:238\n SetBackdropColor = <function> defined @Interface\\SharedXML\\Backdrop.lua:391\n LeftEdge = <unnamed> {\n }\n SetBorderBlendMode = <function> defined @Interface\\SharedXML\\Backdrop.lua:258\n}\n(*temporary) = \"RIGHT\"\n",
			["stack"] = "[string \"=[C]\"]: in function `StartSizing'\n[string \"@Interface\\AddOns\\Questie\\Modules\\Tracker\\QuestieTrackerPrivates.lua\"]:105: in function <...s\\Questie\\Modules\\Tracker\\QuestieTrackerPrivates.lua:93>",
			["session"] = 2349,
			["counter"] = 1,
		}, -- [1]
		{
			["message"] = "...s\\Questie\\Modules\\Tracker\\QuestieTrackerPrivates.lua:129: attempt to index upvalue 'updateTimer' (a nil value)",
			["time"] = "2022/05/06 18:28:16",
			["locals"] = "self = Questie_Sizer {\n 0 = <userdata>\n}\nbutton = \"LeftButton\"\nbaseFrame = Questie_BaseFrame {\n 0 = <userdata>\n TopLeftCorner = <unnamed> {\n }\n OnBackdropLoaded = <function> defined @Interface\\SharedXML\\Backdrop.lua:144\n Update = <function> defined @Interface\\AddOns\\Questie\\Modules\\Tracker\\QuestieTracker.lua:239\n Center = <unnamed> {\n }\n GetBackdropColor = <function> defined @Interface\\SharedXML\\Backdrop.lua:382\n SetupTextureCoordinates = <function> defined @Interface\\SharedXML\\Backdrop.lua:206\n OnBackdropSizeChanged = <function> defined @Interface\\SharedXML\\Backdrop.lua:174\n HasBackdropInfo = <function> defined @Interface\\SharedXML\\Backdrop.lua:270\n SetBackdropBorderColor = <function> defined @Interface\\SharedXML\\Backdrop.lua:414\n RightEdge = <unnamed> {\n }\n backdropInfo = <table> {\n }\n BottomEdge = <unnamed> {\n }\n GetEdgeSize = <function> defined @Interface\\SharedXML\\Backdrop.lua:180\n BottomLeftCorner = <unnamed> {\n }\n BottomRightCorner = <unnamed> {\n }\n TopEdge = <unnamed> {\n }\n ApplyBackdrop = <function> defined @Interface\\SharedXML\\Backdrop.lua:286\n SetBackdrop = <function> defined @Interface\\SharedXML\\Backdrop.lua:321\n ClearBackdrop = <function> defined @Interface\\SharedXML\\Backdrop.lua:274\n TopRightCorner = <unnamed> {\n }\n GetBackdropBorderColor = <function> defined @Interface\\SharedXML\\Backdrop.lua:401\n GetBackdrop = <function> defined @Interface\\SharedXML\\Backdrop.lua:339\n sizer = Questie_Sizer {\n }\n SetupPieceVisuals = <function> defined @Interface\\SharedXML\\Backdrop.lua:238\n SetBackdropColor = <function> defined @Interface\\SharedXML\\Backdrop.lua:391\n LeftEdge = <unnamed> {\n }\n SetBorderBlendMode = <function> defined @Interface\\SharedXML\\Backdrop.lua:258\n}\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = <userdata>\n(*temporary) = \"LeftButton\"\n(*temporary) = \"attempt to index upvalue 'updateTimer' (a nil value)\"\nQuestieTracker = <table> {\n HookBaseTracker = <function> defined @Interface\\AddOns\\Questie\\Modules\\Tracker\\QuestieTracker.lua:2049\n utils = <table> {\n }\n Enable = <function> defined @Interface\\AddOns\\Questie\\Modules\\Tracker\\QuestieTracker.lua:1155\n _alreadyHooked = true\n Expand = <function> defined @Interface\\AddOns\\Questie\\Modules\\Tracker\\QuestieTracker.lua:1201\n _GetNumQuestWatches = <function> defined =[C]:-1\n GetBaseFrame = <function> defined @Interface\\AddOns\\Questie\\Modules\\Tracker\\QuestieTracker.lua:1087\n UpdateQuestProximityTimer = <function> defined @Interface\\AddOns\\Questie\\Modules\\Tracker\\QuestieTracker.lua:2414\n ResetLinesForChange = <function> defined @Interface\\AddOns\\Questie\\Modules\\Tracker\\QuestieTracker.lua:2168\n FocusQuest = <function> defined @Interface\\AddOns\\Questie\\Modules\\Tracker\\QuestieTracker.lua:2007\n ResetDurabilityFrame = <function> defined @Interface\\AddOns\\Questie\\Modules\\Tracker\\QuestieTracker.lua:1112\n Initialize = <function> defined @Interface\\AddOns\\Questie\\Modules\\Tracker\\QuestieTracker.lua:63\n Disable = <function> defined @Interface\\AddOns\\Questie\\Modules\\Tracker\\QuestieTracker.lua:1169\n Unhook = <function> defined @Interface\\AddOns\\Questie\\Modules\\Tracker\\QuestieTracker.lua:2035\n Update = <function> defined @Interface\\AddOns\\Questie\\Modules\\Tracker\\QuestieTracker.lua:1211\n _order = <table> {\n }\n FocusObjective = <function> defined @Interface\\AddOns\\Questie\\Modules\\Tracker\\QuestieTracker.lua:1969\n Toggle = <function> defined @Interface\\AddOns\\Questie\\Modules\\Tracker\\QuestieTracker.lua:1181\n CheckDurabilityAlertStatus = <function> defined @Interface\\AddOns\\Questie\\Modules\\Tracker\\QuestieTracker.lua:1131\n Untrack = <function> defined @Interface\\AddOns\\Questie\\Modules\\Tracker\\QuestieTracker.lua:2025\n _IsQuestWatched = <function> defined =[C]:-1\n IsExpanded = <function> defined @Interface\\AddOns\\Questie\\Modules\\Tracker\\QuestieTracker.lua:1207\n UnFocus = <function> defined @Interface\\AddOns\\Questie\\Modules\\Tracker\\QuestieTracker.lua:1923\n _last_aqw = 3\n MoveDurabilityFrame = <function> defined @Interface\\AddOns\\Questie\\Modules\\Tracker\\QuestieTracker.lua:1117\n _alreadyHookedSecure = true\n started = true\n Collapse = <function> defined @Interface\\AddOns\\Questie\\Modules\\Tr",
			["stack"] = "[string \"@Interface\\AddOns\\Questie\\Modules\\Tracker\\QuestieTrackerPrivates.lua\"]:129: in function <...s\\Questie\\Modules\\Tracker\\QuestieTrackerPrivates.lua:121>",
			["session"] = 2349,
			["counter"] = 1,
		}, -- [2]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'Questie' tried to call the protected function 'Questie_TrackedQuests:ClearAllPoints()'.",
			["time"] = "2022/05/11 00:52:20",
			["locals"] = "InCombatSkipped",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `ClearAllPoints'\n[string \"@Interface\\AddOns\\Questie\\Modules\\Tracker\\QuestieTracker.lua\"]:610: in function `Update'\n[string \"@Interface\\AddOns\\Questie\\Modules\\Tracker\\QuestieTracker.lua\"]:1232: in function `Update'\n[string \"@Interface\\AddOns\\Questie\\Modules\\Quest\\QuestieQuest.lua\"]:384: in function `val'\n[string \"@Interface\\AddOns\\Questie\\Modules\\TaskQueue.lua\"]:8: in function <Interface\\AddOns\\Questie\\Modules\\TaskQueue.lua:6>",
			["session"] = 2379,
			["counter"] = 1,
		}, -- [3]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'LFGBulletinBoard' tried to call the protected function 'Search()'.",
			["time"] = "2022/05/12 16:57:00",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `Search'\n[string \"@Interface\\AddOns\\Blizzard_LookingForGroupUI\\Blizzard_LFGFrame.lua\"]:534: in function `SendLFMQuery'\n[string \"@Interface\\AddOns\\Blizzard_LookingForGroupUI\\Blizzard_LFGFrame.lua\"]:240: in function `SearchActiveEntry'\n[string \"@Interface\\AddOns\\Blizzard_LookingForGroupUI\\Blizzard_LFGFrame.lua\"]:67: in function `LFGParentFrame_LFMSearchActiveEntry'\n[string \"@Interface\\AddOns\\Blizzard_LookingForGroupUI\\Blizzard_LFGFrame.lua\"]:646: in function <...Ons\\Blizzard_LookingForGroupUI\\Blizzard_LFGFrame.lua:639>",
			["session"] = 2395,
			["counter"] = 1,
		}, -- [4]
		{
			["message"] = "Interface_TBC\\FrameXML\\UnitPopup.lua:1007: bad argument #1 to 'CanReportPlayer' (Usage: local canReport = C_ChatInfo.CanReportPlayer(playerLocation))",
			["time"] = "2022/05/12 20:45:38",
			["locals"] = "(*temporary) = <table> {\n GetWhoIndex = <function> defined @Interface\\FrameXML\\ObjectAPI\\PlayerLocation.lua:135\n IsBattleNetGUID = <function> defined @Interface\\FrameXML\\ObjectAPI\\PlayerLocation.lua:69\n SetGUID = <function> defined @Interface\\FrameXML\\ObjectAPI\\PlayerLocation.lua:53\n whoIndex = 2\n IsCommunityData = <function> defined @Interface\\FrameXML\\ObjectAPI\\PlayerLocation.lua:147\n IsBattlefieldScoreIndex = <function> defined @Interface\\FrameXML\\ObjectAPI\\PlayerLocation.lua:105\n SetCommunityInvitation = <function> defined @Interface\\FrameXML\\ObjectAPI\\PlayerLocation.lua:151\n IsGUID = <function> defined @Interface\\FrameXML\\ObjectAPI\\PlayerLocation.lua:65\n SetVoiceID = <function> defined @Interface\\FrameXML\\ObjectAPI\\PlayerLocation.lua:113\n IsChatLineID = <function> defined @Interface\\FrameXML\\ObjectAPI\\PlayerLocation.lua:93\n GetBattlefieldScoreIndex = <function> defined @Interface\\FrameXML\\ObjectAPI\\PlayerLocation.lua:109\n SetBattlefieldScoreIndex = <function> defined @Interface\\FrameXML\\ObjectAPI\\PlayerLocation.lua:101\n IsValid = <function> defined @Interface\\FrameXML\\ObjectAPI\\PlayerLocation.lua:57\n IsWhoIndex = <function> defined @Interface\\FrameXML\\ObjectAPI\\PlayerLocation.lua:131\n IsVoiceID = <function> defined @Interface\\FrameXML\\ObjectAPI\\PlayerLocation.lua:119\n SetWhoIndex = <function> defined @Interface\\FrameXML\\ObjectAPI\\PlayerLocation.lua:127\n IsUnit = <function> defined @Interface\\FrameXML\\ObjectAPI\\PlayerLocation.lua:81\n GetGUID = <function> defined @Interface\\FrameXML\\ObjectAPI\\PlayerLocation.lua:73\n GetVoiceID = <function> defined @Interface\\FrameXML\\ObjectAPI\\PlayerLocation.lua:123\n IsCommunityInvitation = <function> defined @Interface\\FrameXML\\ObjectAPI\\PlayerLocation.lua:157\n GetChatLineID = <function> defined @Interface\\FrameXML\\ObjectAPI\\PlayerLocation.lua:97\n ClearAndSetField = <function> defined @Interface\\FrameXML\\ObjectAPI\\PlayerLocation.lua:176\n SetUnit = <function> defined @Interface\\FrameXML\\ObjectAPI\\PlayerLocation.lua:77\n GetUnit = <function> defined @Interface\\FrameXML\\ObjectAPI\\PlayerLocation.lua:85\n SetChatLineID = <function> defined @Interface\\FrameXML\\ObjectAPI\\PlayerLocation.lua:89\n Clear = <function> defined @Interface\\FrameXML\\ObjectAPI\\PlayerLocation.lua:162\n SetCommunityData = <function> defined @Interface\\FrameXML\\ObjectAPI\\PlayerLocation.lua:139\n}\n",
			["stack"] = "[string \"=[C]\"]: in function `CanReportPlayer'\n[string \"@Interface_TBC\\FrameXML\\UnitPopup.lua\"]:1007: in function `UnitPopup_HideButtons'\n[string \"@Interface_TBC\\FrameXML\\UnitPopup.lua\"]:327: in function `UnitPopup_ShowMenu'\n[string \"@Interface_TBC\\FrameXML\\FriendsFrame.lua\"]:257: in function `initFunction'\n[string \"@Interface\\FrameXML\\UIDropDownMenu.lua\"]:79: in function `UIDropDownMenu_Initialize'\n[string \"@Interface\\FrameXML\\UIDropDownMenu.lua\"]:1092: in function <Interface\\FrameXML\\UIDropDownMenu.lua:957>\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: in function `ToggleDropDownMenu'\n[string \"@Interface_TBC\\FrameXML\\FriendsFrame.lua\"]:244: in function `FriendsFrame_ShowBNDropdown'\n[string \"@Interface_TBC\\FrameXML\\FriendsFrame.lua\"]:1026: in function `FriendsFrameFriendButton_OnClick'\n[string \"*:OnClick\"]:1: in function <[string \"*:OnClick\"]:1>",
			["session"] = 2397,
			["counter"] = 7,
		}, -- [5]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'LoseControl' tried to call the protected function 'CompactRaidFrameContainer:Hide()'.",
			["time"] = "2022/05/16 17:59:28",
			["locals"] = "InCombatSkipped",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `Hide'\n[string \"@Interface\\AddOns\\Blizzard_CompactRaidFrames\\Blizzard_CompactRaidFrameManager.lua\"]:493: in function `CompactRaidFrameManager_UpdateContainerVisibility'\n[string \"@Interface\\AddOns\\Blizzard_CompactRaidFrames\\Blizzard_CompactRaidFrameManager.lua\"]:438: in function <...mpactRaidFrames\\Blizzard_CompactRaidFrameManager.lua:427>\n[string \"@Interface\\AddOns\\Blizzard_CompactRaidFrames\\Blizzard_CompactRaidFrameManager.lua\"]:477: in function `CompactRaidFrameManager_SetSetting'\n[string \"@Interface\\AddOns\\Blizzard_CUFProfiles\\Blizzard_CompactUnitFrameProfiles.lua\"]:565: in function `func'\n[string \"@Interface\\AddOns\\Blizzard_CUFProfiles\\Blizzard_CompactUnitFrameProfiles.lua\"]:542: in function `CompactUnitFrameProfiles_ApplyProfile'\n[string \"@Interface\\AddOns\\Blizzard_CUFProfiles\\Blizzard_CompactUnitFrameProfiles.lua\"]:173: in function `CompactUnitFrameProfiles_ApplyCurrentSettings'\n[string \"@Interface\\AddOns\\Blizzard_CUFProfiles\\Blizzard_CompactUnitFrameProfiles.lua\"]:82: in function `CompactUnitFrameProfiles_CancelChanges'\n[string \"@Interface\\AddOns\\Blizzard_CUFProfiles\\Blizzard_CompactUnitFrameProfiles.lua\"]:75: in function <...rd_CUFProfiles\\Blizzard_CompactUnitFrameProfiles.lua:73>\n[string \"=[C]\"]: in function `pcall'\n[string \"@Interface\\FrameXML\\InterfaceOptionsFrame.lua\"]:216: in function <Interface\\FrameXML\\InterfaceOptionsFrame.lua:215>\n[string \"=[C]\"]: ?\n[string \"@Interface\\FrameXML\\InterfaceOptionsFrame.lua\"]:251: in function <Interface\\FrameXML\\InterfaceOptionsFrame.lua:247>\n[string \"=[C]\"]: in function `Click'\n[string \"@Interface_TBC\\FrameXML\\UIParent.lua\"]:3439: in function `ToggleGameMenu'\n[string \"TOGGLEGAMEMENU\"]:1: in function <[string \"TOGGLEGAMEMENU\"]:1>",
			["session"] = 2429,
			["counter"] = 1,
		}, -- [6]
		{
			["message"] = "Interface\\AddOns\\Gladdy\\EventListener.lua:72: Usage: UnitIsUnit(\"unit\", \"otherUnit\")",
			["time"] = "2022/05/17 19:07:50",
			["locals"] = "InCombatSkipped",
			["stack"] = "[string \"=[C]\"]: ?\n[string \"@Interface\\AddOns\\Gladdy\\EventListener.lua\"]:72: in function `SpotEnemy'\n[string \"@Interface\\AddOns\\Gladdy\\Modules\\Healthbar.lua\"]:127: in function <Interface\\AddOns\\Gladdy\\Modules\\Healthbar.lua:97>",
			["session"] = 2434,
			["counter"] = 3,
		}, -- [7]
		{
			["message"] = "Interface\\FrameXML\\ItemRef.lua:45: attempt to call global '_G' (a table value)",
			["time"] = "2022/05/18 17:39:58",
			["locals"] = "link = \"player:Cooldx-Gehennas:710:PARTY:\"\ntext = \"|Hplayer:Cooldx-Gehennas:710:PARTY:|h[|cfffff468Cooldx|r]|h\"\nbutton = \"LeftButton\"\nchatFrame = ChatFrame1 {\n GatherSelectedText = <function> defined =[C]:-1\n RefreshIfNecessary = <function> defined =[C]:-1\n OnPostShow = <function> defined =[C]:-1\n CalculateLineAlphaValueFromTimestamp = <function> defined =[C]:-1\n ScrollUp = <function> defined =[C]:-1\n tellTimer = 612655.087000\n fadeDurationSecs = 3\n GetFading = <function> defined =[C]:-1\n IsTextCopyable = <function> defined =[C]:-1\n shouldFadeAfterInactivity = true\n SetIndentedWordWrap = <function> defined =[C]:-1\n GetJustifyV = <function> defined =[C]:-1\n ScrollToBottom = <function> defined =[C]:-1\n GetMaxLines = <function> defined =[C]:-1\n GetIndentedWordWrap = <function> defined =[C]:-1\n buttonSide = \"left\"\n GetFont = <function> defined =[C]:-1\n checkedGMOTD = true\n SetMaxLines = <function> defined =[C]:-1\n CalculateSelectingCharacterIndicesForVisibleLine = <function> defined =[C]:-1\n OnPostUpdate = <function> defined =[C]:-1\n RefreshDisplay = <function> defined =[C]:-1\n SetFontObject = <function> defined =[C]:-1\n textIsCopyable = false\n SetOnScrollChangedCallback = <function> defined =[C]:-1\n CalculateNumVisibleLines = <function> defined =[C]:-1\n overrideFadeTimestamp = 611907.918000\n MarkDisplayDirty = <function> defined =[C]:-1\n GetMessageInfo = <function> defined =[C]:-1\n GetOnScrollChangedCallback = <function> defined =[C]:-1\n AtTop = <function> defined =[C]:-1\n GetFontObject = <function> defined =[C]:-1\n fontStringPool = <table> {\n }\n CanEffectivelyFade = <function> defined =[C]:-1\n OnPreSizeChanged = <function> defined =[C]:-1\n GetScrollOffset = <function> defined =[C]:-1\n GetSpacing = <function> defined =[C]:-1\n OnPreLoad = <function> defined =[C]:-1\n SetSpacing = <function> defined =[C]:-1\n name = \"General\"\n CalculateLineSpacing = <function> defined =[C]:-1\n AddMessage = <function> defined =[C]:-1\n InitializeFontableFrame = <function> defined =[C]:-1\n GetShadowColor = <function> defined =[C]:-1\n isUninteractable = false\n SetOnTextCopiedCallback = <function> defined =[C]:-1\n mouseOutTime = 0\n RemoveMessagesByPredicate = <function> defined =[C]:-1\n TransformMessages = <function> defined =[C]:-1\n SetShadowColor = <function> defined =[C]:-1\n buttonFrame = ChatFrame1ButtonFrame {\n }\n HasFontObject = <function> defined =[C]:-1\n isDocked = 1\n GetOnTextCopiedCallback = <function> defined =[C]:-1\n SetFading = <function> defined =[C]:-1\n OnPostHide = <function> defined =[C]:-1\n alternativeDefaultLanguage = \"Orcish\"\n isInitialized = 1\n GetNumVisibleLines = <function> defined =[C]:-1\n GetInsertMode = <function> defined =[C]:-1\n SetTimeVisible = <function> defined =[C]:-1\n hasOwnFontObject = true\n Clear = <function> defined =[C]:-1\n oldAlpha = 0\n channelList = <table> {\n }\n GetTimeVisible = <function> defined =[C]:-1\n MarkLayoutDirty = <function> defined =[C]:-1\n SetTextCopyable = <function> defined =[C]:-1\n BackFillMessage = <function> defined =[C]:-1\n UnpackageEntry = <function> defined =[C]:-1\n FontStringContainer = <unnamed> {\n }\n SetShadowOffset = <function> defined =[C]:-1\n messageTypeList = <table> {\n }\n flashTimer = 0.383000\n timeVisibleSecs = 120\n PackageEntry = <function> defined =[C]:-1\n MakeFontObjectCustom = <function> defined =[C]:-1\n fontObject = table: 00000256826A22B0 {\n }\n SetInsertMode = <function> defined =[C]:-1\n mouseInTime = 0\n UpdateSelectingText = <function> defined =[C]:-1\n zoneChannelList = <table> {\n }\n SetScrollOffset = <function> defined =[C]:-1\n onDisplayRefreshedCallback = <function> defined =[C]:-1\n insertMode = 2\n ResetSelectingText = <function> defined =[C]:-1\n hasBeenFaded = true\n GetTextColor = <function> defined =[C]:-1\n CallOnDisplayRefreshed = <function> defined =[C]:-1\n 0 = <userdata>\n IsSelectingText = <function> defined =[C]:-1\n OnFontObjectUpdated = <function> defined =[C]:-1\n FindCharacterAndLineIndexAtCoordinate = <function> defined =[C]:-1\n ResizeButton = ChatFrame1ResizeButton {\n }\n SetFont = <function> defined =[C]:-1\n OnPostMouseDown = <function> defined =[C]:-1\n defaultL",
			["stack"] = "[string \"@Interface\\FrameXML\\ItemRef.lua\"]:45: in function <Interface\\FrameXML\\ItemRef.lua:1>\n[string \"@Interface\\AddOns\\Blizzard_CombatLog\\Blizzard_CombatLog.lua\"]:3535: in function `SetItemRef'\n[string \"@Interface\\FrameXML\\ChatFrame.lua\"]:3730: in function `ChatFrame_OnHyperlinkShow'\n[string \"*:OnHyperlinkClick\"]:1: in function <[string \"*:OnHyperlinkClick\"]:1>",
			["session"] = 2443,
			["counter"] = 1,
		}, -- [8]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'Questie' tried to call the protected function 'MultiBarBottomLeftButton7:Hide()'.",
			["time"] = "2022/05/20 20:24:57",
			["locals"] = "InCombatSkipped",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `Hide'\n[string \"@Interface\\FrameXML\\ActionButton.lua\"]:487: in function `ActionButton_HideGrid'\n[string \"@Interface\\FrameXML\\MultiActionBars.lua\"]:130: in function `MultiActionBar_UpdateGrid'\n[string \"@Interface\\FrameXML\\MultiActionBars.lua\"]:118: in function `MultiActionBar_HideAllGrids'\n[string \"@Interface\\FrameXML\\SpellBookFrame.lua\"]:257: in function <Interface\\FrameXML\\SpellBookFrame.lua:246>\n[string \"=[C]\"]: in function `Hide'\n[string \"@Interface_TBC\\FrameXML\\UIParent.lua\"]:2093: in function `SetUIPanel'\n[string \"@Interface_TBC\\FrameXML\\UIParent.lua\"]:2173: in function `HideUIPanel'\n[string \"@Interface_TBC\\FrameXML\\UIParent.lua\"]:1826: in function <Interface_TBC\\FrameXML\\UIParent.lua:1818>\n[string \"=[C]\"]: in function `SetAttribute'\n[string \"@Interface_TBC\\FrameXML\\UIParent.lua\"]:2616: in function <Interface_TBC\\FrameXML\\UIParent.lua:2599>\n[string \"=[C]\"]: in function `HideUIPanel'\n[string \"@Interface\\SharedXML\\SharedUIPanelTemplates.lua\"]:313: in function `HideParentPanel'\n[string \"*:OnClick\"]:1: in function <[string \"*:OnClick\"]:1>",
			["session"] = 2451,
			["counter"] = 1,
		}, -- [9]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'Questie' tried to call the protected function 'MultiBarBottomRightButton1:Hide()'.",
			["time"] = "2022/05/21 23:54:37",
			["locals"] = "InCombatSkipped",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `Hide'\n[string \"@Interface\\FrameXML\\ActionButton.lua\"]:487: in function `ActionButton_HideGrid'\n[string \"@Interface\\FrameXML\\MultiActionBars.lua\"]:130: in function `MultiActionBar_UpdateGrid'\n[string \"@Interface\\FrameXML\\MultiActionBars.lua\"]:119: in function `MultiActionBar_HideAllGrids'\n[string \"@Interface\\FrameXML\\SpellBookFrame.lua\"]:257: in function <Interface\\FrameXML\\SpellBookFrame.lua:246>\n[string \"=[C]\"]: in function `Hide'\n[string \"@Interface_TBC\\FrameXML\\UIParent.lua\"]:2093: in function `SetUIPanel'\n[string \"@Interface_TBC\\FrameXML\\UIParent.lua\"]:2009: in function `ShowUIPanel'\n[string \"@Interface_TBC\\FrameXML\\UIParent.lua\"]:1822: in function <Interface_TBC\\FrameXML\\UIParent.lua:1818>\n[string \"=[C]\"]: in function `SetAttribute'\n[string \"@Interface_TBC\\FrameXML\\UIParent.lua\"]:2596: in function <Interface_TBC\\FrameXML\\UIParent.lua:2575>\n[string \"=[C]\"]: in function `ShowUIPanel'\n[string \"@Interface_TBC\\FrameXML\\QuestLogFrame.lua\"]:22: in function `ToggleQuestLog'\n[string \"*:OnClick\"]:1: in function <[string \"*:OnClick\"]:1>",
			["session"] = 2464,
			["counter"] = 1,
		}, -- [10]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'OmniCC' tried to call the protected function 'CompactRaidFrame3:Show()'.",
			["time"] = "2022/05/22 12:33:09",
			["locals"] = "InCombatSkipped",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `Show'\n[string \"@Interface\\FrameXML\\CompactUnitFrame.lua\"]:359: in function `CompactUnitFrame_UpdateVisible'\n[string \"@Interface\\FrameXML\\CompactUnitFrame.lua\"]:292: in function <Interface\\FrameXML\\CompactUnitFrame.lua:290>\n[string \"=[C]\"]: in function `CompactUnitFrame_UpdateAll'\n[string \"@Interface\\FrameXML\\CompactUnitFrame.lua\"]:125: in function <Interface\\FrameXML\\CompactUnitFrame.lua:53>",
			["session"] = 2469,
			["counter"] = 1,
		}, -- [11]
		{
			["message"] = "Interface\\AddOns\\TextureScript\\TextureScript.lua:1110: Cannot find a library instance of \"Gladdy\".",
			["time"] = "2022/05/25 12:36:38",
			["locals"] = "(*temporary) = \"Cannot find a library instance of \"Gladdy\".\"\n",
			["stack"] = "[string \"=[C]\"]: in function `error'\n[string \"@Interface\\AddOns\\Auctionator\\Libs\\LibItemUpgradeInfo-1.0-30\\LibStub\\LibStub.lua\"]:38: in function `LibStub'\n[string \"@Interface\\AddOns\\TextureScript\\TextureScript.lua\"]:1110: in main chunk",
			["session"] = 2488,
			["counter"] = 1,
		}, -- [12]
		{
			["message"] = "Interface\\SharedXML\\AddonList.lua:596: AddOn index must be in the range of 1 to 39",
			["time"] = "2022/05/28 16:04:58",
			["locals"] = "(*temporary) = 0\n",
			["stack"] = "[string \"=[C]\"]: in function `GetAddOnInfo'\n[string \"@Interface\\SharedXML\\AddonList.lua\"]:596: in function `AddonTooltip_Update'\n[string \"@Interface\\SharedXML\\AddonList.lua\"]:475: in function `AddonListScrollFrame_OnVerticalScroll'\n[string \"*:OnVerticalScroll\"]:1: in function <[string \"*:OnVerticalScroll\"]:1>\n[string \"=[C]\"]: in function `SetVerticalScroll'\n[string \"@Interface\\SharedXML\\SecureUIPanelTemplates.lua\"]:64: in function <Interface\\SharedXML\\SecureUIPanelTemplates.lua:63>\n[string \"=[C]\"]: in function `SetValue'\n[string \"@Interface\\SharedXML\\SharedUIPanelTemplates.lua\"]:218: in function <Interface\\SharedXML\\SharedUIPanelTemplates.lua:212>",
			["session"] = 2515,
			["counter"] = 2,
		}, -- [13]
		{
			["message"] = " Error loading Interface\\AddOns\\RXPGuides\\Guides/Alliance-4.lua",
			["session"] = 2520,
			["time"] = "2022/05/09 18:31:48",
			["counter"] = 38,
		}, -- [14]
		{
			["message"] = " Error loading Interface\\AddOns\\RXPGuides\\Guides/Alliance-5.lua",
			["session"] = 2520,
			["time"] = "2022/05/09 18:31:48",
			["counter"] = 38,
		}, -- [15]
		{
			["message"] = " Error loading Interface\\AddOns\\RXPGuides\\Guides/Horde-2.lua",
			["session"] = 2520,
			["time"] = "2022/05/09 18:31:48",
			["counter"] = 38,
		}, -- [16]
		{
			["message"] = " Error loading Interface\\AddOns\\RXPGuides\\Guides/Horde-3.lua",
			["session"] = 2520,
			["time"] = "2022/05/09 18:31:48",
			["counter"] = 38,
		}, -- [17]
		{
			["message"] = " Error loading Interface\\AddOns\\RXPGuides\\Guides/Horde-4.lua",
			["session"] = 2520,
			["time"] = "2022/05/09 18:31:48",
			["counter"] = 38,
		}, -- [18]
		{
			["message"] = " Error loading Interface\\AddOns\\RXPGuides\\Guides/Horde-5.lua",
			["session"] = 2520,
			["time"] = "2022/05/09 18:31:48",
			["counter"] = 38,
		}, -- [19]
		{
			["message"] = " Error loading Interface\\AddOns\\RXPGuides\\Guides/Alliance-2.lua",
			["session"] = 2520,
			["time"] = "2022/05/09 18:31:48",
			["counter"] = 76,
		}, -- [20]
		{
			["message"] = " Error loading Interface\\AddOns\\RXPGuides\\Guides/Alliance-3.lua",
			["session"] = 2520,
			["time"] = "2022/05/09 18:31:48",
			["counter"] = 76,
		}, -- [21]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'LFGBulletinBoard' tried to call the protected function 'MultiBarBottomRightButton3:Hide()'.",
			["time"] = "2022/05/30 18:44:43",
			["locals"] = "InCombatSkipped",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `Hide'\n[string \"@Interface\\FrameXML\\ActionButton.lua\"]:487: in function `ActionButton_HideGrid'\n[string \"@Interface\\FrameXML\\MultiActionBars.lua\"]:130: in function `MultiActionBar_UpdateGrid'\n[string \"@Interface\\FrameXML\\MultiActionBars.lua\"]:119: in function `MultiActionBar_HideAllGrids'\n[string \"@Interface\\FrameXML\\SpellBookFrame.lua\"]:257: in function <Interface\\FrameXML\\SpellBookFrame.lua:246>\n[string \"=[C]\"]: in function `Hide'\n[string \"@Interface_TBC\\FrameXML\\UIParent.lua\"]:2093: in function `SetUIPanel'\n[string \"@Interface_TBC\\FrameXML\\UIParent.lua\"]:2173: in function `HideUIPanel'\n[string \"@Interface_TBC\\FrameXML\\UIParent.lua\"]:1826: in function <Interface_TBC\\FrameXML\\UIParent.lua:1818>\n[string \"=[C]\"]: in function `SetAttribute'\n[string \"@Interface_TBC\\FrameXML\\UIParent.lua\"]:2616: in function <Interface_TBC\\FrameXML\\UIParent.lua:2599>\n[string \"=[C]\"]: in function `HideUIPanel'\n[string \"@Interface\\SharedXML\\SharedUIPanelTemplates.lua\"]:313: in function `HideParentPanel'\n[string \"*:OnClick\"]:1: in function <[string \"*:OnClick\"]:1>",
			["session"] = 2535,
			["counter"] = 1,
		}, -- [22]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'ButtonForge' tried to call the protected function 'BFToolbar:SetSize()'.",
			["time"] = "2022/05/16 17:34:16",
			["locals"] = "InCombatSkipped",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `SetSize'\n[string \"@Interface\\AddOns\\ButtonForge\\UILibToolbar.lua\"]:88: in function `ToggleAdvancedTools'\n[string \"@Interface\\AddOns\\ButtonForge\\Util.lua\"]:416: in function `Load'\n[string \"@Interface\\AddOns\\ButtonForge\\EventManager.lua\"]:254: in function <Interface\\AddOns\\ButtonForge\\EventManager.lua:225>",
			["session"] = 2551,
			["counter"] = 2,
		}, -- [23]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'LoseControl' tried to call the protected function 'CompactRaidFrame3:ClearAllPoints()'.",
			["time"] = "2022/06/08 19:13:44",
			["locals"] = "InCombatSkipped",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `ClearAllPoints'\n[string \"@Interface\\FrameXML\\FlowContainer.lua\"]:157: in function `FlowContainer_DoLayout'\n[string \"@Interface\\FrameXML\\FlowContainer.lua\"]:17: in function `FlowContainer_ResumeUpdates'\n[string \"@Interface\\AddOns\\Blizzard_CompactRaidFrames\\Blizzard_CompactRaidFrameContainer.lua\"]:185: in function `CompactRaidFrameContainer_LayoutFrames'\n[string \"@Interface\\AddOns\\Blizzard_CompactRaidFrames\\Blizzard_CompactRaidFrameContainer.lua\"]:130: in function <...actRaidFrames\\Blizzard_CompactRaidFrameContainer.lua:128>\n[string \"=[C]\"]: in function `CompactRaidFrameContainer_TryUpdate'\n[string \"@Interface\\AddOns\\Blizzard_CompactRaidFrames\\Blizzard_CompactRaidFrameContainer.lua\"]:57: in function `CompactRaidFrameContainer_OnEvent'\n[string \"*:OnEvent\"]:1: in function <[string \"*:OnEvent\"]:1>",
			["session"] = 2585,
			["counter"] = 1,
		}, -- [24]
		{
			["message"] = "[ADDON_ACTION_FORBIDDEN] AddOn 'LoseControl' tried to call the protected function 'GuildControlSetRank()'.",
			["time"] = "2022/06/10 19:46:23",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `GuildControlSetRank'\n[string \"@Interface_TBC\\FrameXML\\FriendsFrame.lua\"]:2779: in function `GuildControlPopupFrameDropDownButton_ClickedRank'\n[string \"@Interface_TBC\\FrameXML\\FriendsFrame.lua\"]:2531: in function `GuildControlPopupFrame_Initialize'\n[string \"@Interface_TBC\\FrameXML\\FriendsFrame.lua\"]:978: in function `FriendsFrame_OnEvent'\n[string \"*:OnEvent\"]:1: in function <[string \"*:OnEvent\"]:1>\n[string \"=[C]\"]: in function `SetGuildRosterShowOffline'\n[string \"*:OnClick\"]:7: in function <[string \"*:OnClick\"]:1>",
			["session"] = 2597,
			["counter"] = 1,
		}, -- [25]
		{
			["message"] = "Interface\\AddOns\\LFGBulletinBoard\\RequestList.lua:26: attempt to index local 'b' (a nil value)",
			["time"] = "2022/06/11 21:41:40",
			["locals"] = "a = <table> {\n IsFriend = false\n last = 1654976497\n class = \"MAGE\"\n IsGuildMember = false\n IsPastPlayer = false\n name = \"Suppakappa\"\n message = \"2/3 !!! WTS BOOST Shadow Lab (65-70 lvl) / 68-73 mobs / 46-60k xp / 700+ rep Lower City/ ( duo 75 g / trio 50 g) !!! HAVE SUM /  2/3 LAST SPOT\"\n start = 1654976497\n IsHeroic = false\n dungeon = \"LBRS\"\n IsRaid = false\n}\nb = nil\n(*temporary) = 19\n(*temporary) = <table> {\n 1 = \"RFC\"\n 2 = \"WC\"\n 3 = \"DM\"\n 4 = \"SFK\"\n 5 = \"STK\"\n 6 = \"BFD\"\n 7 = \"GNO\"\n 8 = \"RFK\"\n 9 = \"SMG\"\n 10 = \"SML\"\n 11 = \"SMA\"\n 12 = \"SMC\"\n 13 = \"RFD\"\n 14 = \"ULD\"\n 15 = \"ZF\"\n 16 = \"MAR\"\n 17 = \"ST\"\n 18 = \"BRD\"\n 19 = \"LBRS\"\n 20 = \"DME\"\n 21 = \"DMN\"\n 22 = \"DMW\"\n 23 = \"STR\"\n 24 = \"SCH\"\n 25 = \"UBRS\"\n 26 = \"ONY\"\n 27 = \"MC\"\n 28 = \"ZG\"\n 29 = \"AQ20\"\n 30 = \"BWL\"\n 31 = \"AQ40\"\n 32 = \"NAX\"\n 33 = \"RAMPS\"\n 34 = \"BF\"\n 35 = \"SH\"\n 36 = \"MAG\"\n 37 = \"SP\"\n 38 = \"UB\"\n 39 = \"SV\"\n 40 = \"SSC\"\n 41 = \"MT\"\n 42 = \"CRYPTS\"\n 43 = \"SETH\"\n 44 = \"SL\"\n 45 = \"OHB\"\n 46 = \"BM\"\n 47 = \"MECH\"\n 48 = \"BOT\"\n 49 = \"ARC\"\n 50 = \"EYE\"\n 51 = \"MGT\"\n 52 = \"KARA\"\n 53 = \"GL\"\n 54 = \"ZA\"\n 55 = \"HYJAL\"\n 56 = \"BT\"\n 57 = \"SWP\"\n 58 = \"WSG\"\n 59 = \"AB\"\n 60 = \"AV\"\n 61 = \"EOTS\"\n 62 = \"ARENA\"\n 63 = \"MISC\"\n 64 = \"TRADE\"\n ARENA = 62\n HOLLOW = 65\n DEBUG = 67\n RFC = 1\n MC = 27\n RFK = 8\n SFK = 4\n WC = 2\n NIL = 69\n KARA = 52\n LBRS = 19\n ZG = 28\n UBRS = 25\n SP = 37\n BREW = 66\n ST = 17\n SMA = 11\n BAD = 68\n BT = 56\n SSC = 40\n WSG = 58\n SWP = 57\n DME = 20\n BRD = 18\n DEADMINES = 99\n SH = 35\n DM2 = 19.500000\n MGT = 51\n 65 = \"HOLLOW\"\n 66 = \"BREW\"\n 67 = \"DEBUG\"\n 68 = \"BAD\"\n 69 = \"NIL\"\n AQ20 = 29\n SM2 = 10.500000\n BFD = 6\n ONY = 26\n BWL = 30\n DMW = 22\n EYE = 50\n RAMPS = 33\n SCH = 24\n RFD = 13\n STK = 5\n NAX = 32\n MAR = 16\n AB = 59\n SMC = 12\n ULD = 14\n UB = 38\n MT = 41\n STR = 23\n BF = 34\n TRADE = 64\n GNO = 7\n AQ40 = 31\n MISC = 63\n SV = 39\n MECH = 47\n MAG = 36\n BM = 46\n CRYPTS = 42\n DMN = 21\n AV = 60\n ZA = 54\n GL = 53\n SMG = 9\n ARC = 49\n BOT = 48\n SML = 10\n DM = 3\n HYJAL = 55\n OHB = 45\n EOTS = 61\n SETH = 43\n SL = 44\n ZF = 15\n}\n(*temporary) = nil\n(*temporary) = \"attempt to index local 'b' (a nil value)\"\nGBB = <table> {\n CreateTagList = <function> defined @Interface\\AddOns\\LFGBulletinBoard\\GroupBulletinBoard.lua:277\n GetDungeonNames = <function> defined @Interface\\AddOns\\LFGBulletinBoard\\Dungeons.lua:28\n ClearNeeded = false\n InitGroupList = <function> defined @Interface\\AddOns\\LFGBulletinBoard\\GroupList.Lua:175\n TBCMAXDUNGEON = 64\n TAGSEARCH = \"+++\"\n tagList = <table> {\n }\n suffixTags = <table> {\n }\n LevelRange = <function> defined @Interface\\AddOns\\LFGBulletinBoard\\GroupBulletinBoard.lua:115\n FoldedDungeons = <table> {\n }\n LFG_Successfulljoined = false\n ClearTimer = 1686512935\n VanillaDungeonLevels = <table> {\n }\n NotifySound = 1210\n PostTbcDungeonLevels = <table> {\n }\n MiniIcon = \"Interface\\Icons\\spell_holy_prayerofshadowprotection\"\n searchTagsLoc = <table> {\n }\n FoldAllDungeon = <function> defined @Interface\\AddOns\\LFGBulletinBoard\\RequestList.lua:762\n ClickFrame = <function> defined @Interface\\AddOns\\LFGBulletinBoard\\RequestList.lua:808\n PANELOFFSET = 1\n CreateChatFrame = <function> defined @Interface\\AddOns\\LFGBulletinBoard\\Chat.lua:3\n Initalized = true\n BtnClose = <function> defined @Interface\\AddOns\\LFGBulletinBoard\\GroupBulletinBoard.lua:225\n Options = <table> {\n }\n OnLoad = <function> defined @Interface\\AddOns\\LFGBulletinBoard\\GroupBulletinBoard.lua:700\n dungeonSecondTags = <table> {\n }\n SplitNoNb = <function> defined @Interface\\AddOns\\LFGBulletinBoard\\GroupBulletinBoard.lua:58\n TAGBAD = \"---\"\n VanillDungeonNames = <table> {\n }\n GetDungeonSort = <function> defined @Interface\\AddOns\\LFGBulletinBoard\\Dungeons.lua:561\n TBCDUNGEONSTART = 33\n heroicTagsLoc = <table> {\n }\n LocalizationInit = <function> defined @Interface\\AddOns\\LFGBulletinBoard\\Localization.lua:485\n Popup_Minimap = <function> defined @Interface\\AddOns\\LFGBulletinBoard\\GroupBulletinBoard.lua:352\n AutoUpdateTimer = 1654976503\n ClickDungeon = <function> defined @Interface\\AddOns\\LFGBulletinBoard\\RequestList.lua:815\n Tool = <table> {\n }\n HeroicKeywords = <table> {\n }\n Raids = <table> {\n }\n RequestShowTooltip = <function> defined @Interfa",
			["stack"] = "[string \"@Interface\\AddOns\\LFGBulletinBoard\\RequestList.lua\"]:26: in function <Interface\\AddOns\\LFGBulletinBoard\\RequestList.lua:23>\n[string \"=[C]\"]: in function `sort'\n[string \"@Interface\\AddOns\\LFGBulletinBoard\\RequestList.lua\"]:345: in function `UpdateList'\n[string \"@Interface\\AddOns\\LFGBulletinBoard\\RequestList.lua\"]:736: in function `PhraseMessage'\n[string \"@Interface\\AddOns\\LFGBulletinBoard\\GroupBulletinBoard.lua\"]:674: in function `?'\n[string \"@Interface\\AddOns\\LFGBulletinBoard\\LibGPIToolBox.lua\"]:100: in function <Interface\\AddOns\\LFGBulletinBoard\\LibGPIToolBox.lua:97>",
			["session"] = 2602,
			["counter"] = 1,
		}, -- [26]
		{
			["message"] = "Interface\\AddOns\\LFGBulletinBoard\\RequestList.lua:345: invalid order function for sorting",
			["time"] = "2022/05/29 19:42:38",
			["locals"] = "(*temporary) = <table> {\n 1 = <table> {\n }\n 2 = <table> {\n }\n 3 = <table> {\n }\n 4 = <table> {\n }\n 5 = <table> {\n }\n 6 = <table> {\n }\n 7 = <table> {\n }\n 8 = <table> {\n }\n 9 = <table> {\n }\n 10 = <table> {\n }\n 11 = <table> {\n }\n 12 = <table> {\n }\n 13 = <table> {\n }\n 14 = <table> {\n }\n 15 = <table> {\n }\n 16 = <table> {\n }\n 17 = <table> {\n }\n 18 = <table> {\n }\n 19 = <table> {\n }\n 20 = <table> {\n }\n 21 = <table> {\n }\n 22 = <table> {\n }\n 23 = <table> {\n }\n 24 = <table> {\n }\n 25 = <table> {\n }\n 26 = <table> {\n }\n 27 = <table> {\n }\n 28 = <table> {\n }\n 29 = <table> {\n }\n 30 = <table> {\n }\n 31 = <table> {\n }\n 32 = <table> {\n }\n 33 = <table> {\n }\n 34 = <table> {\n }\n 35 = <table> {\n }\n 36 = <table> {\n }\n 37 = <table> {\n }\n 38 = <table> {\n }\n 39 = <table> {\n }\n 40 = <table> {\n }\n 41 = <table> {\n }\n 42 = <table> {\n }\n 43 = <table> {\n }\n 44 = <table> {\n }\n 45 = <table> {\n }\n 46 = <table> {\n }\n 47 = <table> {\n }\n 48 = <table> {\n }\n 49 = <table> {\n }\n 50 = <table> {\n }\n 51 = <table> {\n }\n 52 = <table> {\n }\n 53 = <table> {\n }\n 54 = <table> {\n }\n 55 = <table> {\n }\n 56 = <table> {\n }\n 57 = <table> {\n }\n 58 = <table> {\n }\n 59 = <table> {\n }\n 60 = <table> {\n }\n 61 = <table> {\n }\n 62 = <table> {\n }\n 63 = <table> {\n }\n 64 = <table> {\n }\n 65 = <table> {\n }\n 66 = <table> {\n }\n 67 = <table> {\n }\n 68 = <table> {\n }\n 69 = <table> {\n }\n 70 = <table> {\n }\n 71 = <table> {\n }\n 72 = <table> {\n }\n 73 = <table> {\n }\n 74 = <table> {\n }\n 75 = <table> {\n }\n 76 = <table> {\n }\n 77 = <table> {\n }\n 78 = <table> {\n }\n 79 = <table> {\n }\n 80 = <table> {\n }\n 81 = <table> {\n }\n 82 = <table> {\n }\n 83 = <table> {\n }\n 84 = <table> {\n }\n 85 = <table> {\n }\n 86 = <table> {\n }\n 87 = <table> {\n }\n 88 = <table> {\n }\n 89 = <table> {\n }\n 90 = <table> {\n }\n 91 = <table> {\n }\n 92 = <table> {\n }\n 93 = <table> {\n }\n 94 = <table> {\n }\n 95 = <table> {\n }\n 96 = <table> {\n }\n 97 = <table> {\n }\n 98 = <table> {\n }\n 99 = <table> {\n }\n 100 = <table> {\n }\n 101 = <table> {\n }\n 102 = <table> {\n }\n 103 = <table> {\n }\n 104 = <table> {\n }\n 105 = <table> {\n }\n 106 = <table> {\n }\n 107 = <table> {\n }\n 108 = <table> {\n }\n 109 = <table> {\n }\n 110 = <table> {\n }\n 111 = <table> {\n }\n 112 = <table> {\n }\n 113 = <table> {\n }\n 114 = <table> {\n }\n 115 = <table> {\n }\n 116 = <table> {\n }\n 117 = <table> {\n }\n 118 = <table> {\n }\n 119 = <table> {\n }\n 120 = <table> {\n }\n 121 = <table> {\n }\n 122 = <table> {\n }\n 123 = <table> {\n }\n 124 = <table> {\n }\n 125 = <table> {\n }\n 126 = <table> {\n }\n 127 = <table> {\n }\n 128 = <table> {\n }\n 129 = <table> {\n }\n 130 = <table> {\n }\n 131 = <table> {\n }\n 132 = <table> {\n }\n 133 = <table> {\n }\n 134 = <table> {\n }\n 135 = <table> {\n }\n 136 = <table> {\n }\n 137 = <table> {\n }\n 138 = <table> {\n }\n 139 = <table> {\n }\n 140 = <table> {\n }\n 141 = <table> {\n }\n 142 = <table> {\n }\n 143 = <table> {\n }\n 144 = <table> {\n }\n 145 = <table> {\n }\n 146 = <table> {\n }\n 147 = <table> {\n }\n 148 = <table> {\n }\n 149 = <table> {\n }\n 150 = <table> {\n }\n 151 = <table> {\n }\n 152 = <table> {\n }\n 153 = <table> {\n }\n 154 = <table> {\n }\n 155 = <table> {\n }\n 156 = <table> {\n }\n 157 = <table> {\n }\n 158 = <table> {\n }\n 159 = <table> {\n }\n 160 = <table> {\n }\n 161 = <table> {\n }\n 162 = <table> {\n }\n 163 = <table> {\n }\n 164 = <table> {\n }\n 165 = <table> {\n }\n 166 = <table> {\n }\n 167 = <table> {\n }\n 168 = <table> {\n }\n 169 = <table> {\n }\n 170 = <table> {\n }\n 171 = <table> {\n }\n 172 = <table> {\n }\n 173 = <table> {\n }\n 174 = <table> {\n }\n 175 = <table> {\n }\n 176 = <table> {\n }\n 177 = <table> {\n }\n 178 = <table> {\n }\n 179 = <table> {\n }\n 180 = <table> {\n }\n 181 = <table> {\n }\n 182 = <table> {\n }\n 183 = <table> {\n }\n 184 = <table> {\n }\n 185 = <table> {\n }\n 186 = <table> {\n }\n 187 = <table> {\n }\n 188 = <table> {\n }\n 189 = <table> {\n }\n 190 = <table> {\n }\n 191 = <table> {\n }\n 192 = <table> {\n }\n 193 = <table> {\n }\n 194 = <table> {\n }\n 195 = <table> {\n }\n 196 = <table> {\n }\n 197 = <table> {\n }\n 198 = <table> {\n }\n 199 = <table> {\n }\n 200 = <table> {\n }\n 201 = <table> {\n }\n 202 = <table> {\n }\n 203 = <table> {\n }\n 204 = <table> {\n }\n 205 = <table> {\n }\n 206 = <table> {\n }\n 207 = <table> {\n }\n 208 = <table> {\n }\n 209 = <table> {\n ",
			["stack"] = "[string \"=[C]\"]: in function `sort'\n[string \"@Interface\\AddOns\\LFGBulletinBoard\\RequestList.lua\"]:345: in function `UpdateList'\n[string \"@Interface\\AddOns\\LFGBulletinBoard\\RequestList.lua\"]:736: in function `PhraseMessage'\n[string \"@Interface\\AddOns\\LFGBulletinBoard\\GroupBulletinBoard.lua\"]:674: in function `?'\n[string \"@Interface\\AddOns\\LFGBulletinBoard\\LibGPIToolBox.lua\"]:100: in function <Interface\\AddOns\\LFGBulletinBoard\\LibGPIToolBox.lua:97>",
			["session"] = 2643,
			["counter"] = 80,
		}, -- [27]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'OmniCC' tried to call the protected function 'CompactRaidFrame1:Show()'.",
			["time"] = "2022/06/25 01:03:33",
			["locals"] = "InCombatSkipped",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `Show'\n[string \"@Interface\\FrameXML\\CompactUnitFrame.lua\"]:359: in function `CompactUnitFrame_UpdateVisible'\n[string \"@Interface\\FrameXML\\CompactUnitFrame.lua\"]:292: in function <Interface\\FrameXML\\CompactUnitFrame.lua:290>\n[string \"=[C]\"]: in function `CompactUnitFrame_UpdateAll'\n[string \"@Interface\\FrameXML\\CompactUnitFrame.lua\"]:125: in function <Interface\\FrameXML\\CompactUnitFrame.lua:53>",
			["session"] = 2677,
			["counter"] = 1,
		}, -- [28]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'LoseControl' tried to call the protected function 'CompactRaidFrame2:Show()'.",
			["time"] = "2022/06/25 18:11:59",
			["locals"] = "InCombatSkipped",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `Show'\n[string \"@Interface\\FrameXML\\CompactUnitFrame.lua\"]:359: in function `CompactUnitFrame_UpdateVisible'\n[string \"@Interface\\FrameXML\\CompactUnitFrame.lua\"]:292: in function <Interface\\FrameXML\\CompactUnitFrame.lua:290>\n[string \"=[C]\"]: in function `CompactUnitFrame_UpdateAll'\n[string \"@Interface\\FrameXML\\CompactUnitFrame.lua\"]:125: in function <Interface\\FrameXML\\CompactUnitFrame.lua:53>",
			["session"] = 2680,
			["counter"] = 1,
		}, -- [29]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'LoseControl' tried to call the protected function 'CompactRaidFrame1:Show()'.",
			["time"] = "2022/06/25 22:07:17",
			["locals"] = "InCombatSkipped",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `Show'\n[string \"@Interface\\FrameXML\\CompactUnitFrame.lua\"]:359: in function `CompactUnitFrame_UpdateVisible'\n[string \"@Interface\\FrameXML\\CompactUnitFrame.lua\"]:292: in function <Interface\\FrameXML\\CompactUnitFrame.lua:290>\n[string \"=[C]\"]: in function `CompactUnitFrame_UpdateAll'\n[string \"@Interface\\FrameXML\\CompactUnitFrame.lua\"]:125: in function <Interface\\FrameXML\\CompactUnitFrame.lua:53>",
			["session"] = 2681,
			["counter"] = 1,
		}, -- [30]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'TextureScript' tried to call the protected function 'PartyMemberFrame4PetFrame:Hide()'.",
			["time"] = "2022/05/11 15:57:30",
			["locals"] = "InCombatSkipped",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `Hide'\n[string \"@Interface\\FrameXML\\PartyMemberFrame.lua\"]:187: in function `PartyMemberFrame_UpdatePet'\n[string \"@Interface\\FrameXML\\PartyMemberFrame.lua\"]:363: in function `PartyMemberFrame_OnEvent'\n[string \"*:OnEvent\"]:1: in function <[string \"*:OnEvent\"]:1>",
			["session"] = 2717,
			["counter"] = 4,
		}, -- [31]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'Auctionator' tried to call the protected function 'MultiBarBottomLeftButton1:Show()'.",
			["time"] = "2022/07/06 12:25:04",
			["locals"] = "InCombatSkipped",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `Show'\n[string \"@Interface\\FrameXML\\ActionButton.lua\"]:471: in function <Interface\\FrameXML\\ActionButton.lua:459>\n[string \"=[C]\"]: in function `ActionButton_ShowGrid'\n[string \"@Interface\\FrameXML\\MultiActionBars.lua\"]:128: in function `MultiActionBar_UpdateGrid'\n[string \"@Interface\\FrameXML\\MultiActionBars.lua\"]:111: in function `MultiActionBar_ShowAllGrids'\n[string \"@Interface\\FrameXML\\SpellBookFrame.lua\"]:105: in function <Interface\\FrameXML\\SpellBookFrame.lua:96>\n[string \"=[C]\"]: in function `Show'\n[string \"@Interface_TBC\\FrameXML\\UIParent.lua\"]:2109: in function `SetUIPanel'\n[string \"@Interface_TBC\\FrameXML\\UIParent.lua\"]:1954: in function `ShowUIPanel'\n[string \"@Interface_TBC\\FrameXML\\UIParent.lua\"]:1822: in function <Interface_TBC\\FrameXML\\UIParent.lua:1818>\n[string \"=[C]\"]: in function `SetAttribute'\n[string \"@Interface_TBC\\FrameXML\\UIParent.lua\"]:2596: in function <Interface_TBC\\FrameXML\\UIParent.lua:2575>\n[string \"=[C]\"]: in function `ShowUIPanel'\n[string \"@Interface\\FrameXML\\SpellBookFrame.lua\"]:46: in function `ToggleSpellBook'\n[string \"*:OnClick\"]:1: in function <[string \"*:OnClick\"]:1>",
			["session"] = 2775,
			["counter"] = 1,
		}, -- [32]
		{
			["message"] = "...ace\\AddOns\\Doom_CooldownPulse\\Doom_CooldownPulse.lua:99: bad argument #2 to 'strsplit' (string expected, got nil)",
			["time"] = "2022/07/11 18:59:41",
			["locals"] = "(*temporary) = \",\"\n(*temporary) = nil\n(*temporary) = \"string expected, got nil\"\n",
			["stack"] = "[string \"=[C]\"]: in function `strsplit'\n[string \"@Interface\\AddOns\\Doom_CooldownPulse\\Doom_CooldownPulse.lua\"]:99: in function <...ace\\AddOns\\Doom_CooldownPulse\\Doom_CooldownPulse.lua:88>\n[string \"@Interface\\AddOns\\Doom_CooldownPulse\\Doom_CooldownPulse.lua\"]:244: in function `?'\n[string \"@Interface\\AddOns\\Doom_CooldownPulse\\Doom_CooldownPulse.lua\"]:24: in function <...ace\\AddOns\\Doom_CooldownPulse\\Doom_CooldownPulse.lua:24>",
			["session"] = 2829,
			["counter"] = 1,
		}, -- [33]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'TextureScript' tried to call the protected function 'PartyMemberFrame2PetFrame:Hide()'.",
			["time"] = "2022/05/11 10:44:25",
			["locals"] = "InCombatSkipped",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `Hide'\n[string \"@Interface\\FrameXML\\PartyMemberFrame.lua\"]:187: in function `PartyMemberFrame_UpdatePet'\n[string \"@Interface\\FrameXML\\PartyMemberFrame.lua\"]:363: in function `PartyMemberFrame_OnEvent'\n[string \"*:OnEvent\"]:1: in function <[string \"*:OnEvent\"]:1>",
			["session"] = 2838,
			["counter"] = 11,
		}, -- [34]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'TextureScript' tried to call the protected function 'PartyMemberFrame1:Hide()'.",
			["time"] = "2022/05/06 20:11:21",
			["locals"] = "InCombatSkipped",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `Hide'\n[string \"@Interface\\FrameXML\\PartyMemberFrame.lua\"]:143: in function `PartyMemberFrame_UpdateMember'\n[string \"@Interface\\FrameXML\\PartyMemberFrame.lua\"]:337: in function `PartyMemberFrame_OnEvent'\n[string \"*:OnEvent\"]:1: in function <[string \"*:OnEvent\"]:1>",
			["session"] = 2867,
			["counter"] = 40,
		}, -- [35]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'TextureScript' tried to call the protected function 'PartyMemberFrame3PetFrame:Hide()'.",
			["time"] = "2022/05/14 11:29:48",
			["locals"] = "InCombatSkipped",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `Hide'\n[string \"@Interface\\FrameXML\\PartyMemberFrame.lua\"]:187: in function `PartyMemberFrame_UpdatePet'\n[string \"@Interface\\FrameXML\\PartyMemberFrame.lua\"]:363: in function `PartyMemberFrame_OnEvent'\n[string \"*:OnEvent\"]:1: in function <[string \"*:OnEvent\"]:1>",
			["session"] = 2893,
			["counter"] = 6,
		}, -- [36]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'TextureScript' tried to call the protected function 'PartyMemberFrame1:Show()'.",
			["time"] = "2022/05/09 19:12:17",
			["locals"] = "InCombatSkipped",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `Show'\n[string \"@Interface\\FrameXML\\PartyMemberFrame.lua\"]:150: in function `PartyMemberFrame_UpdateMember'\n[string \"@Interface\\FrameXML\\PartyMemberFrame.lua\"]:337: in function `PartyMemberFrame_OnEvent'\n[string \"*:OnEvent\"]:1: in function <[string \"*:OnEvent\"]:1>",
			["session"] = 3006,
			["counter"] = 12,
		}, -- [37]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'TextureScript' tried to call the protected function 'PartyMemberFrame1PetFrame:Hide()'.",
			["time"] = "2022/05/11 12:00:25",
			["locals"] = "InCombatSkipped",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `Hide'\n[string \"@Interface\\FrameXML\\PartyMemberFrame.lua\"]:187: in function `PartyMemberFrame_UpdatePet'\n[string \"@Interface\\FrameXML\\PartyMemberFrame.lua\"]:165: in function `PartyMemberFrame_UpdateMember'\n[string \"@Interface\\FrameXML\\PartyMemberFrame.lua\"]:337: in function `PartyMemberFrame_OnEvent'\n[string \"*:OnEvent\"]:1: in function <[string \"*:OnEvent\"]:1>",
			["session"] = 3023,
			["counter"] = 28,
		}, -- [38]
		{
			["message"] = "Interface\\AddOns\\Gladdy\\Constants.lua:28: table index is nil",
			["time"] = "2022/08/05 16:50:45",
			["locals"] = "tbl_sort = <function> defined =[C]:-1\nselect = <function> defined =[C]:-1\nGetSpellInfo = <function> defined =[C]:-1\nGetItemInfo = <function> defined =[C]:-1\nGetLocale = <function> defined =[C]:-1\nGladdy = <table> {\n defaults = <table> {\n }\n OnInitialize = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:189\n NewModule = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:140\n version_minor_num = 0.220000\n BlizzArenaSetAlpha = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:464\n modules = <table> {\n }\n CancelTimer = <function> defined @Interface\\AddOns\\Gladdy\\libs\\AceTimer-3.0\\AceTimer-3.0.lua:147\n RACES = <table> {\n }\n UnregisterComm = <function> defined @Interface\\AddOns\\BigDebuffs\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:153\n CreateFrame = <function> defined @Interface\\AddOns\\Gladdy\\Frame.lua:33\n TimeLeft = <function> defined @Interface\\AddOns\\Gladdy\\libs\\AceTimer-3.0\\AceTimer-3.0.lua:172\n version_releaseType = \"Release\"\n CLASSES = <table> {\n }\n FormatTimer = <function> defined @Interface\\AddOns\\Gladdy\\Options.lua:23\n ScheduleRepeatingTimer = <function> defined @Interface\\AddOns\\Gladdy\\libs\\AceTimer-3.0\\AceTimer-3.0.lua:129\n CancelAllTimers = <function> defined @Interface\\AddOns\\Gladdy\\libs\\AceTimer-3.0\\AceTimer-3.0.lua:160\n UpdateFrame = <function> defined @Interface\\AddOns\\Gladdy\\Frame.lua:116\n OnProfileChanged = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:237\n IterModules = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:121\n ShowOptions = <function> defined @Interface\\AddOns\\Gladdy\\Options.lua:767\n BUTTON_DEFAULTS = <table> {\n }\n SetupOptions = <function> defined @Interface\\AddOns\\Gladdy\\Options.lua:208\n version = \"TBC-Classic_v1.22-Release\"\n option = <function> defined @Interface\\AddOns\\Gladdy\\Options.lua:86\n VERSION_REGEX = \"TBC-Classic_v(%d+%.%d+)%-(%a)\"\n colorOption = <function> defined @Interface\\AddOns\\Gladdy\\Options.lua:106\n ScheduleTimer = <function> defined @Interface\\AddOns\\Gladdy\\libs\\AceTimer-3.0\\AceTimer-3.0.lua:94\n GetAnchor = <function> defined @Interface\\AddOns\\Gladdy\\Frame.lua:381\n SetupModule = <function> defined @Interface\\AddOns\\Gladdy\\Options.lua:150\n GetAuras = <function> defined @Interface\\AddOns\\Gladdy\\Options.lua:771\n SMFetch = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:511\n Warn = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:55\n TIMER_FORMAT = <table> {\n }\n CreateButton = <function> defined @Interface\\AddOns\\Gladdy\\Frame.lua:335\n Print = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:44\n ToggleFrame = <function> defined @Interface\\AddOns\\Gladdy\\Frame.lua:304\n Call = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:125\n version_major_num = 1\n GetIconStyles = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:279\n SendCommMessage = <function> defined @Interface\\AddOns\\BugSack\\Libs\\AceComm-3.0\\AceComm-3.0.lua:88\n HideFrame = <function> defined @Interface\\AddOns\\Gladdy\\Frame.lua:291\n SendMessage = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:134\n L = <table> {\n }\n UnregisterAllComm = <function> defined @Interface\\AddOns\\BigDebuffs\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:174\n JoinedArena = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:431\n ResetButton = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:407\n ResetUnit = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:393\n UnregisterAllEvents = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:90\n RegisterEvent = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:82\n version_num = 1.220000\n RegisterComm = <function> defined @Interface\\AddOns\\BugSack\\Libs\\AceComm-3.0\\AceComm-3.0.lua:61\n PLAYER_REGEN_ENABLED = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:348\n UPDATE_BATTLEFIELD_STATUS = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:340\n OnEnable = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:245\n events = <unnamed> {\n }\n PLAYER_ENTERING_WORLD = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:323\n Test = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:294\n DeleteUnknownOptions ",
			["stack"] = "[string \"@Interface\\AddOns\\Gladdy\\Constants.lua\"]:28: in main chunk",
			["session"] = 3024,
			["counter"] = 1,
		}, -- [39]
		{
			["message"] = "Interface\\AddOns\\Gladdy\\Modules\\Auras-Auras.lua:12: attempt to call method 'GetImportantAuras' (a nil value)",
			["time"] = "2022/08/05 16:50:45",
			["locals"] = "auraType = nil\nspells = <table> {\n}\n(*temporary) = <function> defined =[C]:-1\n(*temporary) = nil\n(*temporary) = <table> {\n defaults = <table> {\n }\n modules = <table> {\n }\n ToggleFrame = <function> defined @Interface\\AddOns\\Gladdy\\Frame.lua:304\n UnregisterComm = <function> defined @Interface\\AddOns\\BigDebuffs\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:153\n TIMER_FORMAT = <table> {\n }\n RACES = <table> {\n }\n GetClassicProfile = <function> defined @Interface\\AddOns\\Gladdy\\ImportStrings.lua:7\n ScheduleTimer = <function> defined @Interface\\AddOns\\Gladdy\\libs\\AceTimer-3.0\\AceTimer-3.0.lua:94\n SMFetch = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:511\n GetClassicProfileNoPet = <function> defined @Interface\\AddOns\\Gladdy\\ImportStrings.lua:11\n GetRukkProfile = <function> defined @Interface\\AddOns\\Gladdy\\ImportStrings.lua:23\n version_major_num = 1\n SendCommMessage = <function> defined @Interface\\AddOns\\BugSack\\Libs\\AceComm-3.0\\AceComm-3.0.lua:88\n UnregisterAllComm = <function> defined @Interface\\AddOns\\BigDebuffs\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:174\n RegisterEvent = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:82\n OnEnable = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:245\n events = <unnamed> {\n }\n UPDATE_BATTLEFIELD_STATUS = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:340\n ResetButton = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:407\n PLAYER_ENTERING_WORLD = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:323\n version_minor_num = 0.220000\n BlizzArenaSetAlpha = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:464\n CreateFrame = <function> defined @Interface\\AddOns\\Gladdy\\Frame.lua:33\n TimeLeft = <function> defined @Interface\\AddOns\\Gladdy\\libs\\AceTimer-3.0\\AceTimer-3.0.lua:172\n CLASSES = <table> {\n }\n ScheduleRepeatingTimer = <function> defined @Interface\\AddOns\\Gladdy\\libs\\AceTimer-3.0\\AceTimer-3.0.lua:129\n CancelAllTimers = <function> defined @Interface\\AddOns\\Gladdy\\libs\\AceTimer-3.0\\AceTimer-3.0.lua:160\n UpdateFrame = <function> defined @Interface\\AddOns\\Gladdy\\Frame.lua:116\n OnProfileChanged = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:237\n HideFrame = <function> defined @Interface\\AddOns\\Gladdy\\Frame.lua:291\n GetMirProfile = <function> defined @Interface\\AddOns\\Gladdy\\ImportStrings.lua:27\n BUTTON_DEFAULTS = <table> {\n }\n version = \"TBC-Classic_v1.22-Release\"\n VERSION_REGEX = \"TBC-Classic_v(%d+%.%d+)%-(%a)\"\n colorOption = <function> defined @Interface\\AddOns\\Gladdy\\Options.lua:106\n GetAnchor = <function> defined @Interface\\AddOns\\Gladdy\\Frame.lua:381\n SetupModule = <function> defined @Interface\\AddOns\\Gladdy\\Options.lua:150\n GetAuras = <function> defined @Interface\\AddOns\\Gladdy\\Options.lua:771\n ResetUnit = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:393\n GetBlizzardProfile = <function> defined @Interface\\AddOns\\Gladdy\\ImportStrings.lua:19\n GetKnallProfile = <function> defined @Interface\\AddOns\\Gladdy\\ImportStrings.lua:15\n Print = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:44\n CreateButton = <function> defined @Interface\\AddOns\\Gladdy\\Frame.lua:335\n Call = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:125\n JoinedArena = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:431\n GetIconStyles = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:279\n PLAYER_REGEN_ENABLED = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:348\n option = <function> defined @Interface\\AddOns\\Gladdy\\Options.lua:86\n L = <table> {\n }\n OnInitialize = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:189\n NewModule = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:140\n CancelTimer = <function> defined @Interface\\AddOns\\Gladdy\\libs\\AceTimer-3.0\\AceTimer-3.0.lua:147\n GetKlimpProfile = <function> defined @Interface\\AddOns\\Gladdy\\ImportStrings.lua:3\n version_releaseType = \"Release\"\n FormatTimer = <function> defined @Interface\\AddOns\\Gladdy\\Options.lua:23\n IterModules = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:121\n DeleteUnknownOptions = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:1",
			["stack"] = "[string \"@Interface\\AddOns\\Gladdy\\Modules\\Auras-Auras.lua\"]:12: in function `defaultSpells'\n[string \"@Interface\\AddOns\\Gladdy\\Modules\\Auras-Auras.lua\"]:41: in main chunk",
			["session"] = 3024,
			["counter"] = 1,
		}, -- [40]
		{
			["message"] = "Interface\\AddOns\\Gladdy\\Modules\\TotemPlates.lua:58: bad argument #1 to 'string_lower' (string expected, got no value)",
			["time"] = "2022/08/05 16:50:45",
			["locals"] = "(*temporary) = \"string expected, got no value\"\n",
			["stack"] = "[string \"=[C]\"]: in function `string_lower'\n[string \"@Interface\\AddOns\\Gladdy\\Modules\\TotemPlates.lua\"]:58: in main chunk",
			["session"] = 3024,
			["counter"] = 1,
		}, -- [41]
		{
			["message"] = "Interface\\AddOns\\Gladdy\\Modules\\Cooldowns.lua:39: attempt to call method 'GetCooldownList' (a nil value)",
			["time"] = "2022/08/05 16:50:45",
			["locals"] = "cooldowns = <table> {\n}\n(*temporary) = <function> defined =[C]:-1\n(*temporary) = nil\n(*temporary) = <table> {\n defaults = <table> {\n }\n modules = <table> {\n }\n ToggleFrame = <function> defined @Interface\\AddOns\\Gladdy\\Frame.lua:304\n UnregisterComm = <function> defined @Interface\\AddOns\\BigDebuffs\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:153\n TIMER_FORMAT = <table> {\n }\n RACES = <table> {\n }\n GetClassicProfile = <function> defined @Interface\\AddOns\\Gladdy\\ImportStrings.lua:7\n ScheduleTimer = <function> defined @Interface\\AddOns\\Gladdy\\libs\\AceTimer-3.0\\AceTimer-3.0.lua:94\n SMFetch = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:511\n GetClassicProfileNoPet = <function> defined @Interface\\AddOns\\Gladdy\\ImportStrings.lua:11\n GetRukkProfile = <function> defined @Interface\\AddOns\\Gladdy\\ImportStrings.lua:23\n version_major_num = 1\n SendCommMessage = <function> defined @Interface\\AddOns\\BugSack\\Libs\\AceComm-3.0\\AceComm-3.0.lua:88\n UnregisterAllComm = <function> defined @Interface\\AddOns\\BigDebuffs\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:174\n RegisterEvent = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:82\n OnEnable = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:245\n events = <unnamed> {\n }\n UPDATE_BATTLEFIELD_STATUS = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:340\n ResetButton = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:407\n PLAYER_ENTERING_WORLD = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:323\n version_minor_num = 0.220000\n BlizzArenaSetAlpha = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:464\n CreateFrame = <function> defined @Interface\\AddOns\\Gladdy\\Frame.lua:33\n TimeLeft = <function> defined @Interface\\AddOns\\Gladdy\\libs\\AceTimer-3.0\\AceTimer-3.0.lua:172\n CLASSES = <table> {\n }\n ScheduleRepeatingTimer = <function> defined @Interface\\AddOns\\Gladdy\\libs\\AceTimer-3.0\\AceTimer-3.0.lua:129\n CancelAllTimers = <function> defined @Interface\\AddOns\\Gladdy\\libs\\AceTimer-3.0\\AceTimer-3.0.lua:160\n UpdateFrame = <function> defined @Interface\\AddOns\\Gladdy\\Frame.lua:116\n OnProfileChanged = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:237\n HideFrame = <function> defined @Interface\\AddOns\\Gladdy\\Frame.lua:291\n GetMirProfile = <function> defined @Interface\\AddOns\\Gladdy\\ImportStrings.lua:27\n BUTTON_DEFAULTS = <table> {\n }\n version = \"TBC-Classic_v1.22-Release\"\n VERSION_REGEX = \"TBC-Classic_v(%d+%.%d+)%-(%a)\"\n colorOption = <function> defined @Interface\\AddOns\\Gladdy\\Options.lua:106\n GetAnchor = <function> defined @Interface\\AddOns\\Gladdy\\Frame.lua:381\n SetupModule = <function> defined @Interface\\AddOns\\Gladdy\\Options.lua:150\n GetAuras = <function> defined @Interface\\AddOns\\Gladdy\\Options.lua:771\n ResetUnit = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:393\n GetBlizzardProfile = <function> defined @Interface\\AddOns\\Gladdy\\ImportStrings.lua:19\n GetKnallProfile = <function> defined @Interface\\AddOns\\Gladdy\\ImportStrings.lua:15\n Print = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:44\n CreateButton = <function> defined @Interface\\AddOns\\Gladdy\\Frame.lua:335\n Call = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:125\n JoinedArena = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:431\n GetIconStyles = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:279\n PLAYER_REGEN_ENABLED = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:348\n option = <function> defined @Interface\\AddOns\\Gladdy\\Options.lua:86\n L = <table> {\n }\n OnInitialize = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:189\n NewModule = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:140\n CancelTimer = <function> defined @Interface\\AddOns\\Gladdy\\libs\\AceTimer-3.0\\AceTimer-3.0.lua:147\n GetKlimpProfile = <function> defined @Interface\\AddOns\\Gladdy\\ImportStrings.lua:3\n version_releaseType = \"Release\"\n FormatTimer = <function> defined @Interface\\AddOns\\Gladdy\\Options.lua:23\n IterModules = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:121\n DeleteUnknownOptions = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:170\n Register",
			["stack"] = "[string \"@Interface\\AddOns\\Gladdy\\Modules\\Cooldowns.lua\"]:39: in function `getDefaultCooldown'\n[string \"@Interface\\AddOns\\Gladdy\\Modules\\Cooldowns.lua\"]:69: in main chunk",
			["session"] = 3024,
			["counter"] = 1,
		}, -- [42]
		{
			["message"] = "Interface\\AddOns\\Gladdy\\Modules\\BuffsDebuffs.lua:47: attempt to call method 'GetAuraTypeColor' (a nil value)",
			["time"] = "2022/08/05 16:50:45",
			["locals"] = "GetSpellInfo = <function> defined =[C]:-1\nCreateFrame = <function> defined =[C]:-1\nGetTime = <function> defined =[C]:-1\nselect = <function> defined =[C]:-1\nlower = <function> defined =[C]:-1\nceil = <function> defined =[C]:-1\ntremove = <function> defined =[C]:-1\ntinsert = <function> defined =[C]:-1\npairs = <function> defined =[C]:-1\nipairs = <function> defined =[C]:-1\ntostring = <function> defined =[C]:-1\nrandom = <function> defined =[C]:-1\nAURA_TYPE_DEBUFF = \"DEBUFF\"\nAURA_TYPE_BUFF = \"BUFF\"\nauraTypes = <table> {\n 1 = \"BUFF\"\n 2 = \"DEBUFF\"\n}\nGladdy = <table> {\n defaults = <table> {\n }\n modules = <table> {\n }\n ToggleFrame = <function> defined @Interface\\AddOns\\Gladdy\\Frame.lua:304\n UnregisterComm = <function> defined @Interface\\AddOns\\BigDebuffs\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:153\n TIMER_FORMAT = <table> {\n }\n RACES = <table> {\n }\n GetClassicProfile = <function> defined @Interface\\AddOns\\Gladdy\\ImportStrings.lua:7\n ScheduleTimer = <function> defined @Interface\\AddOns\\Gladdy\\libs\\AceTimer-3.0\\AceTimer-3.0.lua:94\n SMFetch = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:511\n GetClassicProfileNoPet = <function> defined @Interface\\AddOns\\Gladdy\\ImportStrings.lua:11\n GetRukkProfile = <function> defined @Interface\\AddOns\\Gladdy\\ImportStrings.lua:23\n version_major_num = 1\n SendCommMessage = <function> defined @Interface\\AddOns\\BugSack\\Libs\\AceComm-3.0\\AceComm-3.0.lua:88\n UnregisterAllComm = <function> defined @Interface\\AddOns\\BigDebuffs\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:174\n RegisterEvent = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:82\n OnEnable = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:245\n events = <unnamed> {\n }\n UPDATE_BATTLEFIELD_STATUS = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:340\n ResetButton = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:407\n PLAYER_ENTERING_WORLD = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:323\n version_minor_num = 0.220000\n BlizzArenaSetAlpha = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:464\n CreateFrame = <function> defined @Interface\\AddOns\\Gladdy\\Frame.lua:33\n TimeLeft = <function> defined @Interface\\AddOns\\Gladdy\\libs\\AceTimer-3.0\\AceTimer-3.0.lua:172\n CLASSES = <table> {\n }\n ScheduleRepeatingTimer = <function> defined @Interface\\AddOns\\Gladdy\\libs\\AceTimer-3.0\\AceTimer-3.0.lua:129\n CancelAllTimers = <function> defined @Interface\\AddOns\\Gladdy\\libs\\AceTimer-3.0\\AceTimer-3.0.lua:160\n UpdateFrame = <function> defined @Interface\\AddOns\\Gladdy\\Frame.lua:116\n OnProfileChanged = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:237\n HideFrame = <function> defined @Interface\\AddOns\\Gladdy\\Frame.lua:291\n GetMirProfile = <function> defined @Interface\\AddOns\\Gladdy\\ImportStrings.lua:27\n BUTTON_DEFAULTS = <table> {\n }\n version = \"TBC-Classic_v1.22-Release\"\n VERSION_REGEX = \"TBC-Classic_v(%d+%.%d+)%-(%a)\"\n colorOption = <function> defined @Interface\\AddOns\\Gladdy\\Options.lua:106\n GetAnchor = <function> defined @Interface\\AddOns\\Gladdy\\Frame.lua:381\n SetupModule = <function> defined @Interface\\AddOns\\Gladdy\\Options.lua:150\n GetAuras = <function> defined @Interface\\AddOns\\Gladdy\\Options.lua:771\n ResetUnit = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:393\n GetBlizzardProfile = <function> defined @Interface\\AddOns\\Gladdy\\ImportStrings.lua:19\n GetKnallProfile = <function> defined @Interface\\AddOns\\Gladdy\\ImportStrings.lua:15\n Print = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:44\n CreateButton = <function> defined @Interface\\AddOns\\Gladdy\\Frame.lua:335\n Call = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:125\n JoinedArena = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:431\n GetIconStyles = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:279\n PLAYER_REGEN_ENABLED = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:348\n option = <function> defined @Interface\\AddOns\\Gladdy\\Options.lua:86\n L = <table> {\n }\n OnInitialize = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:189\n NewModule = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:140",
			["stack"] = "[string \"@Interface\\AddOns\\Gladdy\\Modules\\BuffsDebuffs.lua\"]:47: in main chunk",
			["session"] = 3024,
			["counter"] = 1,
		}, -- [43]
		{
			["message"] = "Interface\\AddOns\\Gladdy\\Gladdy-4.lua:218: attempt to call method 'GetSpecBuffs' (a nil value)",
			["time"] = "2022/08/05 16:50:51",
			["locals"] = "self = <table> {\n defaults = <table> {\n }\n modules = <table> {\n }\n ToggleFrame = <function> defined @Interface\\AddOns\\Gladdy\\Frame.lua:304\n spellTextures = <table> {\n }\n UnregisterComm = <function> defined @Interface\\AddOns\\BigDebuffs\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:153\n TIMER_FORMAT = <table> {\n }\n RACES = <table> {\n }\n GetClassicProfile = <function> defined @Interface\\AddOns\\Gladdy\\ImportStrings.lua:7\n ScheduleTimer = <function> defined @Interface\\AddOns\\Gladdy\\libs\\AceTimer-3.0\\AceTimer-3.0.lua:94\n SMFetch = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:511\n GetClassicProfileNoPet = <function> defined @Interface\\AddOns\\Gladdy\\ImportStrings.lua:11\n GetRukkProfile = <function> defined @Interface\\AddOns\\Gladdy\\ImportStrings.lua:23\n version_major_num = 1\n SendCommMessage = <function> defined @Interface\\AddOns\\BugSack\\Libs\\AceComm-3.0\\AceComm-3.0.lua:88\n db = <table> {\n }\n testData = <table> {\n }\n UnregisterAllComm = <function> defined @Interface\\AddOns\\BigDebuffs\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:174\n cooldownSpellIds = <table> {\n }\n RegisterEvent = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:82\n OnEnable = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:245\n events = <unnamed> {\n }\n UPDATE_BATTLEFIELD_STATUS = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:340\n ResetButton = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:407\n PLAYER_ENTERING_WORLD = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:323\n version_minor_num = 0.220000\n BlizzArenaSetAlpha = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:464\n CreateFrame = <function> defined @Interface\\AddOns\\Gladdy\\Frame.lua:33\n TimeLeft = <function> defined @Interface\\AddOns\\Gladdy\\libs\\AceTimer-3.0\\AceTimer-3.0.lua:172\n CLASSES = <table> {\n }\n LSM = <table> {\n }\n ScheduleRepeatingTimer = <function> defined @Interface\\AddOns\\Gladdy\\libs\\AceTimer-3.0\\AceTimer-3.0.lua:129\n CancelAllTimers = <function> defined @Interface\\AddOns\\Gladdy\\libs\\AceTimer-3.0\\AceTimer-3.0.lua:160\n UpdateFrame = <function> defined @Interface\\AddOns\\Gladdy\\Frame.lua:116\n OnProfileChanged = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:237\n HideFrame = <function> defined @Interface\\AddOns\\Gladdy\\Frame.lua:291\n GetMirProfile = <function> defined @Interface\\AddOns\\Gladdy\\ImportStrings.lua:27\n BUTTON_DEFAULTS = <table> {\n }\n dbi = <table> {\n }\n version = \"TBC-Classic_v1.22-Release\"\n exceptionNames = <table> {\n }\n VERSION_REGEX = \"TBC-Classic_v(%d+%.%d+)%-(%a)\"\n SpotEnemy = <function> defined @Interface\\AddOns\\Gladdy\\EventListener.lua:49\n colorOption = <function> defined @Interface\\AddOns\\Gladdy\\Options.lua:106\n GetAnchor = <function> defined @Interface\\AddOns\\Gladdy\\Frame.lua:381\n SetupModule = <function> defined @Interface\\AddOns\\Gladdy\\Options.lua:150\n GetAuras = <function> defined @Interface\\AddOns\\Gladdy\\Options.lua:771\n OnInitialize = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:189\n ResetUnit = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:393\n GetBlizzardProfile = <function> defined @Interface\\AddOns\\Gladdy\\ImportStrings.lua:19\n GetKnallProfile = <function> defined @Interface\\AddOns\\Gladdy\\ImportStrings.lua:15\n Print = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:44\n CreateButton = <function> defined @Interface\\AddOns\\Gladdy\\Frame.lua:335\n Call = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:125\n JoinedArena = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:431\n GetIconStyles = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:279\n PLAYER_REGEN_ENABLED = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:348\n option = <function> defined @Interface\\AddOns\\Gladdy\\Options.lua:86\n L = <table> {\n }\n DetectSpec = <function> defined @Interface\\AddOns\\Gladdy\\EventListener.lua:43\n NewModule = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:140\n CancelTimer = <function> defined @Interface\\AddOns\\Gladdy\\libs\\AceTimer-3.0\\AceTimer-3.0.lua:147\n GetKlimpProfile = <function> defined @Interface\\AddOns\\Gladdy\\ImportStrings.lua:3\n version_releaseType = \"Release",
			["stack"] = "[string \"@Interface\\AddOns\\Gladdy\\Gladdy-4.lua\"]:218: in function `OnInitialize'\n[string \"@Interface\\AddOns\\Gladdy\\Gladdy-4.lua\"]:71: in function <Interface\\AddOns\\Gladdy\\Gladdy.lua:69>",
			["session"] = 3024,
			["counter"] = 1,
		}, -- [44]
		{
			["message"] = "Interface\\AddOns\\TextureScript\\TextureScript.lua:91: attempt to index global 'MinimapToggleButton' (a nil value)",
			["time"] = "2022/08/05 16:50:46",
			["locals"] = "frame2 = <unnamed> {\n 0 = <userdata>\n}\nFauxScrollFrame_GetOffset = <function> defined @Interface\\SharedXML\\SecureUIPanelTemplates.lua:336\nGetGuildRosterInfo = <function> defined =[C]:-1\nGuildListScrollFrame = GuildListScrollFrame {\n ScrollBar = GuildListScrollFrameScrollBar {\n }\n offset = 0\n ScrollChildFrame = GuildListScrollFrameScrollChildFrame {\n }\n 0 = <userdata>\n}\nGUILDMEMBERS_TO_DISPLAY = 13\nRAID_CLASS_COLORS = <table> {\n HUNTER = <table> {\n }\n WARRIOR = <table> {\n }\n PALADIN = <table> {\n }\n MAGE = <table> {\n }\n PRIEST = <table> {\n }\n SHAMAN = <table> {\n }\n WARLOCK = <table> {\n }\n DEMONHUNTER = <table> {\n }\n DEATHKNIGHT = <table> {\n }\n DRUID = <table> {\n }\n MONK = <table> {\n }\n ROGUE = <table> {\n }\n}\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = <userdata>\n(*temporary) = 4\n(*temporary) = <function> defined =[C]:-1\n(*temporary) = PartyMemberFrame4PVPIcon {\n 0 = <userdata>\n}\n(*temporary) = 0\n(*temporary) = <userdata>\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = \"attempt to index global 'MinimapToggleButton' (a nil value)\"\n",
			["stack"] = "[string \"@Interface\\AddOns\\TextureScript\\TextureScript.lua\"]:91: in main chunk",
			["session"] = 3026,
			["counter"] = 3,
		}, -- [45]
		{
			["message"] = "Interface\\AddOns\\TextureScript\\TextureScript.lua:91: attempt to index global 'MinimapWorldMapButton' (a nil value)",
			["time"] = "2022/08/05 17:11:33",
			["locals"] = "frame2 = <unnamed> {\n 0 = <userdata>\n}\nFauxScrollFrame_GetOffset = <function> defined @Interface\\SharedXML\\SecureUIPanelTemplates.lua:336\nGetGuildRosterInfo = <function> defined =[C]:-1\nGuildListScrollFrame = GuildListScrollFrame {\n ScrollBar = GuildListScrollFrameScrollBar {\n }\n offset = 0\n ScrollChildFrame = GuildListScrollFrameScrollChildFrame {\n }\n 0 = <userdata>\n}\nGUILDMEMBERS_TO_DISPLAY = 13\nRAID_CLASS_COLORS = <table> {\n HUNTER = <table> {\n }\n WARRIOR = <table> {\n }\n PALADIN = <table> {\n }\n MAGE = <table> {\n }\n PRIEST = <table> {\n }\n SHAMAN = <table> {\n }\n WARLOCK = <table> {\n }\n DEMONHUNTER = <table> {\n }\n DEATHKNIGHT = <table> {\n }\n DRUID = <table> {\n }\n MONK = <table> {\n }\n ROGUE = <table> {\n }\n}\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = <userdata>\n(*temporary) = 4\n(*temporary) = <function> defined =[C]:-1\n(*temporary) = PartyMemberFrame4PVPIcon {\n 0 = <userdata>\n}\n(*temporary) = 0\n(*temporary) = <userdata>\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = \"attempt to index global 'MinimapWorldMapButton' (a nil value)\"\n",
			["stack"] = "[string \"@Interface\\AddOns\\TextureScript\\TextureScript.lua\"]:91: in main chunk",
			["session"] = 3027,
			["counter"] = 1,
		}, -- [46]
		{
			["message"] = "[string \"MinimapWorldMapButton:Hide()\"]:1: attempt to index global 'MinimapWorldMapButton' (a nil value)",
			["time"] = "2022/08/05 17:11:51",
			["locals"] = "(*temporary) = nil\n(*temporary) = nil\n(*temporary) = \"attempt to index global 'MinimapWorldMapButton' (a nil value)\"\n",
			["stack"] = "[string \"MinimapWorldMapButton:Hide()\"]:1: in main chunk\n[string \"=[C]\"]: in function `RunScript'\n[string \"@Interface\\FrameXML\\ChatFrame.lua\"]:2196: in function `?'\n[string \"@Interface\\FrameXML\\ChatFrame.lua\"]:4933: in function `ChatEdit_ParseText'\n[string \"@Interface\\FrameXML\\ChatFrame.lua\"]:4596: in function `ChatEdit_SendText'\n[string \"@Interface\\FrameXML\\ChatFrame.lua\"]:4632: in function `ChatEdit_OnEnterPressed'\n[string \"*:OnEnterPressed\"]:1: in function <[string \"*:OnEnterPressed\"]:1>",
			["session"] = 3027,
			["counter"] = 1,
		}, -- [47]
		{
			["message"] = "Interface\\AddOns\\ClassPortraits\\ClassPortraits.lua:49: bad argument #1 to 'unpack' (table expected, got nil)",
			["time"] = "2022/08/05 17:36:25",
			["locals"] = "(*temporary) = nil\n(*temporary) = \"table expected, got nil\"\n",
			["stack"] = "[string \"=[C]\"]: in function `unpack'\n[string \"@Interface\\AddOns\\ClassPortraits\\ClassPortraits.lua\"]:49: in function <Interface\\AddOns\\ClassPortraits\\ClassPortraits.lua:45>",
			["session"] = 3037,
			["counter"] = 104,
		}, -- [48]
		{
			["message"] = "Interface\\AddOns\\ClassPortraits\\ClassPortraits.lua:50: bad argument #1 to 'unpack' (table expected, got nil)",
			["time"] = "2022/08/05 20:46:43",
			["locals"] = "(*temporary) = nil\n(*temporary) = \"table expected, got nil\"\n",
			["stack"] = "[string \"=[C]\"]: in function `unpack'\n[string \"@Interface\\AddOns\\ClassPortraits\\ClassPortraits.lua\"]:50: in function <Interface\\AddOns\\ClassPortraits\\ClassPortraits.lua:46>",
			["session"] = 3055,
			["counter"] = 660,
		}, -- [49]
		{
			["message"] = "[string \"PVPMicroButtonPortrait:Hide()\"]:1: attempt to index global 'PVPMicroButtonPortrait' (a nil value)",
			["time"] = "2022/08/06 11:27:13",
			["locals"] = "(*temporary) = nil\n(*temporary) = nil\n(*temporary) = \"attempt to index global 'PVPMicroButtonPortrait' (a nil value)\"\n",
			["stack"] = "[string \"PVPMicroButtonPortrait:Hide()\"]:1: in main chunk\n[string \"=[C]\"]: in function `RunScript'\n[string \"@Interface\\FrameXML\\ChatFrame.lua\"]:2196: in function `?'\n[string \"@Interface\\FrameXML\\ChatFrame.lua\"]:4933: in function `ChatEdit_ParseText'\n[string \"@Interface\\FrameXML\\ChatFrame.lua\"]:4596: in function `ChatEdit_SendText'\n[string \"@Interface\\FrameXML\\ChatFrame.lua\"]:4632: in function `ChatEdit_OnEnterPressed'\n[string \"*:OnEnterPressed\"]:1: in function <[string \"*:OnEnterPressed\"]:1>",
			["session"] = 3087,
			["counter"] = 1,
		}, -- [50]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'ButtonForge' tried to call the protected function 'OverrideActionBarButton3:Show()'.",
			["time"] = "2022/08/09 21:23:16",
			["locals"] = "InCombatSkipped",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `Show'\n[string \"@Interface\\FrameXML\\ActionButton.lua\"]:357: in function `ActionButton_Update'\n[string \"@Interface\\FrameXML\\ActionButton.lua\"]:694: in function `ActionButton_OnEvent'\n[string \"@Interface\\FrameXML\\ActionButton.lua\"]:207: in function <Interface\\FrameXML\\ActionButton.lua:204>",
			["session"] = 3121,
			["counter"] = 2,
		}, -- [51]
		{
			["message"] = "Interface\\AddOns\\ButtonForge\\EventManager.lua:87: Attempt to register unknown event \"CURSOR_UPDATE\"",
			["time"] = "2022/08/05 16:50:45",
			["locals"] = "(*temporary) = <unnamed> {\n 0 = <userdata>\n PromoteSpells = false\n TalentSwap = false\n RefreshSpells = false\n SetCVarCalled = <function> defined @Interface\\AddOns\\ButtonForge\\EventManager.lua:67\n}\n(*temporary) = \"CURSOR_UPDATE\"\n",
			["stack"] = "[string \"=[C]\"]: in function `RegisterEvent'\n[string \"@Interface\\AddOns\\ButtonForge\\EventManager.lua\"]:87: in main chunk",
			["session"] = 3122,
			["counter"] = 9,
		}, -- [52]
		{
			["message"] = "(null)",
			["session"] = 3122,
			["time"] = "2022/08/05 16:50:51",
			["counter"] = 42,
		}, -- [53]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'ButtonForge' tried to call the protected function 'MainMenuBarArtFrame:SetAttribute()'.",
			["time"] = "2022/08/09 21:26:15",
			["locals"] = "InCombatSkipped",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `SetAttribute'\n[string \"@Interface\\FrameXML\\ActionBarController.lua\"]:131: in function `ActionBarController_ResetToDefault'\n[string \"@Interface\\FrameXML\\ActionBarController.lua\"]:122: in function `ActionBarController_UpdateAll'\n[string \"@Interface\\FrameXML\\ActionBarController.lua\"]:54: in function <Interface\\FrameXML\\ActionBarController.lua:43>",
			["session"] = 3122,
			["counter"] = 1,
		}, -- [54]
		{
			["message"] = "...nfig-3.0\\AceConfigDialog-3.0\\AceConfigDialog-3.0-82.lua:1508: Usage: AceConfigDialogTooltip:SetText(\"text\" [, color, wrap])",
			["time"] = "2022/08/10 16:20:59",
			["stack"] = "[string \"=[C]\"]: in function `SetText'\n[string \"@Interface\\AddOns\\BigDebuffs\\Libs\\AceConfig-3.0-3\\AceConfigDialog-3.0\\AceConfigDialog-3.0-82.lua\"]:1508: in function <...nfig-3.0\\AceConfigDialog-3.0\\AceConfigDialog-3.0.lua:1476>\n[string \"=[C]\"]: ?\n[string \"@Interface\\AddOns\\BigDebuffs\\Libs\\AceGUI-3.0\\AceGUI-3.0-41.lua\"]:72: in function <...ace\\AddOns\\BigDebuffs\\Libs\\AceGUI-3.0\\AceGUI-3.0.lua:70>\n[string \"@Interface\\AddOns\\BigDebuffs\\Libs\\AceGUI-3.0\\AceGUI-3.0-41.lua\"]:306: in function `Fire'\n[string \"@Interface\\AddOns\\BigDebuffs\\Libs\\AceGUI-3.0-41\\widgets\\AceGUIContainer-TreeGroup.lua\"]:206: in function <...ibs\\AceGUI-3.0\\widgets\\AceGUIContainer-TreeGroup.lua:204>",
			["session"] = 3124,
			["counter"] = 25,
		}, -- [55]
		{
			["message"] = "...e\\AddOns\\Blizzard_DebugTools\\Blizzard_DebugTools-1.0.lua:286: Action[FrameMeasurement] failed because[Can't measure restricted regions]: attempted from: <unnamed>:GetPoint().",
			["time"] = "2022/08/06 11:02:04",
			["locals"] = "(*temporary) = <unnamed> {\n 0 = <userdata>\n RaidTargetIcon = <unnamed> {\n }\n}\n(*temporary) = 1\n",
			["stack"] = "[string \"=[C]\"]: in function `GetPoint'\n[string \"@Interface\\AddOns\\Blizzard_DebugTools\\Blizzard_DebugTools-1.0.lua\"]:286: in function `HighlightFrame'\n[string \"@Interface\\AddOns\\Blizzard_DebugTools\\Blizzard_DebugTools-1.0.lua\"]:309: in function <...e\\AddOns\\Blizzard_DebugTools\\Blizzard_DebugTools.lua:300>",
			["session"] = 3127,
			["counter"] = 2,
		}, -- [56]
		{
			["message"] = "Interface\\AddOns\\TextureScript\\TextureScript.lua:1528: unexpected symbol near '�'",
			["time"] = "2022/08/12 19:57:57",
			["locals"] = "",
			["stack"] = "",
			["session"] = 3132,
			["counter"] = 20,
		}, -- [57]
	},
}
