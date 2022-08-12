
ButtonForgeGlobalSettings = {
	["Version"] = 1,
	["UseCollectionsFavoriteMountButton"] = false,
	["ForceOffCastOnKeyDown"] = false,
	["MacroCheckDelay"] = 3,
	["RemoveMissingMacros"] = true,
	["VersionMinor"] = 0.5,
}
ButtonForgeGlobalProfiles = {
}
ButtonForgeGlobalBackup = {
	["Evolvepwe-Classic Arena - EU"] = {
		["AdvancedMode"] = false,
		["AddonName"] = "Button Forge",
		["ConfigureMode"] = false,
		["RightClickSelfCast"] = false,
		["Bars"] = {
		},
		["Version"] = 1,
		["VersionMinor"] = 0.5,
	},
	["Evolvebank-Gehennas"] = {
		["AdvancedMode"] = false,
		["AddonName"] = "Button Forge",
		["ConfigureMode"] = true,
		["RightClickSelfCast"] = false,
		["Bars"] = {
		},
		["Version"] = 1,
		["VersionMinor"] = 0.5,
	},
	["Evolvexd-Classic Arena - EU"] = {
		["AdvancedMode"] = true,
		["AddonName"] = "Button Forge",
		["ConfigureMode"] = false,
		["RightClickSelfCast"] = false,
		["Bars"] = {
			{
				["ButtonsLocked"] = true,
				["VDriver"] = "",
				["Label"] = "",
				["Scale"] = 0.8082588391426282,
				["Rows"] = 1,
				["Left"] = 1281.2890625,
				["Cols"] = 2,
				["HVehicle"] = true,
				["HSpec1"] = false,
				["HBonusBar"] = true,
				["KeyBindText"] = true,
				["HSpec3"] = false,
				["GridAlwaysOn"] = true,
				["HSpec2"] = false,
				["BonusBar"] = false,
				["Alpha"] = 1,
				["HSpec4"] = false,
				["TooltipsOn"] = false,
				["GUI"] = true,
				["Enabled"] = true,
				["MacroText"] = true,
				["Order"] = 0,
				["Top"] = 84.37236022949219,
				["ButtonGap"] = 6,
				["Buttons"] = {
					{
						["MacroName"] = "DMG",
						["MacroBody"] = "/equip Gladiator's Gavel\n/equip Gladiator's Endgame\n/equip Gladiator's Touch of Defeat\n",
						["Mode"] = "macro",
						["KeyBinding"] = "MOUSEWHEELDOWN",
						["MacroIndex"] = 128,
					}, -- [1]
					{
						["MacroName"] = "HEAL",
						["MacroBody"] = "/equip Light's Justice\n/equip Tears of Heaven\n/equip Blue Diamond Witchwand\n",
						["Mode"] = "macro",
						["KeyBinding"] = "MOUSEWHEELUP",
						["MacroIndex"] = 138,
					}, -- [2]
				},
			}, -- [1]
			{
				["ButtonsLocked"] = true,
				["VDriver"] = "",
				["Label"] = "",
				["Scale"] = 0.817374987479968,
				["Rows"] = 1,
				["Left"] = 1280.578125,
				["Cols"] = 2,
				["HVehicle"] = true,
				["HSpec1"] = false,
				["HBonusBar"] = true,
				["KeyBindText"] = true,
				["HSpec3"] = false,
				["GridAlwaysOn"] = true,
				["Buttons"] = {
					{
						["MacroName"] = "r1",
						["MacroBody"] = "#showtooltip Mind Flay(Rank 1)\n/cqs\n/cast [nochanneling] Mind Flay(Rank 1)\n",
						["Mode"] = "macro",
						["KeyBinding"] = "SHIFT-3",
						["MacroIndex"] = 13,
					}, -- [1]
					{
						["MacroName"] = "party2",
						["MacroBody"] = "/cqs\n/cast [target=party2] Dispel Magic(Rank 2)\n/TargetLastTarget();\n",
						["Mode"] = "macro",
						["KeyBinding"] = "CTRL-C",
						["MacroIndex"] = 9,
					}, -- [2]
				},
				["BonusBar"] = false,
				["Alpha"] = 1,
				["HSpec4"] = false,
				["TooltipsOn"] = false,
				["GUI"] = true,
				["Enabled"] = true,
				["MacroText"] = true,
				["Top"] = 50.42549896240234,
				["Order"] = 1,
				["ButtonGap"] = 6,
				["HSpec2"] = false,
			}, -- [2]
		},
		["Version"] = 1,
		["VersionMinor"] = 0.5,
	},
	["Magetest-Classic Arena - EU"] = {
		["AdvancedMode"] = false,
		["AddonName"] = "Button Forge",
		["ConfigureMode"] = true,
		["RightClickSelfCast"] = false,
		["Bars"] = {
		},
		["Version"] = 1,
		["VersionMinor"] = 0.5,
	},
	["Dbldogcheck-Firemaw"] = {
		["AdvancedMode"] = false,
		["AddonName"] = "Button Forge",
		["ConfigureMode"] = true,
		["RightClickSelfCast"] = false,
		["Bars"] = {
		},
		["Version"] = 1,
		["VersionMinor"] = 0.5,
	},
	["Evolve-Classic Arena - EU"] = {
		["AdvancedMode"] = true,
		["AddonName"] = "Button Forge",
		["ConfigureMode"] = false,
		["RightClickSelfCast"] = false,
		["Bars"] = {
			{
				["ButtonsLocked"] = true,
				["VDriver"] = "",
				["Label"] = "",
				["Scale"] = 0.8082588391426282,
				["Rows"] = 1,
				["Left"] = 1281.2890625,
				["Cols"] = 2,
				["HVehicle"] = true,
				["HSpec1"] = false,
				["HBonusBar"] = true,
				["KeyBindText"] = true,
				["HSpec3"] = false,
				["GridAlwaysOn"] = true,
				["HSpec2"] = false,
				["BonusBar"] = false,
				["Alpha"] = 1,
				["HSpec4"] = false,
				["TooltipsOn"] = false,
				["GUI"] = true,
				["Enabled"] = true,
				["MacroText"] = true,
				["Order"] = 0,
				["Top"] = 84.37236022949219,
				["ButtonGap"] = 6,
				["Buttons"] = {
					{
						["MacroName"] = "DMG",
						["MacroIndex"] = 128,
						["Mode"] = "macro",
						["KeyBinding"] = "MOUSEWHEELDOWN",
						["MacroBody"] = "/equip Gladiator's Gavel\n/equip Gladiator's Endgame\n/equip Gladiator's Touch of Defeat\n",
					}, -- [1]
					{
						["MacroName"] = "HEAL",
						["MacroIndex"] = 138,
						["Mode"] = "macro",
						["KeyBinding"] = "MOUSEWHEELUP",
						["MacroBody"] = "/equip Light's Justice\n/equip Tears of Heaven\n/equip Blue Diamond Witchwand\n",
					}, -- [2]
				},
			}, -- [1]
			{
				["ButtonsLocked"] = true,
				["VDriver"] = "",
				["Label"] = "",
				["Scale"] = 0.817374987479968,
				["Rows"] = 1,
				["Left"] = 1280.578125,
				["Cols"] = 2,
				["HVehicle"] = true,
				["HSpec1"] = false,
				["HBonusBar"] = true,
				["KeyBindText"] = true,
				["HSpec3"] = false,
				["GridAlwaysOn"] = true,
				["Buttons"] = {
					{
						["MacroName"] = "r1",
						["MacroIndex"] = 13,
						["Mode"] = "macro",
						["KeyBinding"] = "SHIFT-3",
						["MacroBody"] = "#showtooltip Mind Flay(Rank 1)\n/cqs\n/cast [nochanneling] Mind Flay(Rank 1)\n",
					}, -- [1]
					{
						["MacroName"] = "party2",
						["MacroIndex"] = 9,
						["Mode"] = "macro",
						["KeyBinding"] = "CTRL-C",
						["MacroBody"] = "/cqs\n/cast [target=party2] Dispel Magic(Rank 2)\n/TargetLastTarget();\n",
					}, -- [2]
				},
				["BonusBar"] = false,
				["Alpha"] = 1,
				["HSpec4"] = false,
				["TooltipsOn"] = false,
				["GUI"] = true,
				["Enabled"] = true,
				["MacroText"] = true,
				["Top"] = 50.42549896240234,
				["Order"] = 1,
				["ButtonGap"] = 6,
				["HSpec2"] = false,
			}, -- [2]
		},
		["Version"] = 1,
		["VersionMinor"] = 0.5,
	},
	["Evolvepwp-Firemaw"] = {
		["AdvancedMode"] = true,
		["AddonName"] = "Button Forge",
		["ConfigureMode"] = false,
		["RightClickSelfCast"] = false,
		["Bars"] = {
			{
				["ButtonsLocked"] = true,
				["VDriver"] = "",
				["Label"] = "",
				["Scale"] = 0.8073253142528045,
				["Rows"] = 1,
				["Left"] = 1280.578125,
				["Cols"] = 2,
				["HVehicle"] = true,
				["HSpec1"] = false,
				["HBonusBar"] = true,
				["KeyBindText"] = true,
				["HSpec3"] = false,
				["GridAlwaysOn"] = true,
				["Buttons"] = {
					{
						["MacroName"] = "DMG",
						["MacroIndex"] = 14,
						["Mode"] = "macro",
						["KeyBinding"] = "MOUSEWHEELDOWN",
						["MacroBody"] = "/equip Brutal Gladiator's Gavel\n/equip Brutal Gladiator's Endgame\n/equip Brutal Gladiator's Touch of Defeat\n",
					}, -- [1]
					{
						["MacroName"] = "Heal",
						["MacroIndex"] = 26,
						["Mode"] = "macro",
						["KeyBinding"] = "MOUSEWHEELUP",
						["MacroBody"] = "/equip Archon's Gavel\n/equip Brutal Gladiator's Reprieve\n/equip Naaru-Blessed Life Rod\n",
					}, -- [2]
				},
				["BonusBar"] = false,
				["Alpha"] = 1,
				["HSpec4"] = false,
				["TooltipsOn"] = false,
				["GUI"] = true,
				["Enabled"] = true,
				["MacroText"] = true,
				["Top"] = 116.6561126708984,
				["Order"] = 2,
				["ButtonGap"] = 6,
				["HSpec2"] = false,
			}, -- [1]
			{
				["ButtonsLocked"] = true,
				["VDriver"] = "",
				["Label"] = "",
				["Scale"] = 0.817374987479968,
				["Rows"] = 1,
				["Left"] = 1280.578125,
				["Cols"] = 2,
				["HVehicle"] = true,
				["HSpec1"] = false,
				["HBonusBar"] = true,
				["KeyBindText"] = true,
				["HSpec3"] = false,
				["GridAlwaysOn"] = true,
				["TooltipsOn"] = false,
				["BonusBar"] = false,
				["Alpha"] = 1,
				["HSpec4"] = false,
				["HSpec2"] = false,
				["GUI"] = true,
				["Enabled"] = true,
				["MacroText"] = true,
				["Order"] = 3,
				["Top"] = 50.42549896240234,
				["ButtonGap"] = 6,
				["Buttons"] = {
					{
						["MacroName"] = "r1",
						["MacroIndex"] = 44,
						["Mode"] = "macro",
						["KeyBinding"] = "SHIFT-3",
						["MacroBody"] = "/cqs\n/cast [nochanneling] Mind Flay(Rank 1)\n",
					}, -- [1]
					{
						["MacroName"] = "party2",
						["MacroIndex"] = 39,
						["Mode"] = "macro",
						["KeyBinding"] = "CTRL-C",
						["MacroBody"] = "/cqs\n/cast [target=party2] Dispel Magic(Rank 2)\n/TargetLastTarget();\n",
					}, -- [2]
				},
			}, -- [2]
			{
				["ButtonsLocked"] = true,
				["VDriver"] = "",
				["Label"] = "",
				["Scale"] = 0.7982076009114584,
				["Rows"] = 1,
				["Left"] = 1280.578125,
				["Cols"] = 2,
				["HVehicle"] = true,
				["HSpec1"] = false,
				["HBonusBar"] = true,
				["KeyBindText"] = true,
				["HSpec3"] = false,
				["GridAlwaysOn"] = true,
				["HSpec2"] = false,
				["BonusBar"] = false,
				["Alpha"] = 1,
				["HSpec4"] = false,
				["TooltipsOn"] = false,
				["GUI"] = true,
				["Enabled"] = true,
				["MacroText"] = true,
				["Order"] = 0,
				["Top"] = 82.80315399169922,
				["ButtonGap"] = 6,
				["Buttons"] = {
					{
						["MacroName"] = "SP",
						["MacroIndex"] = 50,
						["Mode"] = "macro",
						["KeyBinding"] = "SHIFT-MOUSEWHEELDOWN",
						["MacroBody"] = "/equip Brutal Gladiator's Gavel\n/equip Brutal Gladiator's Grimoire\n/equip Brutal Gladiator's Touch of Defeat\n",
					}, -- [1]
					{
						["MacroName"] = "mp5",
						["MacroIndex"] = 36,
						["Mode"] = "macro",
						["KeyBinding"] = "ALT-MOUSEWHEELUP",
						["MacroBody"] = "/equip Staff of Dark Mending\n/equip Naaru-Blessed Life Rod\n",
					}, -- [2]
				},
			}, -- [3]
			{
				["ButtonsLocked"] = true,
				["VDriver"] = "",
				["Label"] = "",
				["Scale"] = 0.7888844807942709,
				["Rows"] = 1,
				["Left"] = 1247.445190429688,
				["Cols"] = 1,
				["HVehicle"] = true,
				["HSpec1"] = false,
				["HBonusBar"] = true,
				["KeyBindText"] = true,
				["HSpec3"] = false,
				["GridAlwaysOn"] = true,
				["HSpec2"] = false,
				["BonusBar"] = false,
				["Alpha"] = 1,
				["HSpec4"] = false,
				["TooltipsOn"] = false,
				["GUI"] = true,
				["Enabled"] = true,
				["MacroText"] = true,
				["Order"] = 1,
				["Top"] = 49.39985275268555,
				["ButtonGap"] = 6,
				["Buttons"] = {
					{
						["MacroName"] = "spirit",
						["MacroIndex"] = 51,
						["Mode"] = "macro",
						["KeyBinding"] = "SHIFT-MOUSEWHEELUP",
						["MacroBody"] = "/equip Rod of the Blazing Light\n/equip Naaru-Blessed Life Rod\n",
					}, -- [1]
				},
			}, -- [4]
			{
				["ButtonsLocked"] = true,
				["VDriver"] = "",
				["Label"] = "",
				["Scale"] = 0.8283962673611112,
				["Rows"] = 1,
				["Left"] = 1247.445190429688,
				["Cols"] = 1,
				["HVehicle"] = true,
				["HSpec1"] = false,
				["HBonusBar"] = true,
				["KeyBindText"] = true,
				["HSpec3"] = false,
				["GridAlwaysOn"] = true,
				["TooltipsOn"] = false,
				["BonusBar"] = false,
				["Alpha"] = 1,
				["HSpec4"] = false,
				["HSpec2"] = false,
				["GUI"] = true,
				["Enabled"] = true,
				["MacroText"] = true,
				["Order"] = 4,
				["Top"] = 82.62202453613281,
				["ButtonGap"] = 6,
				["Buttons"] = {
					{
						["MacroName"] = "DP",
						["MacroIndex"] = 15,
						["Mode"] = "macro",
						["KeyBinding"] = "ALT-MOUSEWHEELDOWN",
						["MacroBody"] = "/equip Brutal Gladiator's Gavel\n/equip Brutal Gladiator's Grimoire\n/equip Brutal Gladiator's Piercing Touch\n",
					}, -- [1]
				},
			}, -- [5]
		},
		["Version"] = 1,
		["VersionMinor"] = 0.5,
	},
	["Evolvepwp-Earthshaker"] = {
		["AdvancedMode"] = true,
		["AddonName"] = "Button Forge",
		["ConfigureMode"] = false,
		["RightClickSelfCast"] = false,
		["Bars"] = {
			{
				["ButtonsLocked"] = true,
				["VDriver"] = "",
				["Label"] = "",
				["Scale"] = 0.8082588391426282,
				["Rows"] = 1,
				["Left"] = 1281.2890625,
				["Cols"] = 2,
				["HVehicle"] = true,
				["HSpec1"] = false,
				["HBonusBar"] = true,
				["KeyBindText"] = true,
				["HSpec3"] = false,
				["GridAlwaysOn"] = true,
				["HSpec2"] = false,
				["BonusBar"] = false,
				["Alpha"] = 1,
				["HSpec4"] = false,
				["TooltipsOn"] = false,
				["GUI"] = true,
				["Enabled"] = true,
				["MacroText"] = true,
				["Order"] = 0,
				["Top"] = 84.37237548828125,
				["ButtonGap"] = 6,
				["Buttons"] = {
					{
						["MacroName"] = "DMG",
						["MacroIndex"] = 9,
						["Mode"] = "macro",
						["KeyBinding"] = "MOUSEWHEELDOWN",
						["MacroBody"] = "/equip Gladiator's Gavel\n/equip Karaborian Talisman\n",
					}, -- [1]
					{
						["MacroName"] = "Heal",
						["MacroIndex"] = 19,
						["Mode"] = "macro",
						["KeyBinding"] = "MOUSEWHEELUP",
						["MacroBody"] = "/equip Gladiator's Salvation\n/equip Tears of Heaven\n",
					}, -- [2]
				},
			}, -- [1]
			{
				["ButtonsLocked"] = true,
				["VDriver"] = "",
				["Label"] = "",
				["Scale"] = 0.817374987479968,
				["Rows"] = 1,
				["Left"] = 1280.578125,
				["Cols"] = 2,
				["HVehicle"] = true,
				["HSpec1"] = false,
				["HBonusBar"] = true,
				["KeyBindText"] = true,
				["HSpec3"] = false,
				["GridAlwaysOn"] = true,
				["Buttons"] = {
					{
						["MacroName"] = "r1",
						["MacroIndex"] = 30,
						["Mode"] = "macro",
						["KeyBinding"] = "SHIFT-3",
						["MacroBody"] = "#showtooltip Mind Flay(Rank 1)\n/cqs\n/cast [nochanneling] Mind Flay(Rank 1)\n",
					}, -- [1]
					{
						["MacroName"] = "party2",
						["MacroIndex"] = 27,
						["Mode"] = "macro",
						["KeyBinding"] = "CTRL-C",
						["MacroBody"] = "/cqs\n/cast [target=party2] Dispel Magic(Rank 2)\n/TargetLastTarget();\n",
					}, -- [2]
				},
				["BonusBar"] = false,
				["Alpha"] = 1,
				["HSpec4"] = false,
				["TooltipsOn"] = false,
				["GUI"] = true,
				["Enabled"] = true,
				["MacroText"] = true,
				["Top"] = 50.42549896240234,
				["Order"] = 1,
				["ButtonGap"] = 6,
				["HSpec2"] = false,
			}, -- [2]
			{
				["ButtonsLocked"] = true,
				["VDriver"] = "",
				["Label"] = "",
				["Scale"] = 0.7969089084201388,
				["Rows"] = 1,
				["Left"] = 1247.81884765625,
				["Cols"] = 1,
				["HVehicle"] = true,
				["HSpec1"] = false,
				["HBonusBar"] = true,
				["KeyBindText"] = true,
				["HSpec3"] = false,
				["GridAlwaysOn"] = true,
				["Buttons"] = {
					{
						["ItemName"] = "Skull of Impending Doom",
						["KeyBinding"] = "SHIFT-MOUSEWHEELDOWN",
						["Mode"] = "item",
						["ItemLink"] = "|cff1eff00|Hitem:4984::::::::70::::::::|h[Skull of Impending Doom]|h|r",
						["ItemId"] = 4984,
					}, -- [1]
				},
				["BonusBar"] = false,
				["Alpha"] = 1,
				["HSpec4"] = false,
				["HSpec2"] = false,
				["GUI"] = true,
				["Enabled"] = true,
				["MacroText"] = true,
				["Top"] = 49.68872833251953,
				["Order"] = 2,
				["ButtonGap"] = 6,
				["TooltipsOn"] = false,
			}, -- [3]
			{
				["ButtonsLocked"] = true,
				["VDriver"] = "",
				["Label"] = "",
				["Scale"] = 0.7888844807942709,
				["Rows"] = 1,
				["Left"] = 1214.685791015625,
				["Cols"] = 1,
				["HVehicle"] = true,
				["HSpec1"] = false,
				["HBonusBar"] = true,
				["KeyBindText"] = true,
				["HSpec3"] = false,
				["GridAlwaysOn"] = true,
				["Buttons"] = {
					{
						["MacroName"] = "cancel chicken",
						["MacroIndex"] = 6,
						["Mode"] = "macro",
						["KeyBinding"] = "SHIFT-MOUSEWHEELUP",
						["MacroBody"] = "/cancelaura Flee\n",
					}, -- [1]
				},
				["BonusBar"] = false,
				["Alpha"] = 1,
				["HSpec4"] = false,
				["HSpec2"] = false,
				["GUI"] = true,
				["Enabled"] = true,
				["MacroText"] = true,
				["Top"] = 49.68872833251953,
				["Order"] = 3,
				["ButtonGap"] = 6,
				["TooltipsOn"] = false,
			}, -- [4]
		},
		["Version"] = 1,
		["VersionMinor"] = 0.5,
	},
	["Evolvebanned-Gehennas"] = {
		["AdvancedMode"] = true,
		["AddonName"] = "Button Forge",
		["ConfigureMode"] = false,
		["RightClickSelfCast"] = false,
		["Bars"] = {
			{
				["ButtonsLocked"] = true,
				["VDriver"] = "",
				["Label"] = "",
				["Scale"] = 0.8073253142528045,
				["Rows"] = 1,
				["Left"] = 1280.578125,
				["Cols"] = 2,
				["HVehicle"] = true,
				["HSpec1"] = false,
				["HBonusBar"] = true,
				["KeyBindText"] = true,
				["HSpec3"] = false,
				["GridAlwaysOn"] = true,
				["Buttons"] = {
					{
						["MacroName"] = "DMG",
						["MacroBody"] = "/equip Brutal Gladiator's Gavel\n/equip Brutal Gladiator's Endgame\n/equip Brutal Gladiator's Touch of Defeat\n",
						["Mode"] = "macro",
						["KeyBinding"] = "MOUSEWHEELDOWN",
						["MacroIndex"] = 14,
					}, -- [1]
					{
						["MacroName"] = "Heal",
						["MacroBody"] = "/equip Archon's Gavel\n/equip Brutal Gladiator's Reprieve\n/equip Naaru-Blessed Life Rod\n",
						["Mode"] = "macro",
						["KeyBinding"] = "MOUSEWHEELUP",
						["MacroIndex"] = 26,
					}, -- [2]
				},
				["BonusBar"] = false,
				["Alpha"] = 1,
				["HSpec4"] = false,
				["TooltipsOn"] = false,
				["GUI"] = true,
				["Enabled"] = true,
				["MacroText"] = true,
				["Top"] = 116.6561126708984,
				["Order"] = 2,
				["ButtonGap"] = 6,
				["HSpec2"] = false,
			}, -- [1]
			{
				["ButtonsLocked"] = true,
				["VDriver"] = "",
				["Label"] = "",
				["Scale"] = 0.817374987479968,
				["Rows"] = 1,
				["Left"] = 1280.578125,
				["Cols"] = 2,
				["HVehicle"] = true,
				["HSpec1"] = false,
				["HBonusBar"] = true,
				["KeyBindText"] = true,
				["HSpec3"] = false,
				["GridAlwaysOn"] = true,
				["TooltipsOn"] = false,
				["BonusBar"] = false,
				["Alpha"] = 1,
				["HSpec4"] = false,
				["HSpec2"] = false,
				["GUI"] = true,
				["Enabled"] = true,
				["MacroText"] = true,
				["Order"] = 3,
				["Top"] = 50.42549896240234,
				["ButtonGap"] = 6,
				["Buttons"] = {
					{
						["MacroName"] = "r1",
						["MacroBody"] = "/cqs\n/cast [nochanneling] Mind Flay(Rank 1)\n",
						["Mode"] = "macro",
						["KeyBinding"] = "SHIFT-3",
						["MacroIndex"] = 44,
					}, -- [1]
					{
						["MacroName"] = "party2",
						["MacroBody"] = "/cqs\n/cast [target=party2] Dispel Magic(Rank 2)\n/TargetLastTarget();\n",
						["Mode"] = "macro",
						["KeyBinding"] = "CTRL-C",
						["MacroIndex"] = 39,
					}, -- [2]
				},
			}, -- [2]
			{
				["ButtonsLocked"] = true,
				["VDriver"] = "",
				["Label"] = "",
				["Scale"] = 0.7982076009114584,
				["Rows"] = 1,
				["Left"] = 1280.578125,
				["Cols"] = 2,
				["HVehicle"] = true,
				["HSpec1"] = false,
				["HBonusBar"] = true,
				["KeyBindText"] = true,
				["HSpec3"] = false,
				["GridAlwaysOn"] = true,
				["HSpec2"] = false,
				["BonusBar"] = false,
				["Alpha"] = 1,
				["HSpec4"] = false,
				["TooltipsOn"] = false,
				["GUI"] = true,
				["Enabled"] = true,
				["MacroText"] = true,
				["Order"] = 0,
				["Top"] = 82.80315399169922,
				["ButtonGap"] = 6,
				["Buttons"] = {
					{
						["MacroName"] = "SP",
						["MacroBody"] = "/equip Brutal Gladiator's Gavel\n/equip Brutal Gladiator's Grimoire\n/equip Brutal Gladiator's Touch of Defeat\n",
						["Mode"] = "macro",
						["KeyBinding"] = "SHIFT-MOUSEWHEELDOWN",
						["MacroIndex"] = 50,
					}, -- [1]
					{
						["MacroName"] = "mp5",
						["MacroBody"] = "/equip Staff of Dark Mending\n/equip Naaru-Blessed Life Rod\n",
						["Mode"] = "macro",
						["KeyBinding"] = "ALT-MOUSEWHEELUP",
						["MacroIndex"] = 36,
					}, -- [2]
				},
			}, -- [3]
			{
				["ButtonsLocked"] = true,
				["VDriver"] = "",
				["Label"] = "",
				["Scale"] = 0.7888844807942709,
				["Rows"] = 1,
				["Left"] = 1247.445190429688,
				["Cols"] = 1,
				["HVehicle"] = true,
				["HSpec1"] = false,
				["HBonusBar"] = true,
				["KeyBindText"] = true,
				["HSpec3"] = false,
				["GridAlwaysOn"] = true,
				["HSpec2"] = false,
				["BonusBar"] = false,
				["Alpha"] = 1,
				["HSpec4"] = false,
				["TooltipsOn"] = false,
				["GUI"] = true,
				["Enabled"] = true,
				["MacroText"] = true,
				["Order"] = 1,
				["Top"] = 49.39985275268555,
				["ButtonGap"] = 6,
				["Buttons"] = {
					{
						["MacroName"] = "spirit",
						["MacroBody"] = "/equip Rod of the Blazing Light\n/equip Naaru-Blessed Life Rod\n",
						["Mode"] = "macro",
						["KeyBinding"] = "SHIFT-MOUSEWHEELUP",
						["MacroIndex"] = 51,
					}, -- [1]
				},
			}, -- [4]
			{
				["ButtonsLocked"] = true,
				["VDriver"] = "",
				["Label"] = "",
				["Scale"] = 0.8283962673611112,
				["Rows"] = 1,
				["Left"] = 1247.445190429688,
				["Cols"] = 1,
				["HVehicle"] = true,
				["HSpec1"] = false,
				["HBonusBar"] = true,
				["KeyBindText"] = true,
				["HSpec3"] = false,
				["GridAlwaysOn"] = true,
				["TooltipsOn"] = false,
				["BonusBar"] = false,
				["Alpha"] = 1,
				["HSpec4"] = false,
				["HSpec2"] = false,
				["GUI"] = true,
				["Enabled"] = true,
				["MacroText"] = true,
				["Order"] = 4,
				["Top"] = 82.62202453613281,
				["ButtonGap"] = 6,
				["Buttons"] = {
					{
						["MacroName"] = "DP",
						["MacroBody"] = "/equip Brutal Gladiator's Gavel\n/equip Brutal Gladiator's Grimoire\n/equip Brutal Gladiator's Piercing Touch\n",
						["Mode"] = "macro",
						["KeyBinding"] = "ALT-MOUSEWHEELDOWN",
						["MacroIndex"] = 15,
					}, -- [1]
				},
			}, -- [5]
			{
				["ButtonsLocked"] = true,
				["VDriver"] = "",
				["Label"] = "",
				["Scale"] = 0.7766783914448302,
				["Rows"] = 2,
				["Left"] = 1182.204345703125,
				["Cols"] = 2,
				["HVehicle"] = true,
				["HSpec1"] = false,
				["HBonusBar"] = true,
				["KeyBindText"] = true,
				["HSpec3"] = false,
				["GridAlwaysOn"] = true,
				["Buttons"] = {
					{
						["MacroName"] = "mc focus",
						["MacroBody"] = "/cqs\n/use [target=focus] Mind Control(Rank 3)\n",
						["Mode"] = "macro",
						["KeyBinding"] = "CTRL-BUTTON4",
						["MacroIndex"] = 33,
					}, -- [1]
					{
						["MacroName"] = "focus VE",
						["MacroBody"] = "/cqs\n/use [target=focus] Vampiric Embrace\n",
						["Mode"] = "macro",
						["KeyBinding"] = "SHIFT-5",
						["MacroIndex"] = 22,
					}, -- [2]
					{
						["MacroName"] = "pet dispel",
						["MacroBody"] = "/cqs\n/cast [target=pet] Dispel Magic(Rank 2)\n",
						["Mode"] = "macro",
						["KeyBinding"] = "SHIFT-R",
						["MacroIndex"] = 41,
					}, -- [3]
					{
						["MacroName"] = "pet fw",
						["MacroBody"] = "/cqs\n/cast [target=pet] Fear Ward\n",
						["Mode"] = "macro",
						["KeyBinding"] = "CTRL-R",
						["MacroIndex"] = 42,
					}, -- [4]
				},
				["BonusBar"] = false,
				["Alpha"] = 1,
				["HSpec4"] = false,
				["TooltipsOn"] = false,
				["GUI"] = true,
				["Enabled"] = true,
				["MacroText"] = true,
				["Top"] = 81.5809326171875,
				["Order"] = 5,
				["ButtonGap"] = 6,
				["HSpec2"] = false,
			}, -- [6]
		},
		["Version"] = 1,
		["VersionMinor"] = 0.5,
	},
}
