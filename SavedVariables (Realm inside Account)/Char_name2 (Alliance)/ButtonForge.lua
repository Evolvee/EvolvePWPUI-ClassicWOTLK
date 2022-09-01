
ButtonForgeSave = {
	["AdvancedMode"] = true,
	["AddonName"] = "Button Forge",
	["ConfigureMode"] = false,
	["RightClickSelfCast"] = false,
	["Bars"] = {
		{
			["ButtonsLocked"] = true,
			["VDriver"] = "",
			["Label"] = "",
			["Scale"] = 0.4608433578953599,
			["Rows"] = 1,
			["Left"] = 1190.254760742188,
			["Cols"] = 8,
			["HVehicle"] = false,
			["HSpec1"] = false,
			["HBonusBar"] = true,
			["KeyBindText"] = true,
			["HSpec3"] = false,
			["GridAlwaysOn"] = true,
			["Buttons"] = {
				{
					["MacroName"] = "MC",
					["MacroBody"] = "/cqs\n/cast Mind Control\n",
					["Mode"] = "macro",
					["KeyBinding"] = "SHIFT-BUTTON4",
					["MacroIndex"] = 42,
				}, -- [1]
				{
					["MacroName"] = "mc focus",
					["MacroBody"] = "/cqs\n/cast [target=focus] Mind Control\n",
					["Mode"] = "macro",
					["KeyBinding"] = "CTRL-BUTTON4",
					["MacroIndex"] = 43,
				}, -- [2]
				{
					["MacroName"] = "nova",
					["MacroBody"] = "/cqs\n/cast Holy Nova(Rank 9)\n",
					["Mode"] = "macro",
					["KeyBinding"] = "MOUSEWHEELUP",
					["MacroIndex"] = 47,
				}, -- [3]
				{
					["MacroName"] = "kenkr",
					["MacroBody"] = "/cancelaura Dispersion\n",
					["Mode"] = "macro",
					["KeyBinding"] = "ALT-MOUSEWHEELDOWN",
					["MacroIndex"] = 38,
				}, -- [4]
				{
					["MacroName"] = "party2",
					["MacroBody"] = "/cqs\n/cast [target=party2] Dispel Magic(Rank 2)\n/TargetLastTarget();\n",
					["Mode"] = "macro",
					["KeyBinding"] = "CTRL-C",
					["MacroIndex"] = 51,
				}, -- [5]
				{
					["MacroName"] = "pet dispel",
					["MacroBody"] = "/cqs\n/cast [target=pet] Dispel Magic(Rank 2)\n",
					["Mode"] = "macro",
					["KeyBinding"] = "SHIFT-R",
					["MacroIndex"] = 53,
				}, -- [6]
				{
					["MacroName"] = "pet fw",
					["MacroBody"] = "/cqs\n/cast [target=pet] Fear Ward\n",
					["Mode"] = "macro",
					["KeyBinding"] = "CTRL-R",
					["MacroIndex"] = 54,
				}, -- [7]
				{
					["MacroName"] = "focusus",
					["MacroBody"] = "/cqs\n/use [target=focus] Silence\n",
					["Mode"] = "macro",
					["KeyBinding"] = "SHIFT-V",
					["MacroIndex"] = 27,
				}, -- [8]
			},
			["BonusBar"] = false,
			["Alpha"] = 1,
			["HSpec4"] = false,
			["HSpec2"] = false,
			["GUI"] = true,
			["Enabled"] = true,
			["MacroText"] = true,
			["Top"] = 37.59041595458984,
			["Order"] = 0,
			["ButtonGap"] = 6,
			["TooltipsOn"] = false,
		}, -- [1]
	},
	["Version"] = 1,
	["VersionMinor"] = 0.5,
}
