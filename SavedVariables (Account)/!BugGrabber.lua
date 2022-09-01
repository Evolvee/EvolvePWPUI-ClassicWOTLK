
BugGrabberDB = {
	["session"] = 3544,
	["lastSanitation"] = 3,
	["errors"] = {
		{
			["message"] = "Interface\\AddOns\\MoveAnything\\MoveAnything-11.b2.lua:814: attempt to call global 'TEXT' (a nil value)",
			["time"] = "2022/08/19 16:26:07",
			["locals"] = "addonname = \"MoveAnything\"\nMOVANY = <table> {\n PROFILE_CURRENT = \"Current\"\n PROFILE_DELETED = \"Profile deleted: %s\"\n ELEMENT_NOT_FOUND_NAMED = \"UI element not found: %s\"\n PROFILE_IMPORTED = \"Profile imported: %s\"\n PROFILE_RESET_CONFIRM = \"MoveAnything: Reset all frames in the current profile?\"\n PROFILE_EXPORTED = \"Profile exported: %s\"\n PROFILE_CANT_DELETE_CURRENT_IN_COMBAT = \"Can't delete current profile during combat\"\n UNSUPPORTED_TYPE = \"Unsupported type: %s\"\n CMD_SYNTAX_EXPORT = \"Syntax: /moveexport ProfileName\"\n PROFILE_UNKNOWN = \"Unknown profile: %s\"\n MAX_MOVERS = \"You can only move %i frames at once\"\n UNSUPPORTED_FRAME = \"Unsupported frame: %s\"\n CMD_SYNTAX_DELETE = \"Syntax: /movedelete ProfileName\"\n ELEMENT_NOT_FOUND = \"UI element not found\"\n LIST_HEADING_CATEGORY_AND_FRAMES = \"Categories and Frames\"\n RESETTING_FRAME = \"Resetting %s\"\n NO_NAMED_FRAMES_FOUND = \"No named elements found\"\n RESET_FRAME_CONFIRM = \"Reset %s? Press again within 5 seconds to confirm\"\n FRAME_PROTECTED_DURING_COMBAT = \"Can't interact with %s during combat\"\n LIST_HEADING_HIDE = \"Hide\"\n PROFILES = \"Profiles\"\n LIST_HEADING_MOVER = \"Mover\"\n CMD_SYNTAX_HIDE = \"Syntax: /hide ProfileName\"\n DISABLED_DURING_COMBAT = \"Disabled during combat\"\n CMD_SYNTAX_IMPORT = \"Syntax: /moveimport ProfileName\"\n SEARCH_TEXT = \"Search    \"\n RESET_ALL_CONFIRM = \"MoveAnything: Reset MoveAnything to installation state?\n\nWarning: this will delete all frame settings and clear out the custom frame list.\"\n PROFILES_CANT_SWITCH_DURING_COMBAT = \"Profiles can't be switched during combat\"\n FRAME_VISIBILITY_ONLY = \"%s can only be hidden\"\n CMD_SYNTAX_UNMOVE = \"Syntax: /unmove framename\"\n FRAME_UNPOSITIONED = \"%s is currently unpositioned and can't be moved till it is\"\n LIST_HEADING_SEARCH_RESULTS = \"Search results: %i\"\n ONLY_WHEN_VISIBLE = \"%s can only be modified while it's shown on the screen\"\n}\nMAOptions = nil\nvoid = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnything.lua:13\ntdeepcopy = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnything.lua:16\ntcopy = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnything.lua:34\ntlen = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnything.lua:45\ndbg = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnything.lua:55\n(*temporary) = <table> {\n BFMGR_INVITED_TO_QUEUE_WARMUP = <table> {\n }\n ADDON_ACTION_FORBIDDEN = <table> {\n }\n BACKPACK_INCREASE_SIZE = <table> {\n }\n CONFIRM_SURRENDER_ARENA = <table> {\n }\n BugSackSendBugs = <table> {\n }\n CONFIRM_OVERWRITE_EQUIPMENT_SET = <table> {\n }\n CONFIRM_PET_UNLEARN = <table> {\n }\n CONFIRM_DESTROY_COMMUNITY = <table> {\n }\n REMOVE_GUILDMEMBER = <table> {\n }\n QUEST_ACCEPT_LOG_FULL = <table> {\n }\n CLIENT_LOGOUT_ALERT = <table> {\n }\n RENAME_ARENA_TEAM = <table> {\n }\n CONFIRM_LOOT_DISTRIBUTION = <table> {\n }\n RENAME_GUILD = <table> {\n }\n RESURRECT = <table> {\n }\n TRADE_POTENTIAL_BIND_ENCHANT = <table> {\n }\n INVITE_COMMUNITY_MEMBER = <table> {\n }\n CONFIRM_TEAM_PROMOTE = <table> {\n }\n SET_GUILDPLAYERNOTE = <table> {\n }\n CONFIRM_RESET_VIDEO_SETTINGS = <table> {\n }\n ABANDON_PET = <table> {\n }\n USE_NO_REFUND_CONFIRM = <table> {\n }\n CONFIRM_REMOVE_COMMUNITY_MEMBER = <table> {\n }\n DELETE_ITEM = <table> {\n }\n ADD_RAIDMEMBER = <table> {\n }\n ADD_FRIEND = <table> {\n }\n MAC_OPEN_UNIVERSAL_ACCESS = <table> {\n }\n BFMGR_PLAYER_NOT_WHILE_IN_RAID = <table> {\n }\n CONFIRM_SAVE_EQUIPMENT_SET = <table> {\n }\n TRANSMOG_OUTFIT_SOME_INVALID_APPEARANCES = <table> {\n }\n XP_LOSS_NO_SICKNESS_NO_DURABILITY = <table> {\n }\n ARENA_TEAM_INVITE = <table> {\n }\n REFUNDABLE_SOCKET = <table> {\n }\n ADD_TEAMMEMBER = <table> {\n }\n CAMP = <table> {\n }\n CONFIRM_GUILD_CHARTER_PURCHASE = <table> {\n }\n RESURRECT_NO_TIMER = <table> {\n }\n TTS_CONFIRM_SAVE_SETTINGS = <table> {\n }\n EXTERNAL_LINK = <table> {\n }\n CONFIRM_TEAM_KICK = <table> {\n }\n COD_CONFIRMATION_AUTO_LOOT = <table> {\n }\n CONVERT_TO_RAID = <table> {\n }\n CLIENT_INVENTORY_FULL_OVERFLOW = <table> {\n }\n CONFIRM_HIGH_COST_ITEM = <table> {\n }\n ON_WORLD_PVP_QUEUE = <table> {\n }\n ON_BATTLEFIELD_AUTO_QUEUE_EJECT = <table> {\n }\n CONFIRM_BUY_BANK_SLOT = <table> {\n }\n ",
			["stack"] = "[string \"@Interface\\AddOns\\MoveAnything\\MoveAnything-11.b2.lua\"]:814: in main chunk",
			["session"] = 3211,
			["counter"] = 1,
		}, -- [1]
		{
			["message"] = "[string \"MAScrollBorder:OnLoad\"]:1: attempt to call method 'SetBackdropColor' (a nil value)",
			["time"] = "2022/08/19 16:26:07",
			["locals"] = "self = MAScrollBorder {\n 0 = <userdata>\n}\n(*temporary) = nil\n(*temporary) = MAScrollBorder {\n 0 = <userdata>\n}\n(*temporary) = 0.100000\n(*temporary) = 0.100000\n(*temporary) = 0.100000\n(*temporary) = \"attempt to call method 'SetBackdropColor' (a nil value)\"\n",
			["stack"] = "[string \"*:OnLoad\"]:1: in function <[string \"*:OnLoad\"]:1>",
			["session"] = 3211,
			["counter"] = 1,
		}, -- [2]
		{
			["message"] = "[string \"MANudger:OnLoad\"]:2: attempt to call method 'SetBackdropColor' (a nil value)",
			["time"] = "2022/08/19 16:26:07",
			["locals"] = "self = MANudger {\n 0 = <userdata>\n}\n(*temporary) = nil\n(*temporary) = MANudger {\n 0 = <userdata>\n}\n(*temporary) = 0\n(*temporary) = 0\n(*temporary) = 0\n(*temporary) = 0.750000\n(*temporary) = \"attempt to call method 'SetBackdropColor' (a nil value)\"\n",
			["stack"] = "[string \"*:OnLoad\"]:2: in function <[string \"*:OnLoad\"]:1>",
			["session"] = 3211,
			["counter"] = 1,
		}, -- [3]
		{
			["message"] = "[string \"BagFrame1:OnLoad\"]:41: attempt to call method 'SetBag' (a nil value)",
			["time"] = "2022/08/19 16:26:07",
			["locals"] = "self = BagFrame1 {\n 0 = <userdata>\n realID = 0\n}\nx = -80\ny = 45\nCONTAINER_FRAME_TABLE = <table> {\n 0 = <table> {\n }\n 2 = <table> {\n }\n 4 = <table> {\n }\n 8 = <table> {\n }\n 16 = <table> {\n }\n 32 = <table> {\n }\n 9 = <table> {\n }\n 18 = <table> {\n }\n 36 = <table> {\n }\n 5 = <table> {\n }\n 10 = <table> {\n }\n 20 = <table> {\n }\n 40 = <table> {\n }\n 11 = <table> {\n }\n 22 = <table> {\n }\n 3 = <table> {\n }\n 6 = <table> {\n }\n 12 = <table> {\n }\n 24 = <table> {\n }\n 38 = <table> {\n }\n 13 = <table> {\n }\n 26 = <table> {\n }\n 34 = <table> {\n }\n 7 = <table> {\n }\n 14 = <table> {\n }\n 28 = <table> {\n }\n 30 = <table> {\n }\n 15 = <table> {\n }\n 1 = <table> {\n }\n}\n(*temporary) = nil\n(*temporary) = <table> {\n lRunAfterInteract = <table> {\n }\n framesUnsupported = <table> {\n }\n pendingActions = <table> {\n }\n DetachFromParent = <table> {\n }\n CreateFrameEditor = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnythingFrameEditor.lua:61\n ContainerFrame_GenerateFrame = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnything.lua:694\n ToggleFrameEditors = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnythingFrameEditor.lua:21\n moverPrefix = \"MAMover\"\n lRunBeforeInteract = <table> {\n }\n DDMStrataList = <table> {\n }\n lHideOnScale = <table> {\n }\n NoAlpha = <table> {\n }\n lTranslateSec = <table> {\n }\n pendingFrames = <table> {\n }\n NoMove = <table> {\n }\n NoReparent = <table> {\n }\n NoScale = <table> {\n }\n movers = <table> {\n }\n AchievementAlertFrame_OnLoad = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnything.lua:784\n defFrames = <table> {\n }\n NoUnanchoring = <table> {\n }\n lSimpleHide = <table> {\n }\n lEnableMouse = <table> {\n }\n hReputationWatchBar_Update = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnything.lua:765\n HideUsingWH = <table> {\n }\n CloseAllWindows = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnything.lua:699\n cats = <table> {\n }\n ScaleWH = <table> {\n }\n lLinkedScaling = <table> {\n }\n MoveOnlyWhenVisible = <table> {\n }\n hCreateFrame = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnything.lua:733\n lRunOnceBeforeInteract = <table> {\n }\n resetConfirm = \"\"\n lAllowedTypes = <table> {\n }\n frames = <table> {\n }\n FrameEditor = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnythingFrameEditor.lua:32\n DefaultFrameList = <table> {\n }\n lCreateBeforeInteract = <table> {\n }\n lDisallowedFrames = <table> {\n }\n lAllowedMAFrames = <table> {\n }\n CaptureBar_Create = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnything.lua:771\n NoUnanchorRelatives = <table> {\n }\n AchievementAlertFrame_GetAlertFrame = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnything.lua:793\n framesCount = 0\n guiLines = -1\n bagFrames = <table> {\n }\n NoHide = <table> {\n }\n ShowUIPanel = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnything.lua:748\n hPlayerTalentFrame_Toggle = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnything.lua:758\n nextFrameIdx = 1\n SCROLL_HEIGHT = 24\n HideUIPanel = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnything.lua:753\n framesIdx = <table> {\n }\n DDMPointList = <table> {\n }\n frameEditors = <table> {\n }\n moverNextId = 1\n HideList = <table> {\n }\n lTranslate = <table> {\n }\n lDelayedSync = <table> {\n }\n}\n(*temporary) = 0\n(*temporary) = BagFrame1 {\n 0 = <userdata>\n realID = 0\n}\n(*temporary) = \"attempt to call method 'SetBag' (a nil value)\"\n",
			["stack"] = "[string \"*:OnLoad\"]:41: in function <[string \"*:OnLoad\"]:1>",
			["session"] = 3211,
			["counter"] = 1,
		}, -- [4]
		{
			["message"] = "[string \"BagFrame2:OnLoad\"]:41: attempt to call method 'SetBag' (a nil value)",
			["time"] = "2022/08/19 16:26:07",
			["locals"] = "self = BagFrame2 {\n 0 = <userdata>\n realID = 1\n}\nx = -80\ny = 90\nCONTAINER_FRAME_TABLE = <table> {\n 0 = <table> {\n }\n 2 = <table> {\n }\n 4 = <table> {\n }\n 8 = <table> {\n }\n 16 = <table> {\n }\n 32 = <table> {\n }\n 9 = <table> {\n }\n 18 = <table> {\n }\n 36 = <table> {\n }\n 5 = <table> {\n }\n 10 = <table> {\n }\n 20 = <table> {\n }\n 40 = <table> {\n }\n 11 = <table> {\n }\n 22 = <table> {\n }\n 3 = <table> {\n }\n 6 = <table> {\n }\n 12 = <table> {\n }\n 24 = <table> {\n }\n 38 = <table> {\n }\n 13 = <table> {\n }\n 26 = <table> {\n }\n 34 = <table> {\n }\n 7 = <table> {\n }\n 14 = <table> {\n }\n 28 = <table> {\n }\n 30 = <table> {\n }\n 15 = <table> {\n }\n 1 = <table> {\n }\n}\n(*temporary) = nil\n(*temporary) = <table> {\n lRunAfterInteract = <table> {\n }\n framesUnsupported = <table> {\n }\n pendingActions = <table> {\n }\n DetachFromParent = <table> {\n }\n CreateFrameEditor = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnythingFrameEditor.lua:61\n ContainerFrame_GenerateFrame = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnything.lua:694\n ToggleFrameEditors = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnythingFrameEditor.lua:21\n moverPrefix = \"MAMover\"\n lRunBeforeInteract = <table> {\n }\n DDMStrataList = <table> {\n }\n lHideOnScale = <table> {\n }\n NoAlpha = <table> {\n }\n lTranslateSec = <table> {\n }\n pendingFrames = <table> {\n }\n NoMove = <table> {\n }\n NoReparent = <table> {\n }\n NoScale = <table> {\n }\n movers = <table> {\n }\n AchievementAlertFrame_OnLoad = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnything.lua:784\n defFrames = <table> {\n }\n NoUnanchoring = <table> {\n }\n lSimpleHide = <table> {\n }\n lEnableMouse = <table> {\n }\n hReputationWatchBar_Update = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnything.lua:765\n HideUsingWH = <table> {\n }\n CloseAllWindows = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnything.lua:699\n cats = <table> {\n }\n ScaleWH = <table> {\n }\n lLinkedScaling = <table> {\n }\n MoveOnlyWhenVisible = <table> {\n }\n hCreateFrame = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnything.lua:733\n lRunOnceBeforeInteract = <table> {\n }\n resetConfirm = \"\"\n lAllowedTypes = <table> {\n }\n frames = <table> {\n }\n FrameEditor = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnythingFrameEditor.lua:32\n DefaultFrameList = <table> {\n }\n lCreateBeforeInteract = <table> {\n }\n lDisallowedFrames = <table> {\n }\n lAllowedMAFrames = <table> {\n }\n CaptureBar_Create = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnything.lua:771\n NoUnanchorRelatives = <table> {\n }\n AchievementAlertFrame_GetAlertFrame = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnything.lua:793\n framesCount = 0\n guiLines = -1\n bagFrames = <table> {\n }\n NoHide = <table> {\n }\n ShowUIPanel = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnything.lua:748\n hPlayerTalentFrame_Toggle = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnything.lua:758\n nextFrameIdx = 1\n SCROLL_HEIGHT = 24\n HideUIPanel = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnything.lua:753\n framesIdx = <table> {\n }\n DDMPointList = <table> {\n }\n frameEditors = <table> {\n }\n moverNextId = 1\n HideList = <table> {\n }\n lTranslate = <table> {\n }\n lDelayedSync = <table> {\n }\n}\n(*temporary) = 1\n(*temporary) = BagFrame2 {\n 0 = <userdata>\n realID = 1\n}\n(*temporary) = \"attempt to call method 'SetBag' (a nil value)\"\n",
			["stack"] = "[string \"*:OnLoad\"]:41: in function <[string \"*:OnLoad\"]:1>",
			["session"] = 3211,
			["counter"] = 1,
		}, -- [5]
		{
			["message"] = "[string \"BagFrame3:OnLoad\"]:41: attempt to call method 'SetBag' (a nil value)",
			["time"] = "2022/08/19 16:26:07",
			["locals"] = "self = BagFrame3 {\n 0 = <userdata>\n realID = 2\n}\nx = -80\ny = 135\nCONTAINER_FRAME_TABLE = <table> {\n 0 = <table> {\n }\n 2 = <table> {\n }\n 4 = <table> {\n }\n 8 = <table> {\n }\n 16 = <table> {\n }\n 32 = <table> {\n }\n 9 = <table> {\n }\n 18 = <table> {\n }\n 36 = <table> {\n }\n 5 = <table> {\n }\n 10 = <table> {\n }\n 20 = <table> {\n }\n 40 = <table> {\n }\n 11 = <table> {\n }\n 22 = <table> {\n }\n 3 = <table> {\n }\n 6 = <table> {\n }\n 12 = <table> {\n }\n 24 = <table> {\n }\n 38 = <table> {\n }\n 13 = <table> {\n }\n 26 = <table> {\n }\n 34 = <table> {\n }\n 7 = <table> {\n }\n 14 = <table> {\n }\n 28 = <table> {\n }\n 30 = <table> {\n }\n 15 = <table> {\n }\n 1 = <table> {\n }\n}\n(*temporary) = nil\n(*temporary) = <table> {\n lRunAfterInteract = <table> {\n }\n framesUnsupported = <table> {\n }\n pendingActions = <table> {\n }\n DetachFromParent = <table> {\n }\n CreateFrameEditor = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnythingFrameEditor.lua:61\n ContainerFrame_GenerateFrame = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnything.lua:694\n ToggleFrameEditors = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnythingFrameEditor.lua:21\n moverPrefix = \"MAMover\"\n lRunBeforeInteract = <table> {\n }\n DDMStrataList = <table> {\n }\n lHideOnScale = <table> {\n }\n NoAlpha = <table> {\n }\n lTranslateSec = <table> {\n }\n pendingFrames = <table> {\n }\n NoMove = <table> {\n }\n NoReparent = <table> {\n }\n NoScale = <table> {\n }\n movers = <table> {\n }\n AchievementAlertFrame_OnLoad = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnything.lua:784\n defFrames = <table> {\n }\n NoUnanchoring = <table> {\n }\n lSimpleHide = <table> {\n }\n lEnableMouse = <table> {\n }\n hReputationWatchBar_Update = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnything.lua:765\n HideUsingWH = <table> {\n }\n CloseAllWindows = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnything.lua:699\n cats = <table> {\n }\n ScaleWH = <table> {\n }\n lLinkedScaling = <table> {\n }\n MoveOnlyWhenVisible = <table> {\n }\n hCreateFrame = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnything.lua:733\n lRunOnceBeforeInteract = <table> {\n }\n resetConfirm = \"\"\n lAllowedTypes = <table> {\n }\n frames = <table> {\n }\n FrameEditor = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnythingFrameEditor.lua:32\n DefaultFrameList = <table> {\n }\n lCreateBeforeInteract = <table> {\n }\n lDisallowedFrames = <table> {\n }\n lAllowedMAFrames = <table> {\n }\n CaptureBar_Create = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnything.lua:771\n NoUnanchorRelatives = <table> {\n }\n AchievementAlertFrame_GetAlertFrame = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnything.lua:793\n framesCount = 0\n guiLines = -1\n bagFrames = <table> {\n }\n NoHide = <table> {\n }\n ShowUIPanel = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnything.lua:748\n hPlayerTalentFrame_Toggle = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnything.lua:758\n nextFrameIdx = 1\n SCROLL_HEIGHT = 24\n HideUIPanel = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnything.lua:753\n framesIdx = <table> {\n }\n DDMPointList = <table> {\n }\n frameEditors = <table> {\n }\n moverNextId = 1\n HideList = <table> {\n }\n lTranslate = <table> {\n }\n lDelayedSync = <table> {\n }\n}\n(*temporary) = 2\n(*temporary) = BagFrame3 {\n 0 = <userdata>\n realID = 2\n}\n(*temporary) = \"attempt to call method 'SetBag' (a nil value)\"\n",
			["stack"] = "[string \"*:OnLoad\"]:41: in function <[string \"*:OnLoad\"]:1>",
			["session"] = 3211,
			["counter"] = 1,
		}, -- [6]
		{
			["message"] = "[string \"BagFrame4:OnLoad\"]:41: attempt to call method 'SetBag' (a nil value)",
			["time"] = "2022/08/19 16:26:07",
			["locals"] = "self = BagFrame4 {\n 0 = <userdata>\n realID = 3\n}\nx = -80\ny = 180\nCONTAINER_FRAME_TABLE = <table> {\n 0 = <table> {\n }\n 2 = <table> {\n }\n 4 = <table> {\n }\n 8 = <table> {\n }\n 16 = <table> {\n }\n 32 = <table> {\n }\n 9 = <table> {\n }\n 18 = <table> {\n }\n 36 = <table> {\n }\n 5 = <table> {\n }\n 10 = <table> {\n }\n 20 = <table> {\n }\n 40 = <table> {\n }\n 11 = <table> {\n }\n 22 = <table> {\n }\n 3 = <table> {\n }\n 6 = <table> {\n }\n 12 = <table> {\n }\n 24 = <table> {\n }\n 38 = <table> {\n }\n 13 = <table> {\n }\n 26 = <table> {\n }\n 34 = <table> {\n }\n 7 = <table> {\n }\n 14 = <table> {\n }\n 28 = <table> {\n }\n 30 = <table> {\n }\n 15 = <table> {\n }\n 1 = <table> {\n }\n}\n(*temporary) = nil\n(*temporary) = <table> {\n lRunAfterInteract = <table> {\n }\n framesUnsupported = <table> {\n }\n pendingActions = <table> {\n }\n DetachFromParent = <table> {\n }\n CreateFrameEditor = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnythingFrameEditor.lua:61\n ContainerFrame_GenerateFrame = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnything.lua:694\n ToggleFrameEditors = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnythingFrameEditor.lua:21\n moverPrefix = \"MAMover\"\n lRunBeforeInteract = <table> {\n }\n DDMStrataList = <table> {\n }\n lHideOnScale = <table> {\n }\n NoAlpha = <table> {\n }\n lTranslateSec = <table> {\n }\n pendingFrames = <table> {\n }\n NoMove = <table> {\n }\n NoReparent = <table> {\n }\n NoScale = <table> {\n }\n movers = <table> {\n }\n AchievementAlertFrame_OnLoad = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnything.lua:784\n defFrames = <table> {\n }\n NoUnanchoring = <table> {\n }\n lSimpleHide = <table> {\n }\n lEnableMouse = <table> {\n }\n hReputationWatchBar_Update = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnything.lua:765\n HideUsingWH = <table> {\n }\n CloseAllWindows = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnything.lua:699\n cats = <table> {\n }\n ScaleWH = <table> {\n }\n lLinkedScaling = <table> {\n }\n MoveOnlyWhenVisible = <table> {\n }\n hCreateFrame = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnything.lua:733\n lRunOnceBeforeInteract = <table> {\n }\n resetConfirm = \"\"\n lAllowedTypes = <table> {\n }\n frames = <table> {\n }\n FrameEditor = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnythingFrameEditor.lua:32\n DefaultFrameList = <table> {\n }\n lCreateBeforeInteract = <table> {\n }\n lDisallowedFrames = <table> {\n }\n lAllowedMAFrames = <table> {\n }\n CaptureBar_Create = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnything.lua:771\n NoUnanchorRelatives = <table> {\n }\n AchievementAlertFrame_GetAlertFrame = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnything.lua:793\n framesCount = 0\n guiLines = -1\n bagFrames = <table> {\n }\n NoHide = <table> {\n }\n ShowUIPanel = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnything.lua:748\n hPlayerTalentFrame_Toggle = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnything.lua:758\n nextFrameIdx = 1\n SCROLL_HEIGHT = 24\n HideUIPanel = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnything.lua:753\n framesIdx = <table> {\n }\n DDMPointList = <table> {\n }\n frameEditors = <table> {\n }\n moverNextId = 1\n HideList = <table> {\n }\n lTranslate = <table> {\n }\n lDelayedSync = <table> {\n }\n}\n(*temporary) = 3\n(*temporary) = BagFrame4 {\n 0 = <userdata>\n realID = 3\n}\n(*temporary) = \"attempt to call method 'SetBag' (a nil value)\"\n",
			["stack"] = "[string \"*:OnLoad\"]:41: in function <[string \"*:OnLoad\"]:1>",
			["session"] = 3211,
			["counter"] = 1,
		}, -- [7]
		{
			["message"] = "[string \"BagFrame5:OnLoad\"]:41: attempt to call method 'SetBag' (a nil value)",
			["time"] = "2022/08/19 16:26:07",
			["locals"] = "self = BagFrame5 {\n 0 = <userdata>\n realID = 4\n}\nx = -80\ny = 225\nCONTAINER_FRAME_TABLE = <table> {\n 0 = <table> {\n }\n 2 = <table> {\n }\n 4 = <table> {\n }\n 8 = <table> {\n }\n 16 = <table> {\n }\n 32 = <table> {\n }\n 9 = <table> {\n }\n 18 = <table> {\n }\n 36 = <table> {\n }\n 5 = <table> {\n }\n 10 = <table> {\n }\n 20 = <table> {\n }\n 40 = <table> {\n }\n 11 = <table> {\n }\n 22 = <table> {\n }\n 3 = <table> {\n }\n 6 = <table> {\n }\n 12 = <table> {\n }\n 24 = <table> {\n }\n 38 = <table> {\n }\n 13 = <table> {\n }\n 26 = <table> {\n }\n 34 = <table> {\n }\n 7 = <table> {\n }\n 14 = <table> {\n }\n 28 = <table> {\n }\n 30 = <table> {\n }\n 15 = <table> {\n }\n 1 = <table> {\n }\n}\n(*temporary) = nil\n(*temporary) = <table> {\n lRunAfterInteract = <table> {\n }\n framesUnsupported = <table> {\n }\n pendingActions = <table> {\n }\n DetachFromParent = <table> {\n }\n CreateFrameEditor = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnythingFrameEditor.lua:61\n ContainerFrame_GenerateFrame = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnything.lua:694\n ToggleFrameEditors = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnythingFrameEditor.lua:21\n moverPrefix = \"MAMover\"\n lRunBeforeInteract = <table> {\n }\n DDMStrataList = <table> {\n }\n lHideOnScale = <table> {\n }\n NoAlpha = <table> {\n }\n lTranslateSec = <table> {\n }\n pendingFrames = <table> {\n }\n NoMove = <table> {\n }\n NoReparent = <table> {\n }\n NoScale = <table> {\n }\n movers = <table> {\n }\n AchievementAlertFrame_OnLoad = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnything.lua:784\n defFrames = <table> {\n }\n NoUnanchoring = <table> {\n }\n lSimpleHide = <table> {\n }\n lEnableMouse = <table> {\n }\n hReputationWatchBar_Update = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnything.lua:765\n HideUsingWH = <table> {\n }\n CloseAllWindows = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnything.lua:699\n cats = <table> {\n }\n ScaleWH = <table> {\n }\n lLinkedScaling = <table> {\n }\n MoveOnlyWhenVisible = <table> {\n }\n hCreateFrame = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnything.lua:733\n lRunOnceBeforeInteract = <table> {\n }\n resetConfirm = \"\"\n lAllowedTypes = <table> {\n }\n frames = <table> {\n }\n FrameEditor = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnythingFrameEditor.lua:32\n DefaultFrameList = <table> {\n }\n lCreateBeforeInteract = <table> {\n }\n lDisallowedFrames = <table> {\n }\n lAllowedMAFrames = <table> {\n }\n CaptureBar_Create = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnything.lua:771\n NoUnanchorRelatives = <table> {\n }\n AchievementAlertFrame_GetAlertFrame = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnything.lua:793\n framesCount = 0\n guiLines = -1\n bagFrames = <table> {\n }\n NoHide = <table> {\n }\n ShowUIPanel = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnything.lua:748\n hPlayerTalentFrame_Toggle = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnything.lua:758\n nextFrameIdx = 1\n SCROLL_HEIGHT = 24\n HideUIPanel = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnything.lua:753\n framesIdx = <table> {\n }\n DDMPointList = <table> {\n }\n frameEditors = <table> {\n }\n moverNextId = 1\n HideList = <table> {\n }\n lTranslate = <table> {\n }\n lDelayedSync = <table> {\n }\n}\n(*temporary) = 4\n(*temporary) = BagFrame5 {\n 0 = <userdata>\n realID = 4\n}\n(*temporary) = \"attempt to call method 'SetBag' (a nil value)\"\n",
			["stack"] = "[string \"*:OnLoad\"]:41: in function <[string \"*:OnLoad\"]:1>",
			["session"] = 3211,
			["counter"] = 1,
		}, -- [8]
		{
			["message"] = "[string \"BankBagFrame1:OnLoad\"]:41: attempt to call method 'SetBag' (a nil value)",
			["time"] = "2022/08/19 16:26:07",
			["locals"] = "self = BankBagFrame1 {\n 0 = <userdata>\n realID = 5\n}\nx = -80\ny = 270\nCONTAINER_FRAME_TABLE = <table> {\n 0 = <table> {\n }\n 2 = <table> {\n }\n 4 = <table> {\n }\n 8 = <table> {\n }\n 16 = <table> {\n }\n 32 = <table> {\n }\n 9 = <table> {\n }\n 18 = <table> {\n }\n 36 = <table> {\n }\n 5 = <table> {\n }\n 10 = <table> {\n }\n 20 = <table> {\n }\n 40 = <table> {\n }\n 11 = <table> {\n }\n 22 = <table> {\n }\n 3 = <table> {\n }\n 6 = <table> {\n }\n 12 = <table> {\n }\n 24 = <table> {\n }\n 38 = <table> {\n }\n 13 = <table> {\n }\n 26 = <table> {\n }\n 34 = <table> {\n }\n 7 = <table> {\n }\n 14 = <table> {\n }\n 28 = <table> {\n }\n 30 = <table> {\n }\n 15 = <table> {\n }\n 1 = <table> {\n }\n}\n(*temporary) = nil\n(*temporary) = <table> {\n lRunAfterInteract = <table> {\n }\n framesUnsupported = <table> {\n }\n pendingActions = <table> {\n }\n DetachFromParent = <table> {\n }\n CreateFrameEditor = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnythingFrameEditor.lua:61\n ContainerFrame_GenerateFrame = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnything.lua:694\n ToggleFrameEditors = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnythingFrameEditor.lua:21\n moverPrefix = \"MAMover\"\n lRunBeforeInteract = <table> {\n }\n DDMStrataList = <table> {\n }\n lHideOnScale = <table> {\n }\n NoAlpha = <table> {\n }\n lTranslateSec = <table> {\n }\n pendingFrames = <table> {\n }\n NoMove = <table> {\n }\n NoReparent = <table> {\n }\n NoScale = <table> {\n }\n movers = <table> {\n }\n AchievementAlertFrame_OnLoad = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnything.lua:784\n defFrames = <table> {\n }\n NoUnanchoring = <table> {\n }\n lSimpleHide = <table> {\n }\n lEnableMouse = <table> {\n }\n hReputationWatchBar_Update = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnything.lua:765\n HideUsingWH = <table> {\n }\n CloseAllWindows = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnything.lua:699\n cats = <table> {\n }\n ScaleWH = <table> {\n }\n lLinkedScaling = <table> {\n }\n MoveOnlyWhenVisible = <table> {\n }\n hCreateFrame = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnything.lua:733\n lRunOnceBeforeInteract = <table> {\n }\n resetConfirm = \"\"\n lAllowedTypes = <table> {\n }\n frames = <table> {\n }\n FrameEditor = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnythingFrameEditor.lua:32\n DefaultFrameList = <table> {\n }\n lCreateBeforeInteract = <table> {\n }\n lDisallowedFrames = <table> {\n }\n lAllowedMAFrames = <table> {\n }\n CaptureBar_Create = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnything.lua:771\n NoUnanchorRelatives = <table> {\n }\n AchievementAlertFrame_GetAlertFrame = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnything.lua:793\n framesCount = 0\n guiLines = -1\n bagFrames = <table> {\n }\n NoHide = <table> {\n }\n ShowUIPanel = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnything.lua:748\n hPlayerTalentFrame_Toggle = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnything.lua:758\n nextFrameIdx = 1\n SCROLL_HEIGHT = 24\n HideUIPanel = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnything.lua:753\n framesIdx = <table> {\n }\n DDMPointList = <table> {\n }\n frameEditors = <table> {\n }\n moverNextId = 1\n HideList = <table> {\n }\n lTranslate = <table> {\n }\n lDelayedSync = <table> {\n }\n}\n(*temporary) = 5\n(*temporary) = BankBagFrame1 {\n 0 = <userdata>\n realID = 5\n}\n(*temporary) = \"attempt to call method 'SetBag' (a nil value)\"\n",
			["stack"] = "[string \"*:OnLoad\"]:41: in function <[string \"*:OnLoad\"]:1>",
			["session"] = 3211,
			["counter"] = 1,
		}, -- [9]
		{
			["message"] = "[string \"BankBagFrame2:OnLoad\"]:41: attempt to call method 'SetBag' (a nil value)",
			["time"] = "2022/08/19 16:26:07",
			["locals"] = "self = BankBagFrame2 {\n 0 = <userdata>\n realID = 6\n}\nx = -80\ny = 315\nCONTAINER_FRAME_TABLE = <table> {\n 0 = <table> {\n }\n 2 = <table> {\n }\n 4 = <table> {\n }\n 8 = <table> {\n }\n 16 = <table> {\n }\n 32 = <table> {\n }\n 9 = <table> {\n }\n 18 = <table> {\n }\n 36 = <table> {\n }\n 5 = <table> {\n }\n 10 = <table> {\n }\n 20 = <table> {\n }\n 40 = <table> {\n }\n 11 = <table> {\n }\n 22 = <table> {\n }\n 3 = <table> {\n }\n 6 = <table> {\n }\n 12 = <table> {\n }\n 24 = <table> {\n }\n 38 = <table> {\n }\n 13 = <table> {\n }\n 26 = <table> {\n }\n 34 = <table> {\n }\n 7 = <table> {\n }\n 14 = <table> {\n }\n 28 = <table> {\n }\n 30 = <table> {\n }\n 15 = <table> {\n }\n 1 = <table> {\n }\n}\n(*temporary) = nil\n(*temporary) = <table> {\n lRunAfterInteract = <table> {\n }\n framesUnsupported = <table> {\n }\n pendingActions = <table> {\n }\n DetachFromParent = <table> {\n }\n CreateFrameEditor = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnythingFrameEditor.lua:61\n ContainerFrame_GenerateFrame = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnything.lua:694\n ToggleFrameEditors = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnythingFrameEditor.lua:21\n moverPrefix = \"MAMover\"\n lRunBeforeInteract = <table> {\n }\n DDMStrataList = <table> {\n }\n lHideOnScale = <table> {\n }\n NoAlpha = <table> {\n }\n lTranslateSec = <table> {\n }\n pendingFrames = <table> {\n }\n NoMove = <table> {\n }\n NoReparent = <table> {\n }\n NoScale = <table> {\n }\n movers = <table> {\n }\n AchievementAlertFrame_OnLoad = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnything.lua:784\n defFrames = <table> {\n }\n NoUnanchoring = <table> {\n }\n lSimpleHide = <table> {\n }\n lEnableMouse = <table> {\n }\n hReputationWatchBar_Update = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnything.lua:765\n HideUsingWH = <table> {\n }\n CloseAllWindows = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnything.lua:699\n cats = <table> {\n }\n ScaleWH = <table> {\n }\n lLinkedScaling = <table> {\n }\n MoveOnlyWhenVisible = <table> {\n }\n hCreateFrame = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnything.lua:733\n lRunOnceBeforeInteract = <table> {\n }\n resetConfirm = \"\"\n lAllowedTypes = <table> {\n }\n frames = <table> {\n }\n FrameEditor = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnythingFrameEditor.lua:32\n DefaultFrameList = <table> {\n }\n lCreateBeforeInteract = <table> {\n }\n lDisallowedFrames = <table> {\n }\n lAllowedMAFrames = <table> {\n }\n CaptureBar_Create = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnything.lua:771\n NoUnanchorRelatives = <table> {\n }\n AchievementAlertFrame_GetAlertFrame = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnything.lua:793\n framesCount = 0\n guiLines = -1\n bagFrames = <table> {\n }\n NoHide = <table> {\n }\n ShowUIPanel = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnything.lua:748\n hPlayerTalentFrame_Toggle = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnything.lua:758\n nextFrameIdx = 1\n SCROLL_HEIGHT = 24\n HideUIPanel = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnything.lua:753\n framesIdx = <table> {\n }\n DDMPointList = <table> {\n }\n frameEditors = <table> {\n }\n moverNextId = 1\n HideList = <table> {\n }\n lTranslate = <table> {\n }\n lDelayedSync = <table> {\n }\n}\n(*temporary) = 6\n(*temporary) = BankBagFrame2 {\n 0 = <userdata>\n realID = 6\n}\n(*temporary) = \"attempt to call method 'SetBag' (a nil value)\"\n",
			["stack"] = "[string \"*:OnLoad\"]:41: in function <[string \"*:OnLoad\"]:1>",
			["session"] = 3211,
			["counter"] = 1,
		}, -- [10]
		{
			["message"] = "Frame MAOptionsClose: Unknown function MovAny_TooltipShow in element OnEnter",
			["session"] = 3211,
			["time"] = "2022/08/19 16:26:11",
			["counter"] = 1,
		}, -- [11]
		{
			["message"] = "Frame MAOptionsClose: Unknown function MovAny_TooltipHide in element OnLeave",
			["session"] = 3211,
			["time"] = "2022/08/19 16:26:11",
			["counter"] = 1,
		}, -- [12]
		{
			["message"] = "Frame MAOptionsOpenBlizzardOptions: Unknown function MovAny_TooltipShow in element OnEnter",
			["session"] = 3211,
			["time"] = "2022/08/19 16:26:11",
			["counter"] = 1,
		}, -- [13]
		{
			["message"] = "Frame MAOptionsOpenBlizzardOptions: Unknown function MovAny_TooltipHide in element OnLeave",
			["session"] = 3211,
			["time"] = "2022/08/19 16:26:11",
			["counter"] = 1,
		}, -- [14]
		{
			["message"] = "Frame MAOptionsSync: Unknown function MovAny_TooltipShow in element OnEnter",
			["session"] = 3211,
			["time"] = "2022/08/19 16:26:11",
			["counter"] = 1,
		}, -- [15]
		{
			["message"] = "Frame MAOptionsSync: Unknown function MovAny_TooltipHide in element OnLeave",
			["session"] = 3211,
			["time"] = "2022/08/19 16:26:11",
			["counter"] = 1,
		}, -- [16]
		{
			["message"] = "Frame MAOptionsToggleFrameStack: Unknown function MovAny_TooltipShow in element OnEnter",
			["session"] = 3211,
			["time"] = "2022/08/19 16:26:11",
			["counter"] = 1,
		}, -- [17]
		{
			["message"] = "Frame MAOptionsToggleFrameStack: Unknown function MovAny_TooltipHide in element OnLeave",
			["session"] = 3211,
			["time"] = "2022/08/19 16:26:11",
			["counter"] = 1,
		}, -- [18]
		{
			["message"] = "Frame MAOptionsToggleFrameEditors: Unknown function MovAny_TooltipShow in element OnEnter",
			["session"] = 3211,
			["time"] = "2022/08/19 16:26:11",
			["counter"] = 1,
		}, -- [19]
		{
			["message"] = "[string \"*:OnLoad\"]:2: attempt to call method 'IsModified' (a nil value)",
			["time"] = "2022/08/19 16:26:11",
			["locals"] = "(*temporary) = nil\n(*temporary) = <table> {\n lRunAfterInteract = <table> {\n }\n framesUnsupported = <table> {\n }\n pendingActions = <table> {\n }\n DetachFromParent = <table> {\n }\n CreateFrameEditor = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnythingFrameEditor.lua:61\n ContainerFrame_GenerateFrame = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnything.lua:694\n ToggleFrameEditors = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnythingFrameEditor.lua:21\n moverPrefix = \"MAMover\"\n lRunBeforeInteract = <table> {\n }\n DDMStrataList = <table> {\n }\n lHideOnScale = <table> {\n }\n NoAlpha = <table> {\n }\n lTranslateSec = <table> {\n }\n pendingFrames = <table> {\n }\n NoMove = <table> {\n }\n NoReparent = <table> {\n }\n NoScale = <table> {\n }\n movers = <table> {\n }\n AchievementAlertFrame_OnLoad = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnything.lua:784\n defFrames = <table> {\n }\n NoUnanchoring = <table> {\n }\n lSimpleHide = <table> {\n }\n lEnableMouse = <table> {\n }\n hReputationWatchBar_Update = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnything.lua:765\n HideUsingWH = <table> {\n }\n CloseAllWindows = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnything.lua:699\n cats = <table> {\n }\n ScaleWH = <table> {\n }\n lLinkedScaling = <table> {\n }\n MoveOnlyWhenVisible = <table> {\n }\n hCreateFrame = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnything.lua:733\n lRunOnceBeforeInteract = <table> {\n }\n resetConfirm = \"\"\n lAllowedTypes = <table> {\n }\n frames = <table> {\n }\n FrameEditor = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnythingFrameEditor.lua:32\n DefaultFrameList = <table> {\n }\n lCreateBeforeInteract = <table> {\n }\n lDisallowedFrames = <table> {\n }\n lAllowedMAFrames = <table> {\n }\n CaptureBar_Create = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnything.lua:771\n NoUnanchorRelatives = <table> {\n }\n AchievementAlertFrame_GetAlertFrame = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnything.lua:793\n framesCount = 0\n guiLines = -1\n bagFrames = <table> {\n }\n NoHide = <table> {\n }\n ShowUIPanel = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnything.lua:748\n hPlayerTalentFrame_Toggle = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnything.lua:758\n nextFrameIdx = 1\n SCROLL_HEIGHT = 24\n HideUIPanel = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnything.lua:753\n framesIdx = <table> {\n }\n DDMPointList = <table> {\n }\n frameEditors = <table> {\n }\n moverNextId = 1\n HideList = <table> {\n }\n lTranslate = <table> {\n }\n lDelayedSync = <table> {\n }\n}\n(*temporary) = \"PlayerDebuffsMover\"\n(*temporary) = \"attempt to call method 'IsModified' (a nil value)\"\nself = PlayerDebuffsMover {\n 0 = <userdata>\n OnMAPostReset = <function> defined *:OnLoad:31\n OnMAHook = <function> defined *:OnLoad:14\n}\n",
			["stack"] = "[string \"*:OnLoad\"]:2: in function <[string \"*:OnLoad\"]:1>\n[string \"=[C]\"]: in function `BuffFrame_Update'\n[string \"@Interface\\FrameXML\\PlayerFrame.lua\"]:340: in function `PlayerFrame_ToPlayerArt'\n[string \"@Interface\\FrameXML\\PlayerFrame.lua\"]:156: in function <Interface\\FrameXML\\PlayerFrame.lua:138>",
			["session"] = 3211,
			["counter"] = 3,
		}, -- [20]
		{
			["message"] = "[string \"StanceButtonsMover:Hide()\"]:1: attempt to index global 'StanceButtonsMover' (a nil value)",
			["time"] = "2022/08/19 16:33:32",
			["locals"] = "(*temporary) = nil\n(*temporary) = nil\n(*temporary) = \"attempt to index global 'StanceButtonsMover' (a nil value)\"\n",
			["stack"] = "[string \"StanceButtonsMover:Hide()\"]:1: in main chunk\n[string \"=[C]\"]: in function `RunScript'\n[string \"@Interface\\FrameXML\\ChatFrame.lua\"]:2196: in function `?'\n[string \"@Interface\\FrameXML\\ChatFrame.lua\"]:4933: in function `ChatEdit_ParseText'\n[string \"@Interface\\FrameXML\\ChatFrame.lua\"]:4596: in function `ChatEdit_SendText'\n[string \"@Interface\\FrameXML\\ChatFrame.lua\"]:4632: in function `ChatEdit_OnEnterPressed'\n[string \"*:OnEnterPressed\"]:1: in function <[string \"*:OnEnterPressed\"]:1>",
			["session"] = 3214,
			["counter"] = 2,
		}, -- [21]
		{
			["message"] = "Interface\\AddOns\\TextureScript\\TextureScript.lua:914: unexpected symbol near '“'",
			["time"] = "2022/08/19 17:01:18",
			["locals"] = "",
			["stack"] = "",
			["session"] = 3227,
			["counter"] = 12,
		}, -- [22]
		{
			["message"] = "Usage: MAIBuffFrameMover:SetPoint(\"point\" [, region or nil] [, \"relativePoint\"] [, offsetX, offsetY])",
			["time"] = "2022/08/19 17:38:47",
			["locals"] = "(*temporary) = MAIBuffFrameMover {\n 0 = <userdata>\n settingsbtn = settingsbtn {\n }\n hookedbuffs = true\n text = <unnamed> {\n }\n settingsmove = pnlsettingsmove {\n }\n element = <table> {\n }\n textmove = <unnamed> {\n }\n enchanthooked = true\n Think = <function> defined @Interface\\AddOns\\D4KiR MoveAndImprove\\core.lua:3336\n isMoving = false\n textcenter = <unnamed> {\n }\n frame = MAIBuffFrame {\n }\n SetPoint = <function> defined =[C]:-1\n texture = <unnamed> {\n }\n}\n",
			["stack"] = "[string \"=[C]\"]: ?\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: in function `SetPoint'\n[string \"@Interface\\AddOns\\D4KiR MoveAndImprove\\elements/buffframe.lua\"]:189: in function `MAIUpdateBuffs'\n[string \"@Interface\\AddOns\\D4KiR MoveAndImprove\\elements/buffframe.lua\"]:696: in function <...e\\AddOns\\D4KiR MoveAndImprove\\elements/buffframe.lua:690>",
			["session"] = 3249,
			["counter"] = 1,
		}, -- [23]
		{
			["message"] = "Usage: MAIDebuffFrameMover:SetPoint(\"point\" [, region or nil] [, \"relativePoint\"] [, offsetX, offsetY])",
			["time"] = "2022/08/19 17:38:51",
			["locals"] = "(*temporary) = MAIDebuffFrameMover {\n 0 = <userdata>\n settingsbtn = settingsbtn {\n }\n hookeddebuffs = true\n text = <unnamed> {\n }\n element = <table> {\n }\n textmove = <unnamed> {\n }\n settingsmove = pnlsettingsmove {\n }\n Think = <function> defined @Interface\\AddOns\\D4KiR MoveAndImprove\\core.lua:3336\n isMoving = false\n textcenter = <unnamed> {\n }\n frame = MAIDebuffFrame {\n }\n SetPoint = <function> defined =[C]:-1\n texture = <unnamed> {\n }\n}\n",
			["stack"] = "[string \"=[C]\"]: ?\n[string \"=[C]\"]: ?\n[string \"=[C]\"]: in function `SetPoint'\n[string \"@Interface\\AddOns\\D4KiR MoveAndImprove\\elements/buffframe.lua\"]:199: in function `MAIUpdateBuffs'\n[string \"@Interface\\AddOns\\D4KiR MoveAndImprove\\elements/buffframe.lua\"]:696: in function <...e\\AddOns\\D4KiR MoveAndImprove\\elements/buffframe.lua:690>",
			["session"] = 3249,
			["counter"] = 1,
		}, -- [24]
		{
			["message"] = "...ce\\AddOns\\D4KiR MoveAndImprove\\elements/fpsframe.lua:31: bad argument #1 to 'find' (string expected, got nil)",
			["time"] = "2022/08/19 17:40:12",
			["locals"] = "(*temporary) = nil\n(*temporary) = \"RIGHT\"\n(*temporary) = \"string expected, got nil\"\n",
			["stack"] = "[string \"=[C]\"]: in function `find'\n[string \"@Interface\\AddOns\\D4KiR MoveAndImprove\\elements/fpsframe.lua\"]:31: in function <...ce\\AddOns\\D4KiR MoveAndImprove\\elements/fpsframe.lua:15>",
			["session"] = 3253,
			["counter"] = 1,
		}, -- [25]
		{
			["message"] = "Interface\\AddOns\\ButtonForge\\EventManager.lua:87: Attempt to register unknown event \"CURSOR_UPDATE\"",
			["time"] = "2022/08/19 19:10:09",
			["locals"] = "(*temporary) = <unnamed> {\n 0 = <userdata>\n PromoteSpells = false\n TalentSwap = false\n RefreshSpells = false\n SetCVarCalled = <function> defined @Interface\\AddOns\\ButtonForge\\EventManager.lua:67\n}\n(*temporary) = \"CURSOR_UPDATE\"\n",
			["stack"] = "[string \"=[C]\"]: in function `RegisterEvent'\n[string \"@Interface\\AddOns\\ButtonForge\\EventManager.lua\"]:87: in main chunk",
			["session"] = 3296,
			["counter"] = 1,
		}, -- [26]
		{
			["message"] = "Interface\\AddOns\\ButtonForge\\UILibLayers.lua:10: attempt to index global 'BFEventFrames' (a nil value)",
			["time"] = "2022/08/19 19:14:15",
			["locals"] = "UILib = <table> {\n}\nUtil = <table> {\n}\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = \"attempt to index global 'BFEventFrames' (a nil value)\"\n",
			["stack"] = "[string \"@Interface\\AddOns\\ButtonForge\\UILibLayers.lua\"]:10: in main chunk",
			["session"] = 3297,
			["counter"] = 1,
		}, -- [27]
		{
			["message"] = "Interface\\AddOns\\ButtonForge\\UILibDragIcon.lua:11: attempt to index global 'BFEventFrames' (a nil value)",
			["time"] = "2022/08/19 19:14:15",
			["locals"] = "UILib = <table> {\n SetMask = <function> defined @Interface\\AddOns\\ButtonForge\\UILibClickMask.lua:27\n UnlockMask = <function> defined @Interface\\AddOns\\ButtonForge\\UILibClickMask.lua:68\n LockMask = <function> defined @Interface\\AddOns\\ButtonForge\\UILibClickMask.lua:63\n}\nUtil = <table> {\n}\nConst = <table> {\n BonusBarBackdrop = <table> {\n }\n BG = 6\n DestroyBarOverlayColor = <table> {\n }\n DoubleClickSpeed = 0.300000\n BarInset = 21\n ButtonNaming = \"ButtonForge\"\n ThresholdHSnapSq = 100\n MaxButtonsTotal = 5000\n IconDragOverlayColor = <table> {\n }\n ButtonSize = 36\n SlashNumLines = 4\n I2 = 42\n BarBackdrop = <table> {\n }\n ButtonSeq = 1\n MAX_ACCOUNT_MACROS = 120\n MiniIconSize = 16\n ButtonGap = 6\n LightBlue = \"ff0099DD\"\n SlashCommands = <table> {\n }\n DarkOrange = \"ffEE5500\"\n DarkBlue = \"ff2233DD\"\n GFrac = 0.142857\n ThresholdVSnapSq = 36\n BS = 36\n DisableAutoAlignAgainstDefaultBars = false\n CreateBarOverlayColor = <table> {\n }\n DefaultRows = 1\n I = 21\n MinScale = 0.200000\n ImagesDir = \"Interface\\AddOns\\ButtonForge\\Images\\\"\n DefaultCols = 4\n BarNaming = \"ButtonForge\"\n ThresholdHPressureSq = 400\n StealthSpellIds = <table> {\n }\n ThresholdVPressureSq = 144\n BSize = 42\n HLineThickness = 1\n KeyBindOverlayColor = <table> {\n }\n VLineThickness = 1\n MaxButtonsPerBar = 1500\n MiniIconGap = 2\n BarSeq = 1\n Version = 1\n BarEdge = 3.500000\n SUMMON_RANDOM_FAVORITE_MOUNT_SPELL = 150544\n WispSpellIds = <table> {\n }\n SUMMON_RANDOM_FAVORITE_MOUNT_ID = 268435455\n VersionMinor = 0.500000\n}\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = \"attempt to index global 'BFEventFrames' (a nil value)\"\n",
			["stack"] = "[string \"@Interface\\AddOns\\ButtonForge\\UILibDragIcon.lua\"]:11: in main chunk",
			["session"] = 3297,
			["counter"] = 1,
		}, -- [28]
		{
			["message"] = "Interface\\AddOns\\ButtonForge\\Util.lua:14: attempt to index global 'BFEventFrames' (a nil value)",
			["time"] = "2022/08/19 19:14:15",
			["locals"] = "Util = <table> {\n}\nConst = <table> {\n BonusBarBackdrop = <table> {\n }\n BG = 6\n DestroyBarOverlayColor = <table> {\n }\n DoubleClickSpeed = 0.300000\n BarInset = 21\n ButtonNaming = \"ButtonForge\"\n ThresholdHSnapSq = 100\n MaxButtonsTotal = 5000\n IconDragOverlayColor = <table> {\n }\n ButtonSize = 36\n SlashNumLines = 4\n I2 = 42\n BarBackdrop = <table> {\n }\n ButtonSeq = 1\n MAX_ACCOUNT_MACROS = 120\n MiniIconSize = 16\n ButtonGap = 6\n LightBlue = \"ff0099DD\"\n SlashCommands = <table> {\n }\n DarkOrange = \"ffEE5500\"\n DarkBlue = \"ff2233DD\"\n GFrac = 0.142857\n ThresholdVSnapSq = 36\n BS = 36\n DisableAutoAlignAgainstDefaultBars = false\n CreateBarOverlayColor = <table> {\n }\n DefaultRows = 1\n I = 21\n MinScale = 0.200000\n ImagesDir = \"Interface\\AddOns\\ButtonForge\\Images\\\"\n DefaultCols = 4\n BarNaming = \"ButtonForge\"\n ThresholdHPressureSq = 400\n StealthSpellIds = <table> {\n }\n ThresholdVPressureSq = 144\n BSize = 42\n HLineThickness = 1\n KeyBindOverlayColor = <table> {\n }\n VLineThickness = 1\n MaxButtonsPerBar = 1500\n MiniIconGap = 2\n BarSeq = 1\n Version = 1\n BarEdge = 3.500000\n SUMMON_RANDOM_FAVORITE_MOUNT_SPELL = 150544\n WispSpellIds = <table> {\n }\n SUMMON_RANDOM_FAVORITE_MOUNT_ID = 268435455\n VersionMinor = 0.500000\n}\nUILib = <table> {\n RefreshTooltip = <function> defined @Interface\\AddOns\\ButtonForge\\UILibCreateButton.lua:46\n OnEnter = <function> defined @Interface\\AddOns\\ButtonForge\\UILibCreateButton.lua:31\n LockMask = <function> defined @Interface\\AddOns\\ButtonForge\\UILibClickMask.lua:63\n HideHorizontalLine = <function> defined @Interface\\AddOns\\ButtonForge\\UILibLines.lua:42\n InputBox = <function> defined @Interface\\AddOns\\ButtonForge\\UILibInputBox.lua:19\n ShowVerticalLine = <function> defined @Interface\\AddOns\\ButtonForge\\UILibLines.lua:24\n ShowHorizontalLine = <function> defined @Interface\\AddOns\\ButtonForge\\UILibLines.lua:35\n HideVerticalLine = <function> defined @Interface\\AddOns\\ButtonForge\\UILibLines.lua:31\n RescaleLines = <function> defined @Interface\\AddOns\\ButtonForge\\UILibLines.lua:48\n SetMask = <function> defined @Interface\\AddOns\\ButtonForge\\UILibClickMask.lua:27\n CreateButton = <function> defined @Interface\\AddOns\\ButtonForge\\UILibCreateButton.lua:12\n UnlockMask = <function> defined @Interface\\AddOns\\ButtonForge\\UILibClickMask.lua:68\n OnLeave = <function> defined @Interface\\AddOns\\ButtonForge\\UILibCreateButton.lua:41\n}\nCustomAction = <table> {\n}\nButton = <table> {\n}\nBar = <table> {\n}\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = \"attempt to index global 'BFEventFrames' (a nil value)\"\n",
			["stack"] = "[string \"@Interface\\AddOns\\ButtonForge\\Util.lua\"]:14: in main chunk",
			["session"] = 3297,
			["counter"] = 1,
		}, -- [29]
		{
			["message"] = "Interface\\AddOns\\ButtonForge\\UILibToolbar.lua:11: attempt to index global 'BFEventFrames' (a nil value)",
			["time"] = "2022/08/19 19:14:15",
			["locals"] = "UILib = <table> {\n RefreshTooltip = <function> defined @Interface\\AddOns\\ButtonForge\\UILibCreateButton.lua:46\n OnEnter = <function> defined @Interface\\AddOns\\ButtonForge\\UILibCreateButton.lua:31\n LockMask = <function> defined @Interface\\AddOns\\ButtonForge\\UILibClickMask.lua:63\n HideHorizontalLine = <function> defined @Interface\\AddOns\\ButtonForge\\UILibLines.lua:42\n InputBox = <function> defined @Interface\\AddOns\\ButtonForge\\UILibInputBox.lua:19\n ShowVerticalLine = <function> defined @Interface\\AddOns\\ButtonForge\\UILibLines.lua:24\n ShowHorizontalLine = <function> defined @Interface\\AddOns\\ButtonForge\\UILibLines.lua:35\n HideVerticalLine = <function> defined @Interface\\AddOns\\ButtonForge\\UILibLines.lua:31\n RescaleLines = <function> defined @Interface\\AddOns\\ButtonForge\\UILibLines.lua:48\n SetMask = <function> defined @Interface\\AddOns\\ButtonForge\\UILibClickMask.lua:27\n CreateButton = <function> defined @Interface\\AddOns\\ButtonForge\\UILibCreateButton.lua:12\n UnlockMask = <function> defined @Interface\\AddOns\\ButtonForge\\UILibClickMask.lua:68\n OnLeave = <function> defined @Interface\\AddOns\\ButtonForge\\UILibCreateButton.lua:41\n}\nUtil = <table> {\n}\nConst = <table> {\n BonusBarBackdrop = <table> {\n }\n BG = 6\n DestroyBarOverlayColor = <table> {\n }\n DoubleClickSpeed = 0.300000\n BarInset = 21\n ButtonNaming = \"ButtonForge\"\n ThresholdHSnapSq = 100\n MaxButtonsTotal = 5000\n IconDragOverlayColor = <table> {\n }\n ButtonSize = 36\n SlashNumLines = 4\n I2 = 42\n BarBackdrop = <table> {\n }\n ButtonSeq = 1\n MAX_ACCOUNT_MACROS = 120\n MiniIconSize = 16\n ButtonGap = 6\n LightBlue = \"ff0099DD\"\n SlashCommands = <table> {\n }\n DarkOrange = \"ffEE5500\"\n DarkBlue = \"ff2233DD\"\n GFrac = 0.142857\n ThresholdVSnapSq = 36\n BS = 36\n DisableAutoAlignAgainstDefaultBars = false\n CreateBarOverlayColor = <table> {\n }\n DefaultRows = 1\n I = 21\n MinScale = 0.200000\n ImagesDir = \"Interface\\AddOns\\ButtonForge\\Images\\\"\n DefaultCols = 4\n BarNaming = \"ButtonForge\"\n ThresholdHPressureSq = 400\n StealthSpellIds = <table> {\n }\n ThresholdVPressureSq = 144\n BSize = 42\n HLineThickness = 1\n KeyBindOverlayColor = <table> {\n }\n VLineThickness = 1\n MaxButtonsPerBar = 1500\n MiniIconGap = 2\n BarSeq = 1\n Version = 1\n BarEdge = 3.500000\n SUMMON_RANDOM_FAVORITE_MOUNT_SPELL = 150544\n WispSpellIds = <table> {\n }\n SUMMON_RANDOM_FAVORITE_MOUNT_ID = 268435455\n VersionMinor = 0.500000\n}\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = \"attempt to index global 'BFEventFrames' (a nil value)\"\n",
			["stack"] = "[string \"@Interface\\AddOns\\ButtonForge\\UILibToolbar.lua\"]:11: in main chunk",
			["session"] = 3297,
			["counter"] = 1,
		}, -- [30]
		{
			["message"] = "[string \"BFToolbarCreateBar:OnLoad\"]:3: attempt to call field 'GetLocaleString' (a nil value)",
			["time"] = "2022/08/19 19:14:15",
			["locals"] = "self = BFToolbarCreateBar {\n 0 = <userdata>\n HotKey = BFToolbarCreateBarHotKey {\n }\n NewActionTexture = <unnamed> {\n }\n Border = BFToolbarCreateBarBorder {\n }\n Flash = BFToolbarCreateBarFlash {\n }\n icon = BFToolbarCreateBarIcon {\n }\n AutoCastable = <unnamed> {\n }\n SpellHighlightAnim = <unnamed> {\n }\n SpellHighlightTexture = <unnamed> {\n }\n NormalTexture = BFToolbarCreateBarNormalTexture {\n }\n FlyoutBorderShadow = BFToolbarCreateBarFlyoutBorderShadow {\n }\n FlyoutBorder = BFToolbarCreateBarFlyoutBorder {\n }\n Count = BFToolbarCreateBarCount {\n }\n AutoCastShine = BFToolbarCreateBarShine {\n }\n FlyoutArrow = BFToolbarCreateBarFlyoutArrow {\n }\n cooldown = BFToolbarCreateBarCooldown {\n }\n Name = BFToolbarCreateBarName {\n }\n}\n(*temporary) = nil\n(*temporary) = \"CreateBarTooltip\"\n(*temporary) = \"attempt to call field 'GetLocaleString' (a nil value)\"\n",
			["stack"] = "[string \"*:OnLoad\"]:3: in function <[string \"*:OnLoad\"]:1>",
			["session"] = 3297,
			["counter"] = 1,
		}, -- [31]
		{
			["message"] = "[string \"BFToolbarDestroyBar:OnLoad\"]:3: attempt to call field 'GetLocaleString' (a nil value)",
			["time"] = "2022/08/19 19:14:15",
			["locals"] = "self = BFToolbarDestroyBar {\n 0 = <userdata>\n HotKey = BFToolbarDestroyBarHotKey {\n }\n NewActionTexture = <unnamed> {\n }\n Border = BFToolbarDestroyBarBorder {\n }\n Flash = BFToolbarDestroyBarFlash {\n }\n icon = BFToolbarDestroyBarIcon {\n }\n AutoCastable = <unnamed> {\n }\n SpellHighlightAnim = <unnamed> {\n }\n SpellHighlightTexture = <unnamed> {\n }\n NormalTexture = BFToolbarDestroyBarNormalTexture {\n }\n FlyoutBorderShadow = BFToolbarDestroyBarFlyoutBorderShadow {\n }\n FlyoutBorder = BFToolbarDestroyBarFlyoutBorder {\n }\n Count = BFToolbarDestroyBarCount {\n }\n AutoCastShine = BFToolbarDestroyBarShine {\n }\n FlyoutArrow = BFToolbarDestroyBarFlyoutArrow {\n }\n cooldown = BFToolbarDestroyBarCooldown {\n }\n Name = BFToolbarDestroyBarName {\n }\n}\n(*temporary) = nil\n(*temporary) = \"DestroyBarTooltip\"\n(*temporary) = \"attempt to call field 'GetLocaleString' (a nil value)\"\n",
			["stack"] = "[string \"*:OnLoad\"]:3: in function <[string \"*:OnLoad\"]:1>",
			["session"] = 3297,
			["counter"] = 1,
		}, -- [32]
		{
			["message"] = "[string \"BFToolbarAdvanced:OnLoad\"]:3: attempt to call field 'GetLocaleString' (a nil value)",
			["time"] = "2022/08/19 19:14:15",
			["locals"] = "self = BFToolbarAdvanced {\n 0 = <userdata>\n HotKey = BFToolbarAdvancedHotKey {\n }\n NewActionTexture = <unnamed> {\n }\n Border = BFToolbarAdvancedBorder {\n }\n Flash = BFToolbarAdvancedFlash {\n }\n icon = BFToolbarAdvancedIcon {\n }\n AutoCastable = <unnamed> {\n }\n SpellHighlightAnim = <unnamed> {\n }\n SpellHighlightTexture = <unnamed> {\n }\n NormalTexture = BFToolbarAdvancedNormalTexture {\n }\n FlyoutBorderShadow = BFToolbarAdvancedFlyoutBorderShadow {\n }\n FlyoutBorder = BFToolbarAdvancedFlyoutBorder {\n }\n Count = BFToolbarAdvancedCount {\n }\n AutoCastShine = BFToolbarAdvancedShine {\n }\n FlyoutArrow = BFToolbarAdvancedFlyoutArrow {\n }\n cooldown = BFToolbarAdvancedCooldown {\n }\n Name = BFToolbarAdvancedName {\n }\n}\n(*temporary) = nil\n(*temporary) = \"AdvancedToolsTooltip\"\n(*temporary) = \"attempt to call field 'GetLocaleString' (a nil value)\"\n",
			["stack"] = "[string \"*:OnLoad\"]:3: in function <[string \"*:OnLoad\"]:1>",
			["session"] = 3297,
			["counter"] = 1,
		}, -- [33]
		{
			["message"] = "[string \"BFToolbarConfigureAction:OnLoad\"]:2: attempt to call field 'GetLocaleString' (a nil value)",
			["time"] = "2022/08/19 19:14:15",
			["locals"] = "self = BFToolbarConfigureAction {\n 0 = <userdata>\n HotKey = BFToolbarConfigureActionHotKey {\n }\n NewActionTexture = <unnamed> {\n }\n Border = BFToolbarConfigureActionBorder {\n }\n Flash = BFToolbarConfigureActionFlash {\n }\n icon = BFToolbarConfigureActionIcon {\n }\n AutoCastable = <unnamed> {\n }\n SpellHighlightAnim = <unnamed> {\n }\n SpellHighlightTexture = <unnamed> {\n }\n NormalTexture = BFToolbarConfigureActionNormalTexture {\n }\n FlyoutBorderShadow = BFToolbarConfigureActionFlyoutBorderShadow {\n }\n FlyoutBorder = BFToolbarConfigureActionFlyoutBorder {\n }\n Count = BFToolbarConfigureActionCount {\n }\n AutoCastShine = BFToolbarConfigureActionShine {\n }\n FlyoutArrow = BFToolbarConfigureActionFlyoutArrow {\n }\n cooldown = BFToolbarConfigureActionCooldown {\n }\n Name = BFToolbarConfigureActionName {\n }\n}\n(*temporary) = nil\n(*temporary) = \"ConfigureModePrimaryTooltip\"\n(*temporary) = \"attempt to call field 'GetLocaleString' (a nil value)\"\n",
			["stack"] = "[string \"*:OnLoad\"]:2: in function <[string \"*:OnLoad\"]:1>",
			["session"] = 3297,
			["counter"] = 1,
		}, -- [34]
		{
			["message"] = "[string \"BFToolbarRightClickSelfCast:OnLoad\"]:3: attempt to call field 'GetLocaleString' (a nil value)",
			["time"] = "2022/08/19 19:14:15",
			["locals"] = "self = BFToolbarRightClickSelfCast {\n 0 = <userdata>\n HotKey = BFToolbarRightClickSelfCastHotKey {\n }\n NewActionTexture = <unnamed> {\n }\n Border = BFToolbarRightClickSelfCastBorder {\n }\n Flash = BFToolbarRightClickSelfCastFlash {\n }\n icon = BFToolbarRightClickSelfCastIcon {\n }\n AutoCastable = <unnamed> {\n }\n SpellHighlightAnim = <unnamed> {\n }\n SpellHighlightTexture = <unnamed> {\n }\n NormalTexture = BFToolbarRightClickSelfCastNormalTexture {\n }\n FlyoutBorderShadow = BFToolbarRightClickSelfCastFlyoutBorderShadow {\n }\n FlyoutBorder = BFToolbarRightClickSelfCastFlyoutBorder {\n }\n Count = BFToolbarRightClickSelfCastCount {\n }\n AutoCastShine = BFToolbarRightClickSelfCastShine {\n }\n FlyoutArrow = BFToolbarRightClickSelfCastFlyoutArrow {\n }\n cooldown = BFToolbarRightClickSelfCastCooldown {\n }\n Name = BFToolbarRightClickSelfCastName {\n }\n}\n(*temporary) = nil\n(*temporary) = \"RightClickSelfCastTooltip\"\n(*temporary) = \"attempt to call field 'GetLocaleString' (a nil value)\"\n",
			["stack"] = "[string \"*:OnLoad\"]:3: in function <[string \"*:OnLoad\"]:1>",
			["session"] = 3297,
			["counter"] = 1,
		}, -- [35]
		{
			["message"] = "Interface\\AddOns\\ButtonForge\\EventManager.lua:478: '<eof>' expected near 'end'",
			["time"] = "2022/08/19 19:14:15",
			["locals"] = "",
			["stack"] = "",
			["session"] = 3297,
			["counter"] = 3,
		}, -- [36]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'ButtonForge' tried to call the protected function 'ActionButton9:Show()'.",
			["time"] = "2022/08/19 19:59:01",
			["locals"] = "InCombatSkipped",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `Show'\n[string \"@Interface\\FrameXML\\ActionButton.lua\"]:357: in function `ActionButton_Update'\n[string \"@Interface\\FrameXML\\ActionButton.lua\"]:694: in function `ActionButton_OnEvent'\n[string \"@Interface\\FrameXML\\ActionButton.lua\"]:207: in function <Interface\\FrameXML\\ActionButton.lua:204>",
			["session"] = 3299,
			["counter"] = 1,
		}, -- [37]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'LoseControl' tried to call the protected function 'CompactRaidFrame1:Show()'.",
			["time"] = "2022/08/19 20:26:51",
			["locals"] = "InCombatSkipped",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `Show'\n[string \"@Interface_Wrath\\FrameXML\\CompactUnitFrame.lua\"]:358: in function `CompactUnitFrame_UpdateVisible'\n[string \"@Interface_Wrath\\FrameXML\\CompactUnitFrame.lua\"]:291: in function <Interface_Wrath\\FrameXML\\CompactUnitFrame.lua:289>\n[string \"=[C]\"]: in function `CompactUnitFrame_UpdateAll'\n[string \"@Interface_Wrath\\FrameXML\\CompactUnitFrame.lua\"]:124: in function <Interface_Wrath\\FrameXML\\CompactUnitFrame.lua:53>",
			["session"] = 3314,
			["counter"] = 1,
		}, -- [38]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'LoseControl' tried to call the protected function 'CompactRaidFrameManagerContainerResizeFrame:Hide()'.",
			["time"] = "2022/08/20 12:14:44",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `Hide'\n[string \"@Interface_Wrath\\AddOns\\Blizzard_CompactRaidFrames\\Blizzard_CompactRaidFrameManager.lua\"]:570: in function `CompactRaidFrameManager_LockContainer'\n[string \"@Interface_Wrath\\AddOns\\Blizzard_CompactRaidFrames\\Blizzard_CompactRaidFrameManager.lua\"]:563: in function `CompactRaidFrameManager_UpdateContainerLockVisibility'\n[string \"@Interface_Wrath\\AddOns\\Blizzard_CompactRaidFrames\\Blizzard_CompactRaidFrameManager.lua\"]:56: in function <...mpactRaidFrames\\Blizzard_CompactRaidFrameManager.lua:49>",
			["session"] = 3331,
			["counter"] = 1,
		}, -- [39]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'ButtonForge' tried to call the protected function 'MultiBarBottomLeftButton3:Show()'.",
			["time"] = "2022/08/20 17:00:55",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `Show'\n[string \"@Interface\\FrameXML\\ActionButton.lua\"]:357: in function `ActionButton_Update'\n[string \"@Interface\\FrameXML\\ActionButton.lua\"]:694: in function `ActionButton_OnEvent'\n[string \"@Interface\\FrameXML\\ActionButton.lua\"]:207: in function <Interface\\FrameXML\\ActionButton.lua:204>",
			["session"] = 3332,
			["counter"] = 1,
		}, -- [40]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'ButtonForge' tried to call the protected function 'MultiBarRightButton8:Show()'.",
			["time"] = "2022/08/20 21:17:44",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `Show'\n[string \"@Interface\\FrameXML\\ActionButton.lua\"]:357: in function `ActionButton_Update'\n[string \"@Interface\\FrameXML\\ActionButton.lua\"]:694: in function `ActionButton_OnEvent'\n[string \"@Interface\\FrameXML\\ActionButton.lua\"]:207: in function <Interface\\FrameXML\\ActionButton.lua:204>",
			["session"] = 3334,
			["counter"] = 1,
		}, -- [41]
		{
			["message"] = "[string \"PlaySound(598127\"]:1: ')' expected near '<eof>'",
			["time"] = "2022/08/21 10:09:46",
			["locals"] = "(*temporary) = \"PlaySound(598127\"\n",
			["stack"] = "[string \"=[C]\"]: in function `RunScript'\n[string \"@Interface\\FrameXML\\ChatFrame.lua\"]:2196: in function `?'\n[string \"@Interface\\FrameXML\\ChatFrame.lua\"]:4933: in function `ChatEdit_ParseText'\n[string \"@Interface\\FrameXML\\ChatFrame.lua\"]:4596: in function `ChatEdit_SendText'\n[string \"@Interface\\FrameXML\\ChatFrame.lua\"]:4632: in function `ChatEdit_OnEnterPressed'\n[string \"*:OnEnterPressed\"]:1: in function <[string \"*:OnEnterPressed\"]:1>",
			["session"] = 3336,
			["counter"] = 1,
		}, -- [42]
		{
			["message"] = "[string \"playsoundfile(539024)\"]:1: attempt to call global 'playsoundfile' (a nil value)",
			["time"] = "2022/08/21 10:31:08",
			["locals"] = "(*temporary) = nil\n(*temporary) = 539024\n(*temporary) = \"attempt to call global 'playsoundfile' (a nil value)\"\n",
			["stack"] = "[string \"playsoundfile(539024)\"]:1: in main chunk\n[string \"=[C]\"]: in function `RunScript'\n[string \"@Interface\\FrameXML\\ChatFrame.lua\"]:2196: in function `?'\n[string \"@Interface\\FrameXML\\ChatFrame.lua\"]:4933: in function `ChatEdit_ParseText'\n[string \"@Interface\\FrameXML\\ChatFrame.lua\"]:4596: in function `ChatEdit_SendText'\n[string \"@Interface\\FrameXML\\ChatFrame.lua\"]:4632: in function `ChatEdit_OnEnterPressed'\n[string \"*:OnEnterPressed\"]:1: in function <[string \"*:OnEnterPressed\"]:1>",
			["session"] = 3336,
			["counter"] = 1,
		}, -- [43]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'ButtonForge' tried to call the protected function 'MultiBarBottomLeftButton9:Show()'.",
			["time"] = "2022/08/19 21:31:07",
			["locals"] = "InCombatSkipped",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `Show'\n[string \"@Interface\\FrameXML\\ActionButton.lua\"]:357: in function `ActionButton_Update'\n[string \"@Interface\\FrameXML\\ActionButton.lua\"]:694: in function `ActionButton_OnEvent'\n[string \"@Interface\\FrameXML\\ActionButton.lua\"]:207: in function <Interface\\FrameXML\\ActionButton.lua:204>",
			["session"] = 3337,
			["counter"] = 5,
		}, -- [44]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'ButtonForge' tried to call the protected function 'MultiBarBottomLeftButton2:Show()'.",
			["time"] = "2022/08/19 20:21:06",
			["locals"] = "InCombatSkipped",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `Show'\n[string \"@Interface\\FrameXML\\ActionButton.lua\"]:357: in function `ActionButton_Update'\n[string \"@Interface\\FrameXML\\ActionButton.lua\"]:694: in function `ActionButton_OnEvent'\n[string \"@Interface\\FrameXML\\ActionButton.lua\"]:207: in function <Interface\\FrameXML\\ActionButton.lua:204>",
			["session"] = 3341,
			["counter"] = 2,
		}, -- [45]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'BetterVendorPrice' tried to call the protected function 'CompactRaidFrame1:Show()'.",
			["time"] = "2022/08/21 12:41:09",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `Show'\n[string \"@Interface_Wrath\\FrameXML\\CompactUnitFrame.lua\"]:358: in function `CompactUnitFrame_UpdateVisible'\n[string \"@Interface_Wrath\\FrameXML\\CompactUnitFrame.lua\"]:291: in function <Interface_Wrath\\FrameXML\\CompactUnitFrame.lua:289>\n[string \"=[C]\"]: in function `CompactUnitFrame_UpdateAll'\n[string \"@Interface_Wrath\\FrameXML\\CompactUnitFrame.lua\"]:124: in function <Interface_Wrath\\FrameXML\\CompactUnitFrame.lua:53>",
			["session"] = 3341,
			["counter"] = 1,
		}, -- [46]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'TextureScript' tried to call the protected function 'PartyMemberFrame1:Show()'.",
			["time"] = "2022/08/21 13:35:54",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `Show'\n[string \"@Interface\\FrameXML\\PartyMemberFrame.lua\"]:150: in function `PartyMemberFrame_UpdateMember'\n[string \"@Interface\\FrameXML\\PartyMemberFrame.lua\"]:337: in function `PartyMemberFrame_OnEvent'\n[string \"*:OnEvent\"]:1: in function `OnEvent'\n[string \"@Interface\\FrameXML\\UnitFrame.lua\"]:740: in function <Interface\\FrameXML\\UnitFrame.lua:738>",
			["session"] = 3342,
			["counter"] = 1,
		}, -- [47]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'ButtonForge' tried to call the protected function 'MultiBarLeftButton5:Show()'.",
			["time"] = "2022/08/19 21:55:25",
			["locals"] = "InCombatSkipped",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `Show'\n[string \"@Interface\\FrameXML\\ActionButton.lua\"]:357: in function `ActionButton_Update'\n[string \"@Interface\\FrameXML\\ActionButton.lua\"]:694: in function `ActionButton_OnEvent'\n[string \"@Interface\\FrameXML\\ActionButton.lua\"]:207: in function <Interface\\FrameXML\\ActionButton.lua:204>",
			["session"] = 3343,
			["counter"] = 3,
		}, -- [48]
		{
			["message"] = "Interface\\AddOns\\Gladdy\\Gladdy-11.lua:239: bad argument #1 to 'pairs' (table expected, got nil)",
			["time"] = "2022/08/21 20:36:28",
			["locals"] = "(*temporary) = nil\n(*temporary) = \"table expected, got nil\"\n = <function> defined =[C]:-1\n",
			["stack"] = "[string \"=[C]\"]: ?\n[string \"@Interface\\AddOns\\Gladdy\\Gladdy-11.lua\"]:239: in function `DeleteUnknownOptions'\n[string \"@Interface\\AddOns\\Gladdy\\Gladdy-11.lua\"]:115: in function <Interface\\AddOns\\Gladdy\\Gladdy.lua:106>",
			["session"] = 3351,
			["counter"] = 3,
		}, -- [49]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'ButtonForge' tried to call the protected function 'MultiBarBottomLeftButton1:Show()'.",
			["time"] = "2022/08/22 18:13:55",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `Show'\n[string \"@Interface\\FrameXML\\ActionButton.lua\"]:357: in function `ActionButton_Update'\n[string \"@Interface\\FrameXML\\ActionButton.lua\"]:694: in function `ActionButton_OnEvent'\n[string \"@Interface\\FrameXML\\ActionButton.lua\"]:207: in function <Interface\\FrameXML\\ActionButton.lua:204>",
			["session"] = 3356,
			["counter"] = 1,
		}, -- [50]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'ButtonForge' tried to call the protected function 'MainMenuBarArtFrame:SetAttribute()'.",
			["time"] = "2022/08/20 11:21:20",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `SetAttribute'\n[string \"@Interface\\FrameXML\\ActionBarController.lua\"]:131: in function `ActionBarController_ResetToDefault'\n[string \"@Interface\\FrameXML\\ActionBarController.lua\"]:122: in function `ActionBarController_UpdateAll'\n[string \"@Interface\\FrameXML\\ActionBarController.lua\"]:54: in function <Interface\\FrameXML\\ActionBarController.lua:43>",
			["session"] = 3357,
			["counter"] = 2,
		}, -- [51]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'ButtonForge' tried to call the protected function 'MultiBarBottomRightButton3:Show()'.",
			["time"] = "2022/08/20 19:53:21",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `Show'\n[string \"@Interface\\FrameXML\\ActionButton.lua\"]:357: in function `ActionButton_Update'\n[string \"@Interface\\FrameXML\\ActionButton.lua\"]:694: in function `ActionButton_OnEvent'\n[string \"@Interface\\FrameXML\\ActionButton.lua\"]:207: in function <Interface\\FrameXML\\ActionButton.lua:204>",
			["session"] = 3358,
			["counter"] = 2,
		}, -- [52]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'ButtonForge' tried to call the protected function 'ActionButton8:Show()'.",
			["time"] = "2022/08/21 13:31:56",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `Show'\n[string \"@Interface\\FrameXML\\ActionButton.lua\"]:357: in function `ActionButton_Update'\n[string \"@Interface\\FrameXML\\ActionButton.lua\"]:694: in function `ActionButton_OnEvent'\n[string \"@Interface\\FrameXML\\ActionButton.lua\"]:207: in function <Interface\\FrameXML\\ActionButton.lua:204>",
			["session"] = 3360,
			["counter"] = 4,
		}, -- [53]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'ActionbarPlus' tried to call the protected function 'ActionbarPlusF1:SetWidth()'.",
			["time"] = "2022/08/24 12:04:28",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `SetWidth'\n[string \"@Interface\\AddOns\\ActionbarPlus\\Core\\AddonLib\\Widget\\Buttons\\ButtonFrameFactory.lua\"]:286: in function `SetFrameDimensions'\n[string \"@Interface\\AddOns\\ActionbarPlus\\Core\\AddonLib\\Widget\\Buttons\\ButtonFrameFactory.lua\"]:262: in function `RefreshActionbarFrame'\n[string \"@Interface\\AddOns\\ActionbarPlus\\Core\\AddonLib\\Widget\\Buttons\\ButtonFactory.lua\"]:152: in function `RefreshActionbar'\n[string \"@Interface\\AddOns\\ActionbarPlus\\Core\\AddonLib\\Common\\Config.lua\"]:93: in function <...AddOns\\ActionbarPlus\\Core\\AddonLib\\Common\\Config.lua:90>\n[string \"=[C]\"]: ?\n[string \"@Interface\\AddOns\\ActionbarPlus\\Core\\ExtLib\\Ace3\\AceConfig-3.0-3\\AceConfigDialog-3.0\\AceConfigDialog-3.0-82.lua\"]:51: in function <...nfig-3.0\\AceConfigDialog-3.0\\AceConfigDialog-3.0.lua:49>\n[string \"@Interface\\AddOns\\ActionbarPlus\\Core\\ExtLib\\Ace3\\AceConfig-3.0-3\\AceConfigDialog-3.0\\AceConfigDialog-3.0-82.lua\"]:847: in function <...nfig-3.0\\AceConfigDialog-3.0\\AceConfigDialog-3.0.lua:668>\n[string \"@Interface\\AddOns\\ActionbarPlus\\Core\\ExtLib\\Ace3\\AceConfig-3.0-3\\AceConfigDialog-3.0\\AceConfigDialog-3.0-82.lua\"]:899: in function <...nfig-3.0\\AceConfigDialog-3.0\\AceConfigDialog-3.0.lua:887>\n[string \"=[C]\"]: ?\n[string \"@Interface\\AddOns\\ActionbarPlus\\Core\\ExtLib\\Ace3\\AceGUI-3.0\\AceGUI-3.0-41.lua\"]:72: in function <...onbarPlus\\Core\\ExtLib\\Ace3\\AceGUI-3.0\\AceGUI-3.0.lua:70>\n[string \"@Interface\\AddOns\\ActionbarPlus\\Core\\ExtLib\\Ace3\\AceGUI-3.0\\AceGUI-3.0-41.lua\"]:306: in function `Fire'\n[string \"@Interface\\AddOns\\ActionbarPlus\\Core\\ExtLib\\Ace3\\AceGUI-3.0-41\\widgets\\AceGUIWidget-Slider.lua\"]:69: in function <...tLib\\Ace3\\AceGUI-3.0\\widgets\\AceGUIWidget-Slider.lua:60>",
			["session"] = 3363,
			["counter"] = 1,
		}, -- [54]
		{
			["message"] = "[ADDON_ACTION_FORBIDDEN] AddOn 'LoseControl' tried to call the protected function 'GuildControlSetRank()'.",
			["time"] = "2022/08/18 20:05:56",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `GuildControlSetRank'\n[string \"@Interface_Wrath\\FrameXML\\FriendsFrame_Wrath.lua\"]:487: in function `GuildControlPopupFrameDropDownButton_ClickedRank'\n[string \"@Interface_Wrath\\FrameXML\\FriendsFrame_Wrath.lua\"]:239: in function `GuildControlPopupFrame_Initialize'\n[string \"@Interface_Wrath\\FrameXML\\FriendsFrame_Wrath.lua\"]:156: in function `FriendsFrame_OnEvent'\n[string \"*:OnEvent\"]:1: in function <[string \"*:OnEvent\"]:1>",
			["session"] = 3378,
			["counter"] = 3,
		}, -- [55]
		{
			["message"] = "...\\Core\\AddonLib\\Widget\\Buttons\\ButtonFrameFactory.lua:271: attempt to index field '?' (a nil value)",
			["time"] = "2022/08/24 19:27:13",
			["stack"] = "[string \"@Interface\\AddOns\\ActionbarPlus\\Core\\AddonLib\\Widget\\Buttons\\ButtonFrameFactory.lua\"]:271: in function `RefreshActionbarFrame'\n[string \"@Interface\\AddOns\\ActionbarPlus\\Core\\AddonLib\\Widget\\Buttons\\ButtonFactory.lua\"]:152: in function `RefreshActionbar'\n[string \"@Interface\\AddOns\\ActionbarPlus\\Core\\AddonLib\\Common\\Config.lua\"]:93: in function <...AddOns\\ActionbarPlus\\Core\\AddonLib\\Common\\Config.lua:90>\n[string \"=[C]\"]: ?\n[string \"@Interface\\AddOns\\ActionbarPlus\\Core\\ExtLib\\Ace3\\AceConfig-3.0-3\\AceConfigDialog-3.0\\AceConfigDialog-3.0-82.lua\"]:51: in function <...nfig-3.0\\AceConfigDialog-3.0\\AceConfigDialog-3.0.lua:49>\n[string \"@Interface\\AddOns\\ActionbarPlus\\Core\\ExtLib\\Ace3\\AceConfig-3.0-3\\AceConfigDialog-3.0\\AceConfigDialog-3.0-82.lua\"]:847: in function <...nfig-3.0\\AceConfigDialog-3.0\\AceConfigDialog-3.0.lua:668>\n[string \"@Interface\\AddOns\\ActionbarPlus\\Core\\ExtLib\\Ace3\\AceConfig-3.0-3\\AceConfigDialog-3.0\\AceConfigDialog-3.0-82.lua\"]:899: in function <...nfig-3.0\\AceConfigDialog-3.0\\AceConfigDialog-3.0.lua:887>\n[string \"=[C]\"]: ?\n[string \"@Interface\\AddOns\\ActionbarPlus\\Core\\ExtLib\\Ace3\\AceGUI-3.0\\AceGUI-3.0-41.lua\"]:72: in function <...onbarPlus\\Core\\ExtLib\\Ace3\\AceGUI-3.0\\AceGUI-3.0.lua:70>\n[string \"@Interface\\AddOns\\ActionbarPlus\\Core\\ExtLib\\Ace3\\AceGUI-3.0\\AceGUI-3.0-41.lua\"]:306: in function `Fire'\n[string \"@Interface\\AddOns\\ActionbarPlus\\Core\\ExtLib\\Ace3\\AceGUI-3.0-41\\widgets\\AceGUIWidget-Slider.lua\"]:69: in function <...tLib\\Ace3\\AceGUI-3.0\\widgets\\AceGUIWidget-Slider.lua:60>",
			["session"] = 3384,
			["counter"] = 10,
		}, -- [56]
		{
			["message"] = "[ADDON_ACTION_FORBIDDEN] AddOn 'Gladdy' tried to call the protected function 'FocusUnit()'.",
			["time"] = "2022/08/24 19:32:22",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `FocusUnit'\n[string \"@Interface\\FrameXML\\SecureTemplates.lua\"]:492: in function `handler'\n[string \"@Interface\\FrameXML\\SecureTemplates.lua\"]:625: in function <Interface\\FrameXML\\SecureTemplates.lua:569>",
			["session"] = 3387,
			["counter"] = 1,
		}, -- [57]
		{
			["message"] = "Interface\\AddOns\\Gladdy\\EventListener.lua:399: attempt to index field '?' (a nil value)",
			["time"] = "2022/08/19 21:57:34",
			["locals"] = "self = <unnamed> {\n 0 = <userdata>\n defaults = <table> {\n }\n messages = <table> {\n }\n RegisterMessage = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:196\n UnregisterMessage = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:200\n UNIT_SPELLCAST_START = <function> defined @Interface\\AddOns\\Gladdy\\EventListener.lua:351\n UNIT_SPELLCAST_CHANNEL_START = <function> defined @Interface\\AddOns\\Gladdy\\EventListener.lua:360\n RegisterMessages = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:190\n priority = 101\n ARENA_OPPONENT_UPDATE = <function> defined @Interface\\AddOns\\Gladdy\\EventListener.lua:201\n Test = <function> defined @Interface\\AddOns\\Gladdy\\EventListener.lua:434\n COMBAT_LOG_EVENT_UNFILTERED = <function> defined @Interface\\AddOns\\Gladdy\\EventListener.lua:110\n DetectSpec = <function> defined @Interface\\AddOns\\Gladdy\\EventListener.lua:411\n UnregisterAllMessages = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:210\n UNIT_SPELLCAST_SUCCEEDED = <function> defined @Interface\\AddOns\\Gladdy\\EventListener.lua:369\n OnEvent = <function> defined @Interface\\AddOns\\Gladdy\\EventListener.lua:28\n UpdateAuras = <function> defined @Interface\\AddOns\\Gladdy\\EventListener.lua:341\n JOINED_ARENA = <function> defined @Interface\\AddOns\\Gladdy\\EventListener.lua:32\n name = \"EventListener\"\n Initialize = <function> defined @Interface\\AddOns\\Gladdy\\EventListener.lua:24\n UnregisterMessages = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:204\n UNIT_AURA = <function> defined @Interface\\AddOns\\Gladdy\\EventListener.lua:269\n GetOptions = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:216\n Reset = <function> defined @Interface\\AddOns\\Gladdy\\EventListener.lua:54\n}\nunit = \"arena1\"\ncastGUID = \"Cast-3-4615-617-7095-47982-00077FEB2C\"\nspellID = 47982\nunitRace = \"Scourge\"\nspellName = \"Blood Pact\"\nunitClass = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = <table> {\n HUNTER = <table> {\n }\n WARRIOR = <table> {\n }\n NightElf = <table> {\n }\n SHAMAN = <table> {\n }\n MAGE = <table> {\n }\n Orc = <table> {\n }\n Troll = <table> {\n }\n DRUID = <table> {\n }\n DEATHKNIGHT = <table> {\n }\n Scourge = <table> {\n }\n Gnome = <table> {\n }\n PRIEST = <table> {\n }\n Dwarf = <table> {\n }\n BloodElf = <table> {\n }\n WARLOCK = <table> {\n }\n Tauren = <table> {\n }\n Draenei = <table> {\n }\n Human = <table> {\n }\n ROGUE = <table> {\n }\n PALADIN = <table> {\n }\n}\n(*temporary) = 0\n(*temporary) = 0\n(*temporary) = 20\n(*temporary) = 47982\n(*temporary) = true\n(*temporary) = \"attempt to index field '?' (a nil value)\"\nGladdy = <table> {\n defaults = <table> {\n }\n anchor = GladdyAnchor {\n }\n DeepCopy = <function> defined @Interface\\AddOns\\Gladdy\\Util.lua:200\n GetSpecSpells = <function> defined @Interface\\AddOns\\Gladdy\\Constants_Wrath.lua:185\n options = <table> {\n }\n modules = <table> {\n }\n CancelTimer = <function> defined @Interface\\AddOns\\Gladdy\\libs\\AceTimer-3.0\\AceTimer-3.0.lua:147\n curUnit = 1\n LegacyPositioning = <function> defined @Interface\\AddOns\\Gladdy\\Frame.lua:479\n UnregisterComm = <function> defined @Interface\\AddOns\\BigDebuffs\\Libs\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:153\n TIMER_FORMAT = <table> {\n }\n FormatTimer = <function> defined @Interface\\AddOns\\Gladdy\\Options.lua:22\n GetKnallProfile = <function> defined @Interface\\AddOns\\Gladdy\\ImportStrings.lua:15\n ResetUnit = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:489\n specSpells = <table> {\n }\n debug = false\n specBuffs = <table> {\n }\n spellTextures = <table> {\n }\n GetPvpTrinkets = <function> defined @Interface\\AddOns\\Gladdy\\Constants_shared.lua:318\n RACES = <table> {\n }\n OnProfileReset = <function> defined @Interface\\AddOns\\Gladdy\\Gladdy.lua:322\n GetTotemData = <function> defined @Interface\\AddOns\\Gladdy\\Constants_Wrath.lua:1123\n GetKlimpProfile = <function> defined @Interface\\AddOns\\Gladdy\\ImportStrings.lua:3\n LSM = <table> {\n }\n GetClassicProfile = <function> defined @Interface\\AddOns\\Gladdy\\ImportStrings.lua:7\n db = <table> {\n }\n dbi = <table> {\n }\n ScheduleTimer = <function> defined @Interface\\AddOns\\Gladdy\\libs\\AceTimer-3.0\\AceTimer-3.0.lua:94\n SetupOptions = <function> defined @In",
			["stack"] = "[string \"@Interface\\AddOns\\Gladdy\\EventListener.lua\"]:399: in function `?'\n[string \"@Interface\\AddOns\\Gladdy\\EventListener.lua\"]:29: in function <Interface\\AddOns\\Gladdy\\EventListener.lua:28>",
			["session"] = 3396,
			["counter"] = 85,
		}, -- [58]
		{
			["message"] = "Interface\\AddOns\\TextureScript\\TextureScript.lua:1154: Cannot find a library instance of \"Gladdy\".",
			["time"] = "2022/08/28 11:28:36",
			["locals"] = "(*temporary) = \"Cannot find a library instance of \"Gladdy\".\"\n",
			["stack"] = "[string \"=[C]\"]: in function `error'\n[string \"@Interface\\AddOns\\ActionbarPlus\\Core\\ExtLib\\Ace3\\LibStub\\LibStub.lua\"]:23: in function `LibStub'\n[string \"@Interface\\AddOns\\TextureScript\\TextureScript.lua\"]:1154: in main chunk",
			["session"] = 3402,
			["counter"] = 1,
		}, -- [59]
		{
			["message"] = "(null)",
			["time"] = "2022/08/19 19:10:10",
			["session"] = 3402,
			["counter"] = 14,
		}, -- [60]
		{
			["message"] = "...terface\\AddOns\\ArenaTeamTracker\\ArenaTeamTracker-v7.45 TBC Classic.lua:536: attempt to index field '?' (a nil value)",
			["time"] = "2022/08/19 18:51:31",
			["locals"] = "self = ATT {\n 0 = <userdata>\n LoadPositions = <function> defined @Interface\\AddOns\\ArenaTeamTracker\\ArenaTeamTracker.lua:261\n AddIcon = <function> defined @Interface\\AddOns\\ArenaTeamTracker\\ArenaTeamTracker.lua:414\n StopAllIcons = <function> defined @Interface\\AddOns\\ArenaTeamTracker\\ArenaTeamTracker.lua:936\n PLAYER_ENTERING_WORLD = <function> defined @Interface\\AddOns\\ArenaTeamTracker\\ArenaTeamTracker.lua:697\n FindAbilityByName = <function> defined @Interface\\AddOns\\ArenaTeamTracker\\ArenaTeamTracker.lua:707\n TrackCooldown = <function> defined @Interface\\AddOns\\ArenaTeamTracker\\ArenaTeamTracker.lua:759\n FormatAbility = <function> defined @Interface\\AddOns\\ArenaTeamTracker\\ArenaTeamTracker.lua:1047\n ToggleIconDisplay = <function> defined @Interface\\AddOns\\ArenaTeamTracker\\ArenaTeamTracker.lua:575\n FindCompactRaidFrameByUnit = <function> defined @Interface\\AddOns\\ArenaTeamTracker\\ArenaTeamTracker.lua:228\n SavePositions = <function> defined @Interface\\AddOns\\ArenaTeamTracker\\ArenaTeamTracker.lua:205\n UNIT_SPELLCAST_SUCCEEDED = <function> defined @Interface\\AddOns\\ArenaTeamTracker\\ArenaTeamTracker.lua:855\n UpdateAnchor = <function> defined @Interface\\AddOns\\ArenaTeamTracker\\ArenaTeamTracker.lua:459\n UpdateAnchors = <function> defined @Interface\\AddOns\\ArenaTeamTracker\\ArenaTeamTracker.lua:634\n useCrossAddonCommunication = true\n UpdateIcons = <function> defined @Interface\\AddOns\\ArenaTeamTracker\\ArenaTeamTracker.lua:656\n IconGlow = <function> defined @Interface\\AddOns\\ArenaTeamTracker\\ArenaTeamTracker.lua:792\n ApplyAnchorSettings = <function> defined @Interface\\AddOns\\ArenaTeamTracker\\ArenaTeamTracker.lua:667\n RequestSync = <function> defined @Interface\\AddOns\\ArenaTeamTracker\\ArenaTeamTracker.lua:944\n CreateAbilityEditor = <function> defined @Interface\\AddOns\\ArenaTeamTracker\\ArenaTeamTracker.lua:1524\n ValidUnit = <function> defined @Interface\\AddOns\\ArenaTeamTracker\\ArenaTeamTracker.lua:725\n GetSpecByUnit = <function> defined @Interface\\AddOns\\ArenaTeamTracker\\ArenaTeamTracker.lua:198\n GROUP_ROSTER_UPDATE = <function> defined @Interface\\AddOns\\ArenaTeamTracker\\ArenaTeamTracker.lua:691\n scrollframe = ATTScrollFrameChild {\n }\n FindAbilityIcon = <function> defined @Interface\\AddOns\\ArenaTeamTracker\\ArenaTeamTracker.lua:1022\n CreateAnchors = <function> defined @Interface\\AddOns\\ArenaTeamTracker\\ArenaTeamTracker.lua:288\n btns = <table> {\n }\n panel = Arena Team Tracker_Panel {\n }\n UpdateScrollBar = <function> defined @Interface\\AddOns\\ArenaTeamTracker\\ArenaTeamTracker.lua:1480\n CreateOptions = <function> defined @Interface\\AddOns\\ArenaTeamTracker\\ArenaTeamTracker.lua:1091\n COMBAT_LOG_EVENT_UNFILTERED = <function> defined @Interface\\AddOns\\ArenaTeamTracker\\ArenaTeamTracker.lua:863\n FindAbilityID = <function> defined @Interface\\AddOns\\ArenaTeamTracker\\ArenaTeamTracker.lua:1032\n StartCooldown = <function> defined @Interface\\AddOns\\ArenaTeamTracker\\ArenaTeamTracker.lua:733\n ToggleAnchorDisplay = <function> defined @Interface\\AddOns\\ArenaTeamTracker\\ArenaTeamTracker.lua:431\n CHAT_MSG_ADDON = <function> defined @Interface\\AddOns\\ArenaTeamTracker\\ArenaTeamTracker.lua:950\n RaidInfo = <function> defined @Interface\\AddOns\\ArenaTeamTracker\\ArenaTeamTracker.lua:219\n Schedule = <function> defined @Interface\\AddOns\\ArenaTeamTracker\\ArenaTeamTracker.lua:882\n ApplyIconTextureBorder = <function> defined @Interface\\AddOns\\ArenaTeamTracker\\ArenaTeamTracker.lua:422\n GetSpecByGUID = <function> defined @Interface\\AddOns\\ArenaTeamTracker\\ArenaTeamTracker.lua:194\n GetUnitByGUID = <function> defined @Interface\\AddOns\\ArenaTeamTracker\\ArenaTeamTracker.lua:717\n ARENA_COOLDOWNS_UPDATE = <function> defined @Interface\\AddOns\\ArenaTeamTracker\\ArenaTeamTracker.lua:843\n TrinketCheck = <function> defined @Interface\\AddOns\\ArenaTeamTracker\\ArenaTeamTracker.lua:620\n FindUnitByGUID = <function> defined @Interface\\AddOns\\ArenaTeamTracker\\ArenaTeamTracker.lua:184\n}\nunit = \"party1\"\ni = 1\nPvPTrinket = <table> {\n ability = \"PvP Trinket\"\n cooldown = 120\n id = 42292\n}\nTraceID = 133452\ntcooldown = nil\n_ = \"Death Knight\"\nclass = \"DEATHKNIGHT\"\nguid = \"Player-4618-0026649B\"\na",
			["stack"] = "[string \"@Interface\\AddOns\\ArenaTeamTracker\\ArenaTeamTracker-v7.45 TBC Classic.lua\"]:536: in function `UpdateAnchor'\n[string \"@Interface\\AddOns\\ArenaTeamTracker\\ArenaTeamTracker-v7.45 TBC Classic.lua\"]:631: in function `TrinketCheck'\n[string \"@Interface\\AddOns\\ArenaTeamTracker\\ArenaTeamTracker-v7.45 TBC Classic.lua\"]:649: in function `UpdateAnchors'\n[string \"@Interface\\AddOns\\ArenaTeamTracker\\ArenaTeamTracker-v7.45 TBC Classic.lua\"]:694: in function `?'\n[string \"@Interface\\AddOns\\ArenaTeamTracker\\ArenaTeamTracker-v7.45 TBC Classic.lua\"]:987: in function <...terface\\AddOns\\ArenaTeamTracker\\ArenaTeamTracker.lua:985>",
			["session"] = 3447,
			["counter"] = 19,
		}, -- [61]
		{
			["message"] = "...TBC\\AddOns\\Blizzard_AuctionUI\\Blizzard_AuctionUI.lua:751: attempt to index local 'color' (a nil value)",
			["time"] = "2022/08/31 15:04:03",
			["locals"] = "numBatchAuctions = 50\ntotalAuctions = 176\nbutton = BrowseButton1 {\n 0 = <userdata>\n itemCount = 1\n bidAmount = 132990\n buyoutPrice = 139990\n itemIndex = 6\n PriceTooltipFrame = <unnamed> {\n }\n}\nbuttonName = \"BrowseButton1\"\nbuttonHighlight = BrowseButton1Highlight {\n 0 = <userdata>\n}\niconTexture = nil\nitemName = BrowseButton1Name {\n 0 = <userdata>\n}\ncolor = nil\nitemCount = nil\nmoneyFrame = nil\nyourBidText = nil\nbuyoutFrame = nil\nbuyoutMoney = nil\noffset = 5\nindex = 6\nisLastSlotEmpty = nil\nname = \"\"\ntexture = 134822\ncount = 1\nquality = -1\ncanUse = false\nlevel = -1000747008\nlevelColHeader = nil\nminBid = 725\nminIncrement = 0\nbuyoutPrice = 725\nduration = 3\nbidAmount = 0\nhighBidder = false\nbidderFullName = nil\nowner = nil\nownerFullName = nil\nsaleStatus = 0\nitemId = 2458\nhasAllInfo = true\ndisplayedPrice = nil\nrequiredBid = nil\n(for index) = 1\n(for limit) = 8\n(for step) = 1\ni = 1\nshouldHide = false\n(*temporary) = <function> defined =[C]:-1\n(*temporary) = BrowseButton1Name {\n 0 = <userdata>\n}\n(*temporary) = \"\"\n(*temporary) = <userdata>\n(*temporary) = false\n(*temporary) = -1000747008\n(*temporary) = nil\n(*temporary) = 725\n(*temporary) = 0\n(*temporary) = 725\n(*temporary) = 0\n(*temporary) = false\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = 0\n(*temporary) = 2458\n(*temporary) = true\n(*temporary) = \"attempt to index local 'color' (a nil value)\"\n",
			["stack"] = "[string \"@Interface_TBC\\AddOns\\Blizzard_AuctionUI\\Blizzard_AuctionUI.lua\"]:751: in function `updateFunction'\n[string \"@Interface\\SharedXML\\SecureUIPanelTemplates.lua\"]:332: in function `FauxScrollFrame_OnVerticalScroll'\n[string \"*:OnVerticalScroll\"]:1: in function <[string \"*:OnVerticalScroll\"]:1>\n[string \"=[C]\"]: in function `SetVerticalScroll'\n[string \"@Interface\\SharedXML\\SecureUIPanelTemplates.lua\"]:64: in function <Interface\\SharedXML\\SecureUIPanelTemplates.lua:63>\n[string \"=[C]\"]: in function `SetValue'\n[string \"@Interface\\SharedXML\\SecureUIPanelTemplates.lua\"]:329: in function `FauxScrollFrame_OnVerticalScroll'\n[string \"*:OnVerticalScroll\"]:1: in function <[string \"*:OnVerticalScroll\"]:1>\n[string \"=[C]\"]: in function `SetVerticalScroll'\n[string \"@Interface\\SharedXML\\SecureUIPanelTemplates.lua\"]:64: in function <Interface\\SharedXML\\SecureUIPanelTemplates.lua:63>",
			["session"] = 3472,
			["counter"] = 2,
		}, -- [62]
		{
			["message"] = "...ace\\AddOns\\Doom_CooldownPulse\\Doom_CooldownPulse.lua:99: bad argument #2 to 'strsplit' (string expected, got nil)",
			["time"] = "2022/08/31 15:18:08",
			["locals"] = "(*temporary) = \",\"\n(*temporary) = nil\n(*temporary) = \"string expected, got nil\"\n",
			["stack"] = "[string \"=[C]\"]: in function `strsplit'\n[string \"@Interface\\AddOns\\Doom_CooldownPulse\\Doom_CooldownPulse.lua\"]:99: in function <...ace\\AddOns\\Doom_CooldownPulse\\Doom_CooldownPulse.lua:88>\n[string \"@Interface\\AddOns\\Doom_CooldownPulse\\Doom_CooldownPulse.lua\"]:244: in function `?'\n[string \"@Interface\\AddOns\\Doom_CooldownPulse\\Doom_CooldownPulse.lua\"]:24: in function <...ace\\AddOns\\Doom_CooldownPulse\\Doom_CooldownPulse.lua:24>",
			["session"] = 3474,
			["counter"] = 1,
		}, -- [63]
		{
			["message"] = "...nfig-3.0\\AceConfigDialog-3.0\\AceConfigDialog-3.0-82.lua:1508: Usage: AceConfigDialogTooltip:SetText(\"text\" [, color, wrap])",
			["time"] = "2022/08/20 13:24:54",
			["stack"] = "[string \"=[C]\"]: in function `SetText'\n[string \"@Interface\\AddOns\\BigDebuffs\\Libs\\AceConfig-3.0-3\\AceConfigDialog-3.0\\AceConfigDialog-3.0-82.lua\"]:1508: in function <...nfig-3.0\\AceConfigDialog-3.0\\AceConfigDialog-3.0.lua:1476>\n[string \"=[C]\"]: ?\n[string \"@Interface\\AddOns\\BigDebuffs\\Libs\\AceGUI-3.0\\AceGUI-3.0-41.lua\"]:72: in function <...ace\\AddOns\\BigDebuffs\\Libs\\AceGUI-3.0\\AceGUI-3.0.lua:70>\n[string \"@Interface\\AddOns\\BigDebuffs\\Libs\\AceGUI-3.0\\AceGUI-3.0-41.lua\"]:306: in function `Fire'\n[string \"@Interface\\AddOns\\BigDebuffs\\Libs\\AceGUI-3.0-41\\widgets\\AceGUIContainer-TreeGroup.lua\"]:206: in function <...ibs\\AceGUI-3.0\\widgets\\AceGUIContainer-TreeGroup.lua:204>",
			["session"] = 3482,
			["counter"] = 3,
		}, -- [64]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'TextureScript' tried to call the protected function 'PartyMemberFrame3PetFrame:Hide()'.",
			["time"] = "2022/08/31 11:46:29",
			["locals"] = "Skipped (In Encounter)",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `Hide'\n[string \"@Interface\\FrameXML\\PartyMemberFrame.lua\"]:599: in function `PartyMemberFrame_UpdateOnlineStatus'\n[string \"@Interface\\FrameXML\\PartyMemberFrame.lua\"]:392: in function `PartyMemberFrame_OnEvent'\n[string \"*:OnEvent\"]:1: in function `OnEvent'\n[string \"@Interface\\FrameXML\\UnitFrame.lua\"]:740: in function <Interface\\FrameXML\\UnitFrame.lua:738>",
			["session"] = 3484,
			["counter"] = 2,
		}, -- [65]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'LoseControl' tried to call the protected function 'CompactRaidFrame1:SetAttribute()'.",
			["time"] = "2022/08/31 23:14:32",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `SetAttribute'\n[string \"@Interface_Wrath\\FrameXML\\CompactUnitFrame.lua\"]:162: in function `CompactUnitFrame_SetUnit'\n[string \"@Interface\\AddOns\\Blizzard_CompactRaidFrames\\Blizzard_CompactRaidFrameContainer.lua\"]:318: in function `CompactRaidFrameContainer_AddUnitFrame'\n[string \"@Interface\\AddOns\\Blizzard_CompactRaidFrames\\Blizzard_CompactRaidFrameContainer.lua\"]:254: in function `CompactRaidFrameContainer_AddPlayers'\n[string \"@Interface\\AddOns\\Blizzard_CompactRaidFrames\\Blizzard_CompactRaidFrameContainer.lua\"]:176: in function `CompactRaidFrameContainer_LayoutFrames'\n[string \"@Interface\\AddOns\\Blizzard_CompactRaidFrames\\Blizzard_CompactRaidFrameContainer.lua\"]:130: in function <...actRaidFrames\\Blizzard_CompactRaidFrameContainer.lua:128>\n[string \"=[C]\"]: in function `CompactRaidFrameContainer_TryUpdate'\n[string \"@Interface\\AddOns\\Blizzard_CompactRaidFrames\\Blizzard_CompactRaidFrameContainer.lua\"]:57: in function `CompactRaidFrameContainer_OnEvent'\n[string \"*:OnEvent\"]:1: in function <[string \"*:OnEvent\"]:1>",
			["session"] = 3484,
			["counter"] = 1,
		}, -- [66]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'TextureScript' tried to call the protected function 'Search()'.",
			["time"] = "2022/08/31 23:40:47",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `Search'\n[string \"@Interface\\AddOns\\Blizzard_LookingForGroupUI\\Blizzard_LFGBrowse.lua\"]:225: in function `LFGBrowse_DoSearch'\n[string \"@Interface\\AddOns\\Blizzard_LookingForGroupUI\\Blizzard_LFGBrowse.lua\"]:178: in function `SearchActiveEntry'\n[string \"@Interface\\AddOns\\Blizzard_LookingForGroupUI\\Blizzard_LFGParentFrame.lua\"]:92: in function `LFGParentFrame_SearchActiveEntry'\n[string \"@Interface\\AddOns\\Blizzard_LookingForGroupUI\\Blizzard_LFGListing.lua\"]:69: in function <...s\\Blizzard_LookingForGroupUI\\Blizzard_LFGListing.lua:49>",
			["session"] = 3485,
			["counter"] = 1,
		}, -- [67]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'Auctionator' tried to call the protected function 'Search()'.",
			["time"] = "2022/09/01 00:09:59",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `Search'\n[string \"@Interface\\AddOns\\Blizzard_LookingForGroupUI\\Blizzard_LFGBrowse.lua\"]:225: in function `LFGBrowse_DoSearch'\n[string \"@Interface\\AddOns\\Blizzard_LookingForGroupUI\\Blizzard_LFGBrowse.lua\"]:178: in function `SearchActiveEntry'\n[string \"@Interface\\AddOns\\Blizzard_LookingForGroupUI\\Blizzard_LFGParentFrame.lua\"]:92: in function `LFGParentFrame_SearchActiveEntry'\n[string \"@Interface\\AddOns\\Blizzard_LookingForGroupUI\\Blizzard_LFGListing.lua\"]:69: in function <...s\\Blizzard_LookingForGroupUI\\Blizzard_LFGListing.lua:49>",
			["session"] = 3487,
			["counter"] = 1,
		}, -- [68]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'TextureScript' tried to call the protected function 'PartyMemberFrame4PetFrame:Hide()'.",
			["time"] = "2022/09/01 12:04:17",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `Hide'\n[string \"@Interface\\FrameXML\\PartyMemberFrame.lua\"]:187: in function `PartyMemberFrame_UpdatePet'\n[string \"@Interface\\FrameXML\\PartyMemberFrame.lua\"]:363: in function `PartyMemberFrame_OnEvent'\n[string \"*:OnEvent\"]:1: in function `OnEvent'\n[string \"@Interface\\FrameXML\\UnitFrame.lua\"]:740: in function <Interface\\FrameXML\\UnitFrame.lua:738>",
			["session"] = 3489,
			["counter"] = 1,
		}, -- [69]
		{
			["message"] = "...terface\\AddOns\\ArenaTeamTracker\\ArenaTeamTracker-v7.45 TBC Classic.lua:755: attempt to index field '?' (a nil value)",
			["time"] = "2022/08/19 18:51:33",
			["locals"] = "self = ATT {\n 0 = <userdata>\n LoadPositions = <function> defined @Interface\\AddOns\\ArenaTeamTracker\\ArenaTeamTracker.lua:261\n AddIcon = <function> defined @Interface\\AddOns\\ArenaTeamTracker\\ArenaTeamTracker.lua:414\n StopAllIcons = <function> defined @Interface\\AddOns\\ArenaTeamTracker\\ArenaTeamTracker.lua:936\n PLAYER_ENTERING_WORLD = <function> defined @Interface\\AddOns\\ArenaTeamTracker\\ArenaTeamTracker.lua:697\n FindAbilityByName = <function> defined @Interface\\AddOns\\ArenaTeamTracker\\ArenaTeamTracker.lua:707\n TrackCooldown = <function> defined @Interface\\AddOns\\ArenaTeamTracker\\ArenaTeamTracker.lua:759\n FormatAbility = <function> defined @Interface\\AddOns\\ArenaTeamTracker\\ArenaTeamTracker.lua:1047\n ToggleIconDisplay = <function> defined @Interface\\AddOns\\ArenaTeamTracker\\ArenaTeamTracker.lua:575\n FindCompactRaidFrameByUnit = <function> defined @Interface\\AddOns\\ArenaTeamTracker\\ArenaTeamTracker.lua:228\n SavePositions = <function> defined @Interface\\AddOns\\ArenaTeamTracker\\ArenaTeamTracker.lua:205\n UNIT_SPELLCAST_SUCCEEDED = <function> defined @Interface\\AddOns\\ArenaTeamTracker\\ArenaTeamTracker.lua:855\n UpdateAnchor = <function> defined @Interface\\AddOns\\ArenaTeamTracker\\ArenaTeamTracker.lua:459\n UpdateAnchors = <function> defined @Interface\\AddOns\\ArenaTeamTracker\\ArenaTeamTracker.lua:634\n useCrossAddonCommunication = true\n UpdateIcons = <function> defined @Interface\\AddOns\\ArenaTeamTracker\\ArenaTeamTracker.lua:656\n IconGlow = <function> defined @Interface\\AddOns\\ArenaTeamTracker\\ArenaTeamTracker.lua:792\n ApplyAnchorSettings = <function> defined @Interface\\AddOns\\ArenaTeamTracker\\ArenaTeamTracker.lua:667\n RequestSync = <function> defined @Interface\\AddOns\\ArenaTeamTracker\\ArenaTeamTracker.lua:944\n CreateAbilityEditor = <function> defined @Interface\\AddOns\\ArenaTeamTracker\\ArenaTeamTracker.lua:1524\n ValidUnit = <function> defined @Interface\\AddOns\\ArenaTeamTracker\\ArenaTeamTracker.lua:725\n GetSpecByUnit = <function> defined @Interface\\AddOns\\ArenaTeamTracker\\ArenaTeamTracker.lua:198\n GROUP_ROSTER_UPDATE = <function> defined @Interface\\AddOns\\ArenaTeamTracker\\ArenaTeamTracker.lua:691\n scrollframe = ATTScrollFrameChild {\n }\n FindAbilityIcon = <function> defined @Interface\\AddOns\\ArenaTeamTracker\\ArenaTeamTracker.lua:1022\n CreateAnchors = <function> defined @Interface\\AddOns\\ArenaTeamTracker\\ArenaTeamTracker.lua:288\n btns = <table> {\n }\n panel = Arena Team Tracker_Panel {\n }\n UpdateScrollBar = <function> defined @Interface\\AddOns\\ArenaTeamTracker\\ArenaTeamTracker.lua:1480\n CreateOptions = <function> defined @Interface\\AddOns\\ArenaTeamTracker\\ArenaTeamTracker.lua:1091\n COMBAT_LOG_EVENT_UNFILTERED = <function> defined @Interface\\AddOns\\ArenaTeamTracker\\ArenaTeamTracker.lua:863\n FindAbilityID = <function> defined @Interface\\AddOns\\ArenaTeamTracker\\ArenaTeamTracker.lua:1032\n StartCooldown = <function> defined @Interface\\AddOns\\ArenaTeamTracker\\ArenaTeamTracker.lua:733\n ToggleAnchorDisplay = <function> defined @Interface\\AddOns\\ArenaTeamTracker\\ArenaTeamTracker.lua:431\n CHAT_MSG_ADDON = <function> defined @Interface\\AddOns\\ArenaTeamTracker\\ArenaTeamTracker.lua:950\n RaidInfo = <function> defined @Interface\\AddOns\\ArenaTeamTracker\\ArenaTeamTracker.lua:219\n Schedule = <function> defined @Interface\\AddOns\\ArenaTeamTracker\\ArenaTeamTracker.lua:882\n ApplyIconTextureBorder = <function> defined @Interface\\AddOns\\ArenaTeamTracker\\ArenaTeamTracker.lua:422\n GetSpecByGUID = <function> defined @Interface\\AddOns\\ArenaTeamTracker\\ArenaTeamTracker.lua:194\n GetUnitByGUID = <function> defined @Interface\\AddOns\\ArenaTeamTracker\\ArenaTeamTracker.lua:717\n ARENA_COOLDOWNS_UPDATE = <function> defined @Interface\\AddOns\\ArenaTeamTracker\\ArenaTeamTracker.lua:843\n TrinketCheck = <function> defined @Interface\\AddOns\\ArenaTeamTracker\\ArenaTeamTracker.lua:620\n FindUnitByGUID = <function> defined @Interface\\AddOns\\ArenaTeamTracker\\ArenaTeamTracker.lua:184\n}\nspellName = \"Horn of Winter\"\nunit = \"party1\"\ncooldown = nil\nSentID = nil\nindex = \"1\"\nanchor = ATTAnchor1 {\n 0 = <userdata>\n HideIcons = <function> defined @Interface\\AddOns\\ArenaTeamTracker\\ArenaTeamTracke",
			["stack"] = "[string \"@Interface\\AddOns\\ArenaTeamTracker\\ArenaTeamTracker-v7.45 TBC Classic.lua\"]:755: in function `StartCooldown'\n[string \"@Interface\\AddOns\\ArenaTeamTracker\\ArenaTeamTracker-v7.45 TBC Classic.lua\"]:860: in function `?'\n[string \"@Interface\\AddOns\\ArenaTeamTracker\\ArenaTeamTracker-v7.45 TBC Classic.lua\"]:987: in function <...terface\\AddOns\\ArenaTeamTracker\\ArenaTeamTracker.lua:985>",
			["session"] = 3489,
			["counter"] = 1652,
		}, -- [70]
		{
			["message"] = "Interface\\AddOns\\MoveAnything\\MoveAnything-18.0.5.lua:6079: BasicActionButtonsMover:SetPoint(): Couldn't find region named 'MainMenuBarArtFrameBackground'",
			["time"] = "2022/08/28 15:06:59",
			["locals"] = "(*temporary) = BasicActionButtonsMover {\n 0 = <userdata>\n MAScanForChildren = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnything.lua:6064\n ReleaseChildByName = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnything.lua:5970\n ReleaseChild = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnything.lua:5957\n FoundChild = <function> defined @Interface\\AddOns\\MoveAnything\\MoveAnything.lua:5933\n data = <table> {\n }\n MAEVM = <table> {\n }\n}\n(*temporary) = \"BOTTOMLEFT\"\n(*temporary) = \"MainMenuBarArtFrameBackground\"\n(*temporary) = \"BOTTOMLEFT\"\n(*temporary) = 8\n(*temporary) = 4\n",
			["stack"] = "[string \"=[C]\"]: in function `SetPoint'\n[string \"@Interface\\AddOns\\MoveAnything\\MoveAnything-18.0.5.lua\"]:6079: in function `CreateVM'\n[string \"@Interface\\AddOns\\MoveAnything\\MoveAnything-18.0.5.lua\"]:1944: in function `GetDefaultFrameParent'\n[string \"@Interface\\AddOns\\MoveAnything\\MoveAnything-18.0.5.lua\"]:3791: in function `NudgerOnUpdate'\n[string \"*:OnUpdate\"]:1: in function <[string \"*:OnUpdate\"]:1>",
			["session"] = 3509,
			["counter"] = 6,
		}, -- [71]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'TextureScript' tried to call the protected function 'PartyMemberFrame1:Hide()'.",
			["time"] = "2022/08/19 21:56:59",
			["locals"] = "InCombatSkipped",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `Hide'\n[string \"@Interface\\FrameXML\\PartyMemberFrame.lua\"]:143: in function `PartyMemberFrame_UpdateMember'\n[string \"@Interface\\FrameXML\\PartyMemberFrame.lua\"]:337: in function `PartyMemberFrame_OnEvent'\n[string \"*:OnEvent\"]:1: in function `OnEvent'\n[string \"@Interface\\FrameXML\\UnitFrame.lua\"]:740: in function <Interface\\FrameXML\\UnitFrame.lua:738>",
			["session"] = 3515,
			["counter"] = 14,
		}, -- [72]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'TextureScript' tried to call the protected function 'PartyMemberFrame1PetFrame:Hide()'.",
			["time"] = "2022/08/18 19:56:43",
			["locals"] = "InCombatSkipped",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `Hide'\n[string \"@Interface\\FrameXML\\PartyMemberFrame.lua\"]:187: in function `PartyMemberFrame_UpdatePet'\n[string \"@Interface\\FrameXML\\PartyMemberFrame.lua\"]:363: in function `PartyMemberFrame_OnEvent'\n[string \"*:OnEvent\"]:1: in function `OnEvent'\n[string \"@Interface\\FrameXML\\UnitFrame.lua\"]:740: in function <Interface\\FrameXML\\UnitFrame.lua:738>",
			["session"] = 3516,
			["counter"] = 28,
		}, -- [73]
		{
			["message"] = "WTF\\Account\\404249330#2\\SavedVariables\\BetterVendorPrice-v1.17.01.lua:1: unexpected symbol",
			["time"] = "2022/09/01 17:45:39",
			["locals"] = "",
			["stack"] = "",
			["session"] = 3517,
			["counter"] = 3,
		}, -- [74]
		{
			["message"] = "...unt\\404249330#2\\Gehennas\\Evolvebanned\\SavedVariables\\BuyEmAllClassic-1.0.2.lua:1: unexpected symbol",
			["time"] = "2022/09/01 17:45:40",
			["locals"] = "",
			["stack"] = "",
			["session"] = 3517,
			["counter"] = 3,
		}, -- [75]
		{
			["message"] = "...unt\\404249330#2\\Gehennas\\Evolvebanned\\SavedVariables\\Blizzard_RaidUI.lua:1: unexpected symbol",
			["time"] = "2022/09/01 17:45:47",
			["locals"] = "(*temporary) = \"Blizzard_RaidUI\"\n",
			["stack"] = "[string \"=[C]\"]: in function `LoadAddOn'\n[string \"@Interface_Wrath\\FrameXML\\UIParent.lua\"]:386: in function `UIParentLoadAddOn'\n[string \"@Interface_Wrath\\FrameXML\\UIParent.lua\"]:444: in function `RaidFrame_LoadUI'\n[string \"@Interface\\FrameXML\\RaidFrame.lua\"]:59: in function <Interface\\FrameXML\\RaidFrame.lua:50>",
			["session"] = 3517,
			["counter"] = 3,
		}, -- [76]
		{
			["message"] = "[ADDON_ACTION_BLOCKED] AddOn 'ButtonForge' tried to call the protected function 'ActionButton12:Show()'.",
			["time"] = "2022/08/21 17:12:30",
			["stack"] = "[string \"@Interface\\AddOns\\!BugGrabber\\BugGrabber.lua\"]:519: in function <Interface\\AddOns\\!BugGrabber\\BugGrabber.lua:519>\n[string \"=[C]\"]: in function `Show'\n[string \"@Interface\\FrameXML\\ActionButton.lua\"]:357: in function `ActionButton_Update'\n[string \"@Interface\\FrameXML\\ActionButton.lua\"]:694: in function `ActionButton_OnEvent'\n[string \"@Interface\\FrameXML\\ActionButton.lua\"]:207: in function <Interface\\FrameXML\\ActionButton.lua:204>",
			["session"] = 3541,
			["counter"] = 3,
		}, -- [77]
	},
}
