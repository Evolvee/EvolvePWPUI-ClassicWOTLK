
WeakAurasSaved = {
	["dynamicIconCache"] = {
	},
	["editor_tab_spaces"] = 4,
	["displays"] = {
		["latency"] = {
			["outline"] = "OUTLINE",
			["wagoID"] = "NEXcXZuWO",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    local color = \"\"\n    local theTime = GetTime()\n    if not aura_env.last or aura_env.last < theTime - 1 then\n        aura_env.last = theTime\n        local _, _, _, world = GetNetStats()\n        aura_env.text = \"\" .. world \n        local lastrender = GetTime()\n    end\n    local _, _, _, world = GetNetStats()\n    if world < 150 then \n        color = \"|cFF90EE90\"\n    elseif world > 149 and world < 350 then\n        color = \"|cFFFF8C00\"\n    else\n        color = \"|cFFFF0000\"\n    end\n    return color.. aura_env.text .. \"ms\"\nend",
			["yOffset"] = -379.6885471343994,
			["anchorPoint"] = "CENTER",
			["displayText_format_p_time_format"] = 0,
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "unit",
						["use_alwaystrue"] = true,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Conditions",
						["unit"] = "player",
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["displayText_format_p_format"] = "timed",
			["internalVersion"] = 53,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desc"] = "",
			["font"] = "Fira Mono Medium",
			["version"] = 1,
			["displayText_format_c_format"] = "none",
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["use_combat"] = false,
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 16,
			["source"] = "import",
			["shadowXOffset"] = 1,
			["shadowYOffset"] = -1,
			["regionType"] = "text",
			["xOffset"] = 652,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["fixedWidth"] = 200,
			["displayText_format_p_time_precision"] = 1,
			["displayText"] = "%c\n",
			["semver"] = "1.0.0",
			["config"] = {
			},
			["justify"] = "LEFT",
			["tocversion"] = 20501,
			["id"] = "latency",
			["displayText_format_p_time_dynamic_threshold"] = 60,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["selfPoint"] = "BOTTOM",
			["uid"] = "CUGQf18gDfG",
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["wordWrap"] = "WordWrap",
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["information"] = {
			},
			["url"] = "",
		},
		["WOTF"] = {
			["iconSource"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["yOffset"] = -337.7777099609375,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = true,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["track"] = "cooldown",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["use_remaining"] = false,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Cooldown Progress (Spell)",
						["use_exact_spellName"] = true,
						["realSpellName"] = 7744,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["type"] = "spell",
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["use_track"] = true,
						["spellName"] = 7744,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_offset"] = 1,
					["border_size"] = 10,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Gladdy Tooltip round",
					["type"] = "subborder",
				}, -- [2]
			},
			["height"] = 50,
			["load"] = {
				["use_class"] = true,
				["use_race"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["single"] = "Scourge",
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["regionType"] = "icon",
			["displayIcon"] = 136187,
			["cooldown"] = true,
			["authorOptions"] = {
			},
			["xOffset"] = -555.2334365844727,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["zoom"] = 0,
			["cooldownTextDisabled"] = false,
			["config"] = {
			},
			["frameStrata"] = 1,
			["id"] = "WOTF",
			["width"] = 50,
			["useCooldownModRate"] = true,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["uid"] = "IPzpPhZljg3",
			["inverse"] = true,
			["desc"] = "Displays Will of the Forsaken cooldown icon.",
			["conditions"] = {
			},
			["information"] = {
			},
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
		},
		["Inner Fire REBUFF!"] = {
			["iconSource"] = -1,
			["wagoID"] = "EJSv8n-lB",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "6000",
						["useStacks"] = false,
						["auranames"] = {
							"Inner Fire", -- [1]
						},
						["matchesShowOn"] = "showOnMissing",
						["unit"] = "player",
						["stacks"] = "5",
						["match_count"] = "1",
						["debuffType"] = "HELPFUL",
						["useName"] = true,
						["stacksOperator"] = "<=",
						["useExactSpellId"] = false,
						["event"] = "Health",
						["subeventSuffix"] = "_CAST_START",
						["type"] = "aura2",
						["match_countOperator"] = "<",
						["spellIds"] = {
						},
						["names"] = {
						},
						["remOperator"] = "<=",
						["auraspellids"] = {
							"11025", -- [1]
							"10952", -- [2]
							"7128", -- [3]
							"1254", -- [4]
							"1006", -- [5]
							"588", -- [6]
							"11026", -- [7]
							"10951", -- [8]
							"624", -- [9]
							"7130", -- [10]
							"1252", -- [11]
							"7129", -- [12]
							"602", -- [13]
							"609", -- [14]
							"1253", -- [15]
							"1007", -- [16]
						},
						["subeventPrefix"] = "SPELL",
						["useRem"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 6,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_size"] = 14,
					["type"] = "subborder",
					["border_color"] = {
						0.9921568627450981, -- [1]
						1, -- [2]
						0.9686274509803922, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "None",
					["border_offset"] = 1,
				}, -- [2]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["glowXOffset"] = 0,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						0, -- [2]
						0.07450980392156863, -- [3]
						1, -- [4]
					},
					["useGlowColor"] = false,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glow"] = true,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 48,
			["load"] = {
				["ingroup"] = {
				},
				["use_level"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["level_operator"] = ">=",
				["use_class"] = true,
				["zoneIds"] = "",
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
						["MAGE"] = true,
						["PRIEST"] = true,
					},
				},
				["level"] = "3",
				["spec"] = {
					["multi"] = {
					},
				},
				["use_alive"] = true,
				["use_never"] = false,
				["size"] = {
					["single"] = "pvp",
					["multi"] = {
						["scenario"] = true,
						["ten"] = true,
						["twentyfive"] = true,
						["fortyman"] = true,
						["ratedpvp"] = true,
						["party"] = true,
						["ratedarena"] = true,
						["flexible"] = true,
						["arena"] = true,
						["twenty"] = true,
						["pvp"] = true,
					},
				},
			},
			["anchorFrameType"] = "SCREEN",
			["source"] = "import",
			["useCooldownModRate"] = true,
			["url"] = "",
			["icon"] = true,
			["cooldown"] = false,
			["anchorFrameFrame"] = "PlayerFrame",
			["regionType"] = "icon",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [1]
			},
			["useTooltip"] = false,
			["desc"] = "Inner Fire at the right side of the screen to rebuff it!",
			["config"] = {
			},
			["frameStrata"] = 1,
			["semver"] = "1.0.5",
			["zoom"] = 0,
			["auto"] = true,
			["tocversion"] = 20502,
			["id"] = "Inner Fire REBUFF!",
			["cooldownTextDisabled"] = false,
			["alpha"] = 1,
			["width"] = 48,
			["color"] = {
				0.984313725490196, -- [1]
				0.9725490196078431, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = ")GOgtvSY(WA",
			["inverse"] = false,
			["xOffset"] = 430,
			["displayIcon"] = 135932,
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["selfPoint"] = "CENTER",
		},
		["Shield P1"] = {
			["xOffset"] = -39.00000610351562,
			["yOffset"] = 0.568896484375,
			["anchorPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["useStacks"] = false,
						["auranames"] = {
							"6788", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["unitExists"] = false,
						["specificUnit"] = "party1",
						["debuffType"] = "HARMFUL",
						["useName"] = true,
						["useExactSpellId"] = false,
						["useTotal"] = false,
						["event"] = "Health",
						["spellIds"] = {
						},
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "member",
						["type"] = "aura2",
						["useRem"] = false,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["rotation"] = 0,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 43,
			["rotate"] = false,
			["load"] = {
				["use_class"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["use_ignoreNameRealm"] = false,
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
						["PALADIN"] = true,
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
			["mirror"] = false,
			["anchorFrameFrame"] = "PartyMemberFrame1",
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\UI-PartyFlash-Highlight_Shield",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desc"] = "Shield debuff visualisation...",
			["discrete_rotation"] = 0,
			["authorOptions"] = {
			},
			["id"] = "Shield P1",
			["alpha"] = 1,
			["frameStrata"] = 4,
			["width"] = 43,
			["uid"] = "cec9bPRUhEz",
			["config"] = {
			},
			["inverse"] = false,
			["anchorFrameType"] = "SELECTFRAME",
			["conditions"] = {
			},
			["information"] = {
			},
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
		},
		["Shield P2"] = {
			["authorOptions"] = {
			},
			["yOffset"] = 0.568896484375,
			["anchorPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["useStacks"] = false,
						["auranames"] = {
							"6788", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["names"] = {
						},
						["unitExists"] = false,
						["specificUnit"] = "party2",
						["debuffType"] = "HARMFUL",
						["type"] = "aura2",
						["useExactSpellId"] = false,
						["useTotal"] = false,
						["event"] = "Health",
						["spellIds"] = {
						},
						["unit"] = "member",
						["subeventPrefix"] = "SPELL",
						["useName"] = true,
						["subeventSuffix"] = "_CAST_START",
						["useRem"] = false,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["rotation"] = 0,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 43,
			["rotate"] = false,
			["load"] = {
				["use_class"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["use_ignoreNameRealm"] = false,
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
						["PALADIN"] = true,
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
			["mirror"] = false,
			["anchorFrameFrame"] = "PartyMemberFrame2",
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\UI-PartyFlash-Highlight_Shield",
			["selfPoint"] = "CENTER",
			["desc"] = "Shield debuff visualisation...",
			["discrete_rotation"] = 0,
			["xOffset"] = -39.00000610351562,
			["id"] = "Shield P2",
			["anchorFrameType"] = "SELECTFRAME",
			["frameStrata"] = 4,
			["width"] = 43,
			["uid"] = "(gtYCxXZiEX",
			["config"] = {
			},
			["inverse"] = false,
			["alpha"] = 1,
			["conditions"] = {
			},
			["information"] = {
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["AURA MASTERY target"] = {
			["color"] = {
				1, -- [1]
				0, -- [2]
				0.07058823529411765, -- [3]
				1, -- [4]
			},
			["yOffset"] = -15,
			["anchorPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["useRem"] = false,
						["type"] = "aura2",
						["useStacks"] = false,
						["auranames"] = {
							"31821", -- [1]
						},
						["useTotal"] = false,
						["matchesShowOn"] = "showOnActive",
						["event"] = "Health",
						["unit"] = "target",
						["unitExists"] = false,
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
						},
						["names"] = {
						},
						["useName"] = true,
						["subeventPrefix"] = "SPELL",
						["useExactSpellId"] = false,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["rotation"] = 0,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 130,
			["rotate"] = false,
			["load"] = {
				["use_class"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["use_ignoreNameRealm"] = false,
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
						["PALADIN"] = true,
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
			["mirror"] = false,
			["anchorFrameFrame"] = "TargetFrame",
			["regionType"] = "texture",
			["blendMode"] = "ADD",
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\UI-FOCUSFRAME-LARGE-FLASH",
			["desc"] = "AURA MASTERY target highlight texture...",
			["xOffset"] = -11,
			["discrete_rotation"] = 0,
			["authorOptions"] = {
			},
			["id"] = "AURA MASTERY target",
			["width"] = 256,
			["frameStrata"] = 2,
			["anchorFrameType"] = "SELECTFRAME",
			["uid"] = "25IZogHGlrc",
			["config"] = {
			},
			["inverse"] = false,
			["alpha"] = 1,
			["conditions"] = {
			},
			["information"] = {
			},
			["selfPoint"] = "CENTER",
		},
		["AURA MASTERY focus"] = {
			["xOffset"] = -11,
			["yOffset"] = -15,
			["anchorPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["useStacks"] = false,
						["useExactSpellId"] = false,
						["useTotal"] = false,
						["matchesShowOn"] = "showOnActive",
						["event"] = "Health",
						["unit"] = "focus",
						["unitExists"] = false,
						["auranames"] = {
							"31821", -- [1]
						},
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["useName"] = true,
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["useRem"] = false,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["rotation"] = 0,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 130,
			["rotate"] = false,
			["load"] = {
				["use_class"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["use_ignoreNameRealm"] = false,
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
						["PALADIN"] = true,
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
			["mirror"] = false,
			["anchorFrameFrame"] = "FocusFrame",
			["regionType"] = "texture",
			["blendMode"] = "ADD",
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\UI-FOCUSFRAME-LARGE-FLASH",
			["discrete_rotation"] = 0,
			["color"] = {
				1, -- [1]
				0, -- [2]
				0.02745098039215686, -- [3]
				1, -- [4]
			},
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desc"] = "AURA MASTERY focus highlight texture...",
			["id"] = "AURA MASTERY focus",
			["anchorFrameType"] = "SELECTFRAME",
			["frameStrata"] = 2,
			["width"] = 256,
			["uid"] = "9BBiT8OblIu",
			["config"] = {
			},
			["inverse"] = false,
			["alpha"] = 1,
			["conditions"] = {
			},
			["information"] = {
			},
			["authorOptions"] = {
			},
		},
		["Vampiric Embrace REBUFF!"] = {
			["iconSource"] = -1,
			["wagoID"] = "EJSv8n-lB",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "6000",
						["useStacks"] = false,
						["auranames"] = {
							"Vampiric Embrace", -- [1]
						},
						["matchesShowOn"] = "showOnMissing",
						["subeventPrefix"] = "SPELL",
						["stacks"] = "5",
						["match_count"] = "1",
						["debuffType"] = "HELPFUL",
						["useName"] = true,
						["stacksOperator"] = "<=",
						["useExactSpellId"] = false,
						["event"] = "Health",
						["unit"] = "player",
						["auraspellids"] = {
							"11025", -- [1]
							"10952", -- [2]
							"7128", -- [3]
							"1254", -- [4]
							"1006", -- [5]
							"588", -- [6]
							"11026", -- [7]
							"10951", -- [8]
							"624", -- [9]
							"7130", -- [10]
							"1252", -- [11]
							"7129", -- [12]
							"602", -- [13]
							"609", -- [14]
							"1253", -- [15]
							"1007", -- [16]
						},
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
						},
						["names"] = {
						},
						["remOperator"] = "<=",
						["match_countOperator"] = "<",
						["type"] = "aura2",
						["useRem"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desc"] = "Vampiric Embrac  at the right side of the screen to rebuff it!",
			["version"] = 6,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_offset"] = 1,
					["border_size"] = 14,
					["border_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Details BarBorder 1",
					["type"] = "subborder",
				}, -- [2]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glow"] = true,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 48,
			["load"] = {
				["ingroup"] = {
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["level_operator"] = ">=",
				["use_class"] = true,
				["size"] = {
					["single"] = "pvp",
					["multi"] = {
						["scenario"] = true,
						["ten"] = true,
						["twentyfive"] = true,
						["fortyman"] = true,
						["ratedpvp"] = true,
						["flexible"] = true,
						["ratedarena"] = true,
						["party"] = true,
						["arena"] = true,
						["twenty"] = true,
						["pvp"] = true,
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["level"] = "3",
				["use_level"] = false,
				["use_alive"] = true,
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
						["MAGE"] = true,
						["PRIEST"] = true,
					},
				},
				["zoneIds"] = "",
			},
			["width"] = 48,
			["source"] = "import",
			["alpha"] = 1,
			["url"] = "",
			["selfPoint"] = "CENTER",
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
			},
			["anchorFrameFrame"] = "PlayerFrame",
			["regionType"] = "icon",
			["displayIcon"] = 135932,
			["icon"] = true,
			["desaturate"] = false,
			["uid"] = "jpzbH4hE5uM",
			["frameStrata"] = 1,
			["semver"] = "1.0.5",
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 20502,
			["id"] = "Vampiric Embrace REBUFF!",
			["zoom"] = 0,
			["useCooldownModRate"] = true,
			["anchorFrameType"] = "SCREEN",
			["xOffset"] = 372,
			["config"] = {
			},
			["inverse"] = false,
			["useTooltip"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [1]
			},
			["cooldown"] = false,
			["authorOptions"] = {
			},
		},
	},
	["dbVersion"] = 53,
	["editor_font_size"] = 12,
	["RealTimeProfilingWindow"] = {
		["xOffset"] = 203.3777770996094,
		["yOffset"] = -182.7555541992188,
	},
	["minimap"] = {
		["minimapPos"] = 228.8875173730628,
		["hide"] = true,
	},
	["lastUpgrade"] = 1659733990,
	["ProfilingWindow"] = {
		["xOffset"] = 654.64453125,
		["yOffset"] = -234,
	},
	["login_squelch_time"] = 10,
	["registered"] = {
	},
	["lastArchiveClear"] = 1659733987,
	["frame"] = {
		["xOffset"] = -413.3778076171875,
		["yOffset"] = -38.93408203125,
		["height"] = 657.888671875,
		["width"] = 750,
	},
	["editor_theme"] = "Monokai",
}
