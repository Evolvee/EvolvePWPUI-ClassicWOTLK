
WeakAurasSaved = {
	["dynamicIconCache"] = {
	},
	["editor_tab_spaces"] = 4,
	["displays"] = {
		["Jaraxxus - Legion Flames"] = {
			["iconSource"] = 0,
			["wagoID"] = "A5ytftEJV",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "https://wago.io/TemsToGC/18",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"66197", -- [1]
						},
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["useName"] = true,
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "function(trigger)\n    return trigger[1]\nend",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 66,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_size"] = 1,
					["type"] = "subborder",
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_offset"] = 1,
				}, -- [2]
				{
					["glowFrequency"] = 0.2,
					["type"] = "subglow",
					["glowXOffset"] = 0,
					["glowType"] = "Pixel",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowDuration"] = 1,
					["useGlowColor"] = false,
					["glowScale"] = 1,
					["glowThickness"] = 1.5,
					["glow"] = true,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_time_mod_rate"] = true,
					["type"] = "subtext",
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_text_format_p_time_format"] = 0,
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "BOTTOM",
					["anchorYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_precision"] = 1,
				}, -- [4]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "KITE FIRE",
					["text_text_format_p_time_mod_rate"] = true,
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_format"] = "timed",
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["type"] = "subtext",
					["text_text_format_n_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["anchorYOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "TOP",
					["text_visible"] = true,
					["text_text_format_p_time_format"] = 0,
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_precision"] = 1,
				}, -- [5]
			},
			["height"] = 41,
			["load"] = {
				["use_encounterid"] = true,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "633, 1087",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["config"] = {
			},
			["cooldownEdge"] = false,
			["xOffset"] = 0,
			["regionType"] = "icon",
			["actions"] = {
				["start"] = {
					["message"] = "",
					["do_sound"] = true,
					["message_type"] = "SAY",
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Glass.mp3",
					["do_message"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["cooldown"] = true,
			["conditions"] = {
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["zoom"] = 0.3,
			["anchorFrameType"] = "SCREEN",
			["cooldownTextDisabled"] = true,
			["semver"] = "2.2.2",
			["tocversion"] = 30402,
			["id"] = "Jaraxxus - Legion Flames",
			["useCooldownModRate"] = true,
			["frameStrata"] = 1,
			["width"] = 41,
			["alpha"] = 1,
			["uid"] = "CLxjId5kWL0",
			["inverse"] = false,
			["parent"] = "Tems ToGC - Icons",
			["displayIcon"] = 135802,
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
		["Beasts - Burning Bile Debuff"] = {
			["iconSource"] = 0,
			["wagoID"] = "A5ytftEJV",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "https://wago.io/TemsToGC/18",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"66869", -- [1]
						},
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["useName"] = true,
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"66823", -- [1]
						},
						["group_countOperator"] = ">",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["unit"] = "group",
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
						},
						["names"] = {
						},
						["group_count"] = "0",
						["useName"] = true,
						["useGroup_count"] = true,
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(trigger)\n    return trigger[1]\nend",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 66,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_size"] = 1,
					["type"] = "subborder",
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_offset"] = 1,
				}, -- [2]
				{
					["glowFrequency"] = 0.2,
					["type"] = "subglow",
					["glowXOffset"] = 0,
					["glowType"] = "Pixel",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowDuration"] = 1,
					["useGlowColor"] = false,
					["glowScale"] = 1,
					["glowThickness"] = 1.5,
					["glow"] = true,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_time_mod_rate"] = true,
					["type"] = "subtext",
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_text_format_p_time_format"] = 0,
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "BOTTOM",
					["anchorYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_precision"] = 1,
				}, -- [4]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "BILE",
					["text_text_format_p_time_mod_rate"] = true,
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_format"] = "timed",
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["type"] = "subtext",
					["text_text_format_n_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["anchorYOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "TOP",
					["text_visible"] = true,
					["text_text_format_p_time_format"] = 0,
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_precision"] = 1,
				}, -- [5]
			},
			["height"] = 41,
			["load"] = {
				["use_encounterid"] = true,
				["encounterid"] = "629, 1088",
				["use_zoneIds"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["config"] = {
			},
			["cooldownEdge"] = false,
			["xOffset"] = 0,
			["regionType"] = "icon",
			["actions"] = {
				["start"] = {
					["message"] = "{rt2}",
					["do_message"] = true,
					["message_type"] = "SAY",
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["cooldown"] = true,
			["conditions"] = {
				{
					["check"] = {
						["op"] = "<",
						["checks"] = {
							{
								["trigger"] = 1,
								["op"] = "<",
								["value"] = "23",
								["variable"] = "expirationTime",
							}, -- [1]
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 1,
							}, -- [2]
						},
						["value"] = "23",
						["variable"] = "expirationTime",
						["trigger"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "{rt2}",
								["message_type"] = "SAY",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<",
						["value"] = "22",
						["variable"] = "expirationTime",
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "{rt2}",
								["message_type"] = "SAY",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<",
						["value"] = "21",
						["variable"] = "expirationTime",
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "{rt2}",
								["message_type"] = "SAY",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = -2,
						["op"] = "<",
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["op"] = "<",
								["value"] = "20",
								["variable"] = "expirationTime",
							}, -- [1]
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "{rt2}",
								["message_type"] = "SAY",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [4]
				{
					["check"] = {
						["trigger"] = -2,
						["op"] = "<",
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["op"] = "<",
								["value"] = "19",
								["variable"] = "expirationTime",
							}, -- [1]
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "{rt2}",
								["message_type"] = "SAY",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [5]
				{
					["check"] = {
						["trigger"] = -2,
						["op"] = "<",
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["op"] = "<",
								["value"] = "18",
								["variable"] = "expirationTime",
							}, -- [1]
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "{rt2}",
								["message_type"] = "SAY",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [6]
				{
					["check"] = {
						["trigger"] = -2,
						["op"] = "<",
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["op"] = "<",
								["value"] = "17",
								["variable"] = "expirationTime",
							}, -- [1]
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "{rt2}",
								["message_type"] = "SAY",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [7]
				{
					["check"] = {
						["trigger"] = -2,
						["op"] = "<",
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["op"] = "<",
								["value"] = "16",
								["variable"] = "expirationTime",
							}, -- [1]
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "{rt2}",
								["message_type"] = "SAY",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [8]
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["zoom"] = 0.3,
			["anchorFrameType"] = "SCREEN",
			["cooldownTextDisabled"] = true,
			["semver"] = "2.2.2",
			["tocversion"] = 30402,
			["id"] = "Beasts - Burning Bile Debuff",
			["useCooldownModRate"] = true,
			["frameStrata"] = 1,
			["width"] = 41,
			["alpha"] = 1,
			["uid"] = "6yamYY5W96o",
			["inverse"] = false,
			["parent"] = "Tems ToGC - Icons",
			["displayIcon"] = "236207",
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
		["Champions - Classes Nameplate"] = {
			["iconSource"] = -1,
			["wagoID"] = "A5ytftEJV",
			["parent"] = "Tems ToGC - Nameplates [DO NOT MOVE]",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "RIGHT",
			["cooldownSwipe"] = true,
			["url"] = "https://wago.io/TemsToGC/18",
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
						["subeventSuffix"] = "_CAST_START",
						["use_character"] = false,
						["unit"] = "nameplate",
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["event"] = "Unit Characteristics",
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 66,
			["keepAspectRatio"] = false,
			["selfPoint"] = "LEFT",
			["desaturate"] = false,
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["glowXOffset"] = 0,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowDuration"] = 1,
					["useGlowColor"] = false,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glow"] = false,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
			},
			["height"] = 40,
			["load"] = {
				["use_encounterid"] = true,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "637, 1086",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["zoom"] = 0,
			["cooldownEdge"] = false,
			["regionType"] = "icon",
			["xOffset"] = 5,
			["icon"] = true,
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
			["config"] = {
			},
			["useCooldownModRate"] = true,
			["cooldownTextDisabled"] = false,
			["semver"] = "2.2.2",
			["tocversion"] = 30402,
			["id"] = "Champions - Classes Nameplate",
			["width"] = 40,
			["frameStrata"] = 1,
			["anchorFrameType"] = "NAMEPLATE",
			["alpha"] = 1,
			["uid"] = "LB80Rl1yGDW",
			["inverse"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 1,
								["op"] = "==",
								["value"] = "34461",
								["variable"] = "npcId",
							}, -- [1]
							{
								["trigger"] = 1,
								["op"] = "==",
								["value"] = "34458",
								["variable"] = "npcId",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = "135771",
							["property"] = "displayIcon",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 1,
								["op"] = "==",
								["value"] = "34469",
								["variable"] = "npcId",
							}, -- [1]
							{
								["trigger"] = 1,
								["op"] = "==",
								["value"] = "34459",
								["variable"] = "npcId",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = 136041,
							["property"] = "displayIcon",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 1,
								["op"] = "==",
								["value"] = "34460",
								["variable"] = "npcId",
							}, -- [1]
							{
								["trigger"] = 1,
								["op"] = "==",
								["value"] = "34451",
								["variable"] = "npcId",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = 136096,
							["property"] = "displayIcon",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 1,
								["op"] = "==",
								["value"] = "34467",
								["variable"] = "npcId",
							}, -- [1]
							{
								["trigger"] = 1,
								["op"] = "==",
								["value"] = "34448",
								["variable"] = "npcId",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = 132222,
							["property"] = "displayIcon",
						}, -- [1]
					},
				}, -- [4]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 1,
								["op"] = "==",
								["value"] = "34468",
								["variable"] = "npcId",
							}, -- [1]
							{
								["trigger"] = 1,
								["op"] = "==",
								["value"] = "34449",
								["variable"] = "npcId",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = "626001",
							["property"] = "displayIcon",
						}, -- [1]
					},
				}, -- [5]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 1,
								["op"] = "==",
								["value"] = "34465",
								["variable"] = "npcId",
							}, -- [1]
							{
								["trigger"] = 1,
								["op"] = "==",
								["value"] = "34445",
								["variable"] = "npcId",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = 135920,
							["property"] = "displayIcon",
						}, -- [1]
					},
				}, -- [6]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 1,
								["op"] = "==",
								["value"] = "34471",
								["variable"] = "npcId",
							}, -- [1]
							{
								["trigger"] = 1,
								["op"] = "==",
								["value"] = "34456",
								["variable"] = "npcId",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = 132347,
							["property"] = "displayIcon",
						}, -- [1]
					},
				}, -- [7]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 1,
								["op"] = "==",
								["value"] = "34466",
								["variable"] = "npcId",
							}, -- [1]
							{
								["trigger"] = 1,
								["op"] = "==",
								["value"] = "34447",
								["variable"] = "npcId",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = 135987,
							["property"] = "displayIcon",
						}, -- [1]
					},
				}, -- [8]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 1,
								["op"] = "==",
								["value"] = "34473",
								["variable"] = "npcId",
							}, -- [1]
							{
								["trigger"] = 1,
								["op"] = "==",
								["value"] = "34441",
								["variable"] = "npcId",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = 136200,
							["property"] = "displayIcon",
						}, -- [1]
					},
				}, -- [9]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 1,
								["op"] = "==",
								["value"] = "34472",
								["variable"] = "npcId",
							}, -- [1]
							{
								["trigger"] = 1,
								["op"] = "==",
								["value"] = "34454",
								["variable"] = "npcId",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = 135428,
							["property"] = "displayIcon",
						}, -- [1]
					},
				}, -- [10]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 1,
								["op"] = "==",
								["value"] = "34470",
								["variable"] = "npcId",
							}, -- [1]
							{
								["trigger"] = 1,
								["op"] = "==",
								["value"] = "34444",
								["variable"] = "npcId",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = 136042,
							["property"] = "displayIcon",
						}, -- [1]
					},
				}, -- [11]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 1,
								["op"] = "==",
								["value"] = "34463",
								["variable"] = "npcId",
							}, -- [1]
							{
								["trigger"] = 1,
								["op"] = "==",
								["value"] = "34455",
								["variable"] = "npcId",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = 132314,
							["property"] = "displayIcon",
						}, -- [1]
					},
				}, -- [12]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 1,
								["op"] = "==",
								["value"] = "34474",
								["variable"] = "npcId",
							}, -- [1]
							{
								["trigger"] = 1,
								["op"] = "==",
								["value"] = "34450",
								["variable"] = "npcId",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = "626007",
							["property"] = "displayIcon",
						}, -- [1]
					},
				}, -- [13]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 1,
								["op"] = "==",
								["value"] = "34475",
								["variable"] = "npcId",
							}, -- [1]
							{
								["trigger"] = 1,
								["op"] = "==",
								["value"] = "34453",
								["variable"] = "npcId",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = "626008",
							["property"] = "displayIcon",
						}, -- [1]
					},
				}, -- [14]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 1,
								["op"] = "==",
								["value"] = "35465",
								["variable"] = "npcId",
							}, -- [1]
							{
								["trigger"] = 1,
								["op"] = "==",
								["value"] = "35610",
								["variable"] = "npcId",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = 132161,
							["property"] = "displayIcon",
						}, -- [1]
						{
							["value"] = 25,
							["property"] = "height",
						}, -- [2]
						{
							["value"] = 25,
							["property"] = "width",
						}, -- [3]
					},
				}, -- [15]
			},
			["cooldown"] = true,
			["authorOptions"] = {
			},
		},
		["BM Indicator (HUMAN)"] = {
			["iconSource"] = 0,
			["xOffset"] = -555.2334365844727,
			["yOffset"] = -337.7777099609375,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = true,
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
						["track"] = "cooldown",
						["itemName"] = 42130,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["unit"] = "player",
						["itemSlot"] = 14,
						["debuffType"] = "HELPFUL",
						["type"] = "item",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["use_itemName"] = true,
						["event"] = "Cooldown Progress (Item)",
						["use_exact_spellName"] = true,
						["use_itemSlot"] = true,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_remaining"] = false,
						["spellName"] = 7744,
						["realSpellName"] = 7744,
						["use_track"] = true,
						["use_unit"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 66,
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
			["desc"] = "Displays BM trinket icon cooldown.",
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
				["use_race"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["race"] = {
					["single"] = "Human",
					["multi"] = {
						["Scourge"] = true,
					},
				},
				["use_itemequiped"] = true,
				["itemequiped"] = 42130,
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
			["displayIcon"] = "132344",
			["cooldown"] = true,
			["selfPoint"] = "CENTER",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["cooldownTextDisabled"] = false,
			["zoom"] = 0,
			["config"] = {
			},
			["frameStrata"] = 1,
			["id"] = "BM Indicator (HUMAN)",
			["anchorFrameType"] = "SCREEN",
			["useCooldownModRate"] = true,
			["width"] = 50,
			["alpha"] = 1,
			["uid"] = "xxLCP6RR)gh",
			["inverse"] = true,
			["authorOptions"] = {
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = false,
						}, -- [2]
					},
				}, -- [1]
			},
			["information"] = {
				["forceEvents"] = true,
			},
			["icon"] = true,
		},
		["Tems ToGC - Glow [DO NOT MOVE]"] = {
			["controlledChildren"] = {
				"ToGC - Curse Glow", -- [1]
				"ToGC - Poison Glow", -- [2]
				"ToGC - Disease Glow", -- [3]
				"ToGC - Magic Glow", -- [4]
				"Beasts - Fire Bomb Glow", -- [5]
				"Beasts - Burning Bile Glow", -- [6]
				"Beasts - Paralytic Toxic Glow", -- [7]
				"Jaraxxus - Incinerate Flesh Glow", -- [8]
				"Champions - Focus Target Glow", -- [9]
				"Twins - Touch Glow", -- [10]
				"Anubarak - Penetrating Cold Glow", -- [11]
				"Anubarak - Acid Mandibles", -- [12]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["wagoID"] = "A5ytftEJV",
			["parent"] = "ToGC",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["url"] = "https://wago.io/TemsToGC/18",
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
						["names"] = {
						},
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["event"] = "Health",
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["internalVersion"] = 66,
			["selfPoint"] = "CENTER",
			["version"] = 18,
			["subRegions"] = {
			},
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
			},
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["source"] = "import",
			["scale"] = 1,
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "group",
			["borderSize"] = 2,
			["config"] = {
			},
			["borderOffset"] = 4,
			["semver"] = "2.2.2",
			["tocversion"] = 30402,
			["id"] = "Tems ToGC - Glow [DO NOT MOVE]",
			["groupIcon"] = "237274",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
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
			["borderInset"] = 1,
			["authorOptions"] = {
			},
			["uid"] = "i7ulXd(eMRf",
			["conditions"] = {
			},
			["information"] = {
			},
			["xOffset"] = 0,
		},
		["Twins - Touch Debuff"] = {
			["iconSource"] = -1,
			["wagoID"] = "A5ytftEJV",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "https://wago.io/TemsToGC/18",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["use_amount"] = true,
						["spellId"] = "66881",
						["auranames"] = {
							"65950", -- [1]
							"66001", -- [2]
						},
						["duration"] = "7",
						["message_operator"] = "find('%s')",
						["subeventPrefix"] = "SPELL",
						["destUnit"] = "player",
						["amount"] = "0",
						["debuffType"] = "HARMFUL",
						["useName"] = true,
						["custom_type"] = "event",
						["subeventSuffix"] = "_DAMAGE",
						["unit"] = "player",
						["type"] = "aura2",
						["event"] = "Chat Message",
						["amount_operator"] = "~=",
						["message"] = "glares at",
						["use_spellId"] = true,
						["events"] = "",
						["spellIds"] = {
						},
						["use_message"] = true,
						["use_destUnit"] = true,
						["names"] = {
						},
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 66,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_size"] = 1,
					["type"] = "subborder",
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_offset"] = 1,
				}, -- [2]
				{
					["glowFrequency"] = 0.2,
					["type"] = "subglow",
					["glowXOffset"] = 0,
					["glowType"] = "Pixel",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowDuration"] = 1,
					["useGlowColor"] = false,
					["glowScale"] = 1,
					["glowThickness"] = 1.5,
					["glow"] = true,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_time_mod_rate"] = true,
					["type"] = "subtext",
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_text_format_p_time_format"] = 0,
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "BOTTOM",
					["anchorYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_precision"] = 1,
				}, -- [4]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "GO LIGHT",
					["text_text_format_p_time_mod_rate"] = true,
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_format"] = "timed",
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["type"] = "subtext",
					["text_text_format_n_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["anchorYOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "TOP",
					["text_visible"] = true,
					["text_text_format_p_time_format"] = 0,
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_precision"] = 1,
				}, -- [5]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "GO SHADOW",
					["text_text_format_p_time_mod_rate"] = true,
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_format"] = "timed",
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["type"] = "subtext",
					["text_text_format_n_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["anchorYOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "TOP",
					["text_visible"] = false,
					["text_text_format_p_time_format"] = 0,
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_precision"] = 1,
				}, -- [6]
			},
			["height"] = 41,
			["load"] = {
				["use_encounterid"] = true,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "641, 1089",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["config"] = {
			},
			["cooldownEdge"] = false,
			["xOffset"] = 0,
			["regionType"] = "icon",
			["actions"] = {
				["start"] = {
					["message"] = "",
					["do_message"] = false,
					["message_type"] = "SAY",
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["cooldown"] = true,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["value"] = "66001",
						["variable"] = "spellId",
					},
					["changes"] = {
						{
							["property"] = "sub.5.text_visible",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "sub.6.text_visible",
						}, -- [2]
					},
				}, -- [1]
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["zoom"] = 0.3,
			["anchorFrameType"] = "SCREEN",
			["cooldownTextDisabled"] = true,
			["semver"] = "2.2.2",
			["tocversion"] = 30402,
			["id"] = "Twins - Touch Debuff",
			["useCooldownModRate"] = true,
			["frameStrata"] = 1,
			["width"] = 41,
			["alpha"] = 1,
			["uid"] = "sNBJN44VvZX",
			["inverse"] = false,
			["parent"] = "Tems ToGC - Icons",
			["displayIcon"] = "",
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
			["internalVersion"] = 66,
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
			["desc"] = "Vampiric Embrace  at the right side of the screen to rebuff it!",
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
					["glowDuration"] = 1,
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
			["useTooltip"] = false,
			["desaturate"] = false,
			["url"] = "",
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["anchorFrameFrame"] = "PlayerFrame",
			["regionType"] = "icon",
			["displayIcon"] = 135932,
			["selfPoint"] = "CENTER",
			["icon"] = true,
			["uid"] = "jpzbH4hE5uM",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["zoom"] = 0,
			["auto"] = true,
			["tocversion"] = 20502,
			["id"] = "Vampiric Embrace REBUFF!",
			["semver"] = "1.0.5",
			["useCooldownModRate"] = true,
			["anchorFrameType"] = "SCREEN",
			["cooldownTextDisabled"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["xOffset"] = 372,
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
		["ToGC - Disease Glow"] = {
			["outline"] = "OUTLINE",
			["iconSource"] = 0,
			["wagoID"] = "A5ytftEJV",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["shadowYOffset"] = -1,
			["anchorPoint"] = "CENTER",
			["frameStrata"] = 1,
			["cooldownSwipe"] = true,
			["displayText_format_p_time_format"] = 0,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/TemsToGC/18",
			["actions"] = {
				["start"] = {
					["glow_color"] = {
						0.54509803921569, -- [1]
						0.54901960784314, -- [2]
						0.24313725490196, -- [3]
						1, -- [4]
					},
					["glow_thickness"] = 3,
					["glow_action"] = "show",
					["glow_frequency"] = 0.2,
					["glow_lines"] = 8,
					["glow_length"] = 15,
					["do_glow"] = true,
					["use_glow_color"] = true,
					["glow_type"] = "Pixel",
					["glow_frame_type"] = "UNITFRAME",
				},
				["finish"] = {
					["hide_all_glows"] = true,
				},
				["init"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["useMatch_count"] = false,
						["spellId"] = "28783",
						["auranames"] = {
							"30081", -- [1]
						},
						["duration"] = "2",
						["group_count"] = "0",
						["group_countOperator"] = ">",
						["showClones"] = true,
						["use_debuffClass"] = true,
						["subeventSuffix"] = "_CAST_START",
						["use_includePets"] = true,
						["use_spellId"] = true,
						["use_status"] = false,
						["useGroup_count"] = false,
						["includePets"] = "PlayersAndPets",
						["unit"] = "raid",
						["use_aggro"] = true,
						["useExactSpellId"] = false,
						["spellName"] = "Impale",
						["debuffType"] = "HARMFUL",
						["names"] = {
						},
						["type"] = "aura2",
						["match_countOperator"] = ">",
						["auraspellids"] = {
						},
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["threatUnit"] = "target",
						["useName"] = false,
						["use_threatUnit"] = true,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["unevent"] = "timed",
						["debuffClass"] = {
							["disease"] = true,
						},
						["match_count"] = "0",
						["useAffected"] = false,
						["event"] = "Combat Log",
					},
					["untrigger"] = {
						["threatUnit"] = "target",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["displayText_format_p_time_mod_rate"] = true,
			["internalVersion"] = 66,
			["keepAspectRatio"] = false,
			["wordWrap"] = "WordWrap",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayText"] = "",
			["yOffset"] = 0,
			["desaturate"] = false,
			["parent"] = "Tems ToGC - Glow [DO NOT MOVE]",
			["font"] = "Accidental Presidency",
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 64,
			["cooldownEdge"] = true,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
						["PRIEST"] = true,
					},
				},
				["use_encounterid"] = true,
				["use_zone"] = false,
				["zoneIds"] = "",
				["encounterid"] = "629, 633, 637, 641, 645",
				["use_zoneIds"] = false,
				["zone"] = "",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["icon"] = true,
			["displayText_format_p_format"] = "timed",
			["fontSize"] = 18,
			["source"] = "import",
			["displayText_format_p_time_legacy_floor"] = false,
			["shadowXOffset"] = 1,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["preset"] = "spiralandpulse",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["displayText_format_p_time_dynamic_threshold"] = 60,
			["auto"] = false,
			["regionType"] = "text",
			["automaticWidth"] = "Auto",
			["selfPoint"] = "CENTER",
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["fixedWidth"] = 200,
			["xOffset"] = 0,
			["displayText_format_p_time_precision"] = 1,
			["zoom"] = 0,
			["config"] = {
			},
			["cooldownTextDisabled"] = false,
			["semver"] = "2.2.2",
			["tocversion"] = 30402,
			["id"] = "ToGC - Disease Glow",
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["width"] = 64,
			["justify"] = "LEFT",
			["uid"] = "LUwQd8)7NmC",
			["inverse"] = false,
			["useCooldownModRate"] = true,
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["displayIcon"] = 136160,
		},
		["Twins - Twin Spike Debuff"] = {
			["iconSource"] = -1,
			["wagoID"] = "A5ytftEJV",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "https://wago.io/TemsToGC/18",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"66075", -- [1]
						},
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["useName"] = true,
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "function(trigger)\n    return trigger[1]\nend",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 66,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_size"] = 1,
					["type"] = "subborder",
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_offset"] = 1,
				}, -- [2]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_time_mod_rate"] = true,
					["type"] = "subtext",
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_text_format_p_time_format"] = 0,
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "BOTTOM",
					["anchorYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_precision"] = 1,
				}, -- [3]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_text_format_p_time_mod_rate"] = true,
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_format"] = "timed",
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["type"] = "subtext",
					["text_text_format_n_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["anchorYOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "TOP",
					["text_visible"] = true,
					["text_text_format_p_time_format"] = 0,
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_precision"] = 1,
				}, -- [4]
			},
			["height"] = 41,
			["load"] = {
				["use_encounterid"] = true,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "641, 1089",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["config"] = {
			},
			["cooldownEdge"] = false,
			["xOffset"] = 0,
			["regionType"] = "icon",
			["actions"] = {
				["start"] = {
					["message"] = "",
					["do_message"] = false,
					["message_type"] = "SAY",
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["cooldown"] = true,
			["conditions"] = {
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["zoom"] = 0.3,
			["anchorFrameType"] = "SCREEN",
			["cooldownTextDisabled"] = true,
			["semver"] = "2.2.2",
			["tocversion"] = 30402,
			["id"] = "Twins - Twin Spike Debuff",
			["useCooldownModRate"] = true,
			["frameStrata"] = 1,
			["width"] = 41,
			["alpha"] = 1,
			["uid"] = "ps56Yk6Ulc0",
			["inverse"] = false,
			["parent"] = "Tems ToGC - Icons",
			["displayIcon"] = "",
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
		["Anubarak - Penetrating Cold Glow"] = {
			["text2Point"] = "CENTER",
			["iconSource"] = 0,
			["text1FontSize"] = 18,
			["authorOptions"] = {
				{
					["type"] = "select",
					["default"] = 5,
					["values"] = {
						"TOP", -- [1]
						"BOTTOM", -- [2]
						"LEFT", -- [3]
						"RIGHT", -- [4]
						"CENTER", -- [5]
						"TOPLEFT", -- [6]
						"TOPRIGHT", -- [7]
						"BOTTOMLEFT", -- [8]
						"BOTTOMRIGHT", -- [9]
					},
					["name"] = "Anchor Point",
					["useDesc"] = false,
					["key"] = "point",
					["width"] = 1,
				}, -- [1]
				{
					["type"] = "select",
					["default"] = 5,
					["values"] = {
						"TOP", -- [1]
						"BOTTOM", -- [2]
						"LEFT", -- [3]
						"RIGHT", -- [4]
						"CENTER", -- [5]
						"TOPLEFT", -- [6]
						"TOPRIGHT", -- [7]
						"BOTTOMLEFT", -- [8]
						"BOTTOMRIGHT", -- [9]
					},
					["name"] = "Relative Point",
					["useDesc"] = false,
					["key"] = "relativePoint",
					["width"] = 1,
				}, -- [2]
				{
					["type"] = "range",
					["useDesc"] = false,
					["max"] = 100,
					["step"] = 1,
					["width"] = 1,
					["min"] = -100,
					["key"] = "Xoff",
					["default"] = 0,
					["name"] = "X Offset",
				}, -- [3]
				{
					["type"] = "range",
					["useDesc"] = false,
					["max"] = 100,
					["step"] = 1,
					["width"] = 1,
					["min"] = -100,
					["key"] = "Yoff",
					["default"] = 0,
					["name"] = "Y Offset",
				}, -- [4]
			},
			["displayText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["displayText_format_p_time_format"] = 0,
			["url"] = "https://wago.io/TemsToGC/18",
			["actions"] = {
				["start"] = {
					["glow_color"] = {
						0.67843137254902, -- [1]
						0.16470588235294, -- [2]
						0.082352941176471, -- [3]
						1, -- [4]
					},
					["glow_thickness"] = 4,
					["glow_action"] = "show",
					["glow_frequency"] = 0.2,
					["glow_lines"] = 8,
					["glow_length"] = 15,
					["do_glow"] = true,
					["use_glow_color"] = true,
					["glow_type"] = "Pixel",
					["glow_frame_type"] = "UNITFRAME",
				},
				["finish"] = {
					["hide_all_glows"] = true,
				},
				["init"] = {
					["custom"] = "aura_env.mark_texture = {\n    [8] = \"Interface\\\\TARGETINGFRAME\\\\UI-RaidTargetingIcon_8\", -- skull\n    [7] = \"Interface\\\\TARGETINGFRAME\\\\UI-RaidTargetingIcon_7\", -- cross\n    [6] = \"Interface\\\\TARGETINGFRAME\\\\UI-RaidTargetingIcon_6\", -- square\n    [5] = \"Interface\\\\TARGETINGFRAME\\\\UI-RaidTargetingIcon_5\", -- moon\n    [4] = \"Interface\\\\TARGETINGFRAME\\\\UI-RaidTargetingIcon_4\", -- triangle\n    [3] = \"Interface\\\\TARGETINGFRAME\\\\UI-RaidTargetingIcon_3\", -- diamond\n    [2] = \"Interface\\\\TARGETINGFRAME\\\\UI-RaidTargetingIcon_2\", -- circle\n    [1] = \"Interface\\\\TARGETINGFRAME\\\\UI-RaidTargetingIcon_1\" -- star\n}\naura_env.points = {\n    [1] = \"TOP\",\n    [2] = \"BOTTOM\",\n    [3] = \"LEFT\",\n    [4] = \"RIGHT\",\n    [5] = \"CENTER\",\n    [6] = \"TOPLEFT\",\n    [7] = \"TOPRIGHT\",\n    [8] = \"BOTTOMLEFT\", \n    [9] = \"BOTTOMRIGHT\",\n}\n\n------------------------------------------------------------------\n-------------- Generic GetFrame with caching ---------------------\n------------------------------------------------------------------\n-- GetFrames(target)\n--  return table of all frames for unit=target or {}\n--\n-- GetFrame(target)\n--  return one frame for unit=target or nil\n--  unitframe addon priority is defined with `frame_priority`\n--  if it can't find a priority patterns, it select a random matching frame\n-- \n\nlocal frame_priority = {\n    -- raid frames\n    [1] = \"^Vd1\", -- vuhdo\n    [2] = \"^Healbot\", -- healbot\n    [3] = \"^GridLayout\", -- grid\n    [4] = \"^Grid2Layout\", -- grid2\n    [5] = \"^ElvUF_RaidGroup\", -- elv\n    [6] = \"^oUF_bdGrid\", -- bdgrid\n    [7] = \"^oUF.*raid\", -- generic oUF\n    [8] = \"^LimeGroup\", -- lime\n    [9] = \"^SUFHeaderraid\", -- suf\n    [10] = \"^CompactRaid\", -- blizz\n    -- party frames\n    [11] = \"^SUFHeaderparty\", --suf\n    [12] = \"^ElvUF_PartyGroup\", -- elv\n    [13] = \"^oUF.*party\", -- generic oUF\n    [14] = \"^PitBull4_Groups_Party\", -- pitbull4\n    [15] = \"^CompactParty\", -- blizz\n    -- player frame\n    [16] = \"^SUFUnitplayer\",\n    [17] = \"^PitBull4_Frames_Player\",\n    [18] = \"^ElvUF_Player\",\n    [19] = \"^oUF.*player\",\n    [20] = \"^PlayerFrame\",\n}\n\nWA_GetFramesCache = WA_GetFramesCache or {}\nif not WA_GetFramesCacheListener then\n    WA_GetFramesCacheListener = CreateFrame(\"Frame\")\n    local f = WA_GetFramesCacheListener\n    f:RegisterEvent(\"PLAYER_REGEN_DISABLED\")\n    f:RegisterEvent(\"PLAYER_REGEN_ENABLED\")\n    f:RegisterEvent(\"GROUP_ROSTER_UPDATE\")\n    f:SetScript(\"OnEvent\", function(self, event, ...)\n            WA_GetFramesCache = {}\n    end)\nend\n\nlocal function GetFrames(target)\n    local function FindButtonsForUnit(frame, target)\n        local results = {}\n        if type(frame) == \"table\" and not frame:IsForbidden() then\n            local type = frame:GetObjectType()\n            if type == \"Frame\" or type == \"Button\" then\n                for _,child in ipairs({frame:GetChildren()}) do\n                    for _,v in pairs(FindButtonsForUnit(child, target)) do\n                        tinsert(results, v)\n                    end\n                end\n            end\n            if type == \"Button\" then\n                local unit = frame:GetAttribute('unit')\n                if unit and frame:IsVisible() and frame:GetName() then\n                    WA_GetFramesCache[frame] = unit\n                    if UnitIsUnit(unit, target) then\n                        -- print(\"F:\", frame:GetName())\n                        tinsert(results, frame)\n                    end\n                end\n            end\n        end\n        return results\n    end\n    \n    if not UnitExists(target) then\n        if type(target) == \"string\" and target:find(\"Player\") then\n            target = select(6,GetPlayerInfoByGUID(target))\n        else\n            target = target:gsub(\" .*\", \"\")\n            if not UnitExists(target) then\n                return {}\n            end\n        end\n    end\n    \n    local results = {}\n    for frame, unit in pairs(WA_GetFramesCache) do\n        --print(\"from cache:\", frame:GetName())\n        if UnitIsUnit(unit, target) then\n            if frame:GetAttribute('unit') == unit then\n                tinsert(results, frame)\n            else\n                results = {}\n                break\n            end\n        end\n    end\n    \n    return #results > 0 and results or FindButtonsForUnit(UIParent, target)\nend\n\nlocal isElvUI = IsAddOnLoaded(\"ElvUI\")\nlocal function WhyElvWhy(frame)\n    if isElvUI and frame and frame:GetName():find(\"^ElvUF_\") and frame.Health then\n        return frame.Health\n    else\n        return frame\n    end\nend\n\n\nfunction aura_env.GetFrame(target)\n    local frames = GetFrames(target)\n    if not frames then return nil end\n    for i=1,#frame_priority do\n        for _,frame in pairs(frames) do\n            if (frame:GetName()):find(frame_priority[i]) then\n                return WhyElvWhy(frame)\n            end\n        end\n    end\n    return WhyElvWhy(frames[1])\nend\n\n--[[\nprint(\"***********\")\nlocal target  = \"player\"\nprint(\"* first frame in priority list :\")\nlocal frame = GetFrame(target)\nif frame then\n    --print(WeakAuras.ShowGlowOverlay(frame))\n    print(frame:GetName())\nend\n\nprint(\"* all frames :\")\nlocal frames = GetFrames(target)\nfor _,frame in pairs(frames) do\n    --print(WeakAuras.ShowGlowOverlay(frame))\n    print(frame:GetName())   \nend\n]]\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
					["do_custom"] = true,
				},
			},
			["displayText_format_p_time_mod_rate"] = true,
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["rotation"] = 0,
			["font"] = "Accidental Presidency",
			["text2FontFlags"] = "OUTLINE",
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
						["PRIEST"] = true,
					},
				},
				["use_encounterid"] = true,
				["use_zone"] = false,
				["zoneIds"] = "150",
				["encounterid"] = "645, 1085",
				["use_zoneIds"] = false,
				["zone"] = "",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["textureWrapMode"] = "CLAMP",
			["glowType"] = "buttonOverlay",
			["shadowXOffset"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["text2FontSize"] = 24,
			["texture"] = "137008",
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 30402,
			["text2Enabled"] = false,
			["uid"] = "SK27I8EF878",
			["displayIcon"] = 136160,
			["outline"] = "OUTLINE",
			["wagoID"] = "A5ytftEJV",
			["parent"] = "Tems ToGC - Glow [DO NOT MOVE]",
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["shadowYOffset"] = -1,
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["automaticWidth"] = "Auto",
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "custom",
						["unevent"] = "timed",
						["custom_type"] = "stateupdate",
						["subeventPrefix"] = "SPELL",
						["duration"] = "1",
						["genericShowOn"] = "showOnActive",
						["names"] = {
						},
						["event"] = "Health",
						["custom"] = "function (allstates)\n    for _, state in pairs(allstates) do\n        state.show = false;\n        state.changed = true;\n    end\n    for unit in WA_IterateGroupMembers() do\n        local mark = GetRaidTargetIndex(unit)\n        if mark then\n            local texture = aura_env.mark_texture[mark]\n            allstates[unit] = {\n                show = true,\n                changed = true,\n                texture = texture,\n                unit = unit,\n                flag = true,\n            }\n            \n        end\n        \n    end\n    return true\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["events"] = "RAID_TARGET_UPDATE",
						["spellIds"] = {
						},
						["check"] = "event",
						["unit"] = "player",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["showClones"] = true,
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["group_countOperator"] = ">",
						["event"] = "Health",
						["unit"] = "raid",
						["useGroup_count"] = false,
						["names"] = {
						},
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["group_count"] = "0",
						["auranames"] = {
							"66013", -- [1]
						},
						["useName"] = true,
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["displayText_format_p_format"] = "timed",
			["displayText_format_p_time_legacy_floor"] = false,
			["cooldown"] = true,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["preset"] = "spiralandpulse",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["alpha"] = 1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["stickyDuration"] = false,
			["discrete_rotation"] = 0,
			["wordWrap"] = "WordWrap",
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 20,
			["rotate"] = false,
			["displayText_format_p_time_dynamic_threshold"] = 60,
			["xOffset"] = 0,
			["anchorFrameType"] = "SCREEN",
			["fontSize"] = 18,
			["source"] = "import",
			["frameStrata"] = 1,
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2"] = "%p",
			["mirror"] = false,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["config"] = {
				["Yoff"] = 0,
				["Xoff"] = 0,
				["point"] = 1,
				["relativePoint"] = 4,
			},
			["useglowColor"] = false,
			["justify"] = "LEFT",
			["text2Containment"] = "INSIDE",
			["text1Containment"] = "OUTSIDE",
			["icon"] = true,
			["text1"] = "%n",
			["displayText_format_p_time_precision"] = 1,
			["text2Font"] = "Friz Quadrata TT",
			["internalVersion"] = 66,
			["semver"] = "2.2.2",
			["glow"] = false,
			["id"] = "Anubarak - Penetrating Cold Glow",
			["text1Font"] = "Expressway",
			["useCooldownModRate"] = true,
			["width"] = 20,
			["text1Point"] = "LEFT",
			["zoom"] = 0,
			["inverse"] = false,
			["fixedWidth"] = 200,
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["preferToUpdate"] = false,
		},
		["Beasts - Spray"] = {
			["sparkWidth"] = 10,
			["iconSource"] = 0,
			["wagoID"] = "A5ytftEJV",
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["url"] = "https://wago.io/TemsToGC/18",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "combatlog",
						["spellId"] = "66902",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "18",
						["event"] = "Combat Log",
						["unit"] = "player",
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "combatlog",
						["spellId"] = "66901",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "18",
						["event"] = "Combat Log",
						["unit"] = "player",
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "combatlog",
						["spellId"] = "66330",
						["subeventSuffix"] = "",
						["duration"] = "25",
						["event"] = "Combat Log",
						["unit"] = "player",
						["use_destNpcId"] = true,
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["names"] = {
						},
						["subeventPrefix"] = "UNIT_DIED",
						["use_destUnit"] = false,
						["destNpcId"] = "34796",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [3]
				{
					["trigger"] = {
						["type"] = "combatlog",
						["spellId"] = "66902",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "99",
						["event"] = "Combat Log",
						["unit"] = "player",
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [4]
				{
					["trigger"] = {
						["type"] = "combatlog",
						["spellId"] = "66901",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "99",
						["event"] = "Combat Log",
						["unit"] = "player",
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [5]
				{
					["trigger"] = {
						["type"] = "combatlog",
						["spellId"] = "66330",
						["subeventSuffix"] = "",
						["duration"] = "99",
						["event"] = "Combat Log",
						["unit"] = "player",
						["use_destNpcId"] = true,
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["names"] = {
						},
						["subeventPrefix"] = "UNIT_DIED",
						["use_destUnit"] = false,
						["destNpcId"] = "34796",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [6]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 66,
			["zoom"] = 0.3,
			["selfPoint"] = "CENTER",
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
			["barColor"] = {
				1, -- [1]
				0.32941177487373, -- [2]
				0.33725491166115, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["barColor2"] = {
				1, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 0,
							}, -- [1]
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 0,
							}, -- [2]
							{
								["trigger"] = 3,
								["variable"] = "show",
								["value"] = 0,
							}, -- [3]
						},
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.32941177487373, -- [2]
								0.33725491166115, -- [3]
								1, -- [4]
							},
							["property"] = "backgroundColor",
						}, -- [1]
						{
							["property"] = "sub.4.text_visible",
						}, -- [2]
						{
							["property"] = "sub.6.text_visible",
						}, -- [3]
						{
							["value"] = true,
							["property"] = "sub.5.text_visible",
						}, -- [4]
					},
				}, -- [1]
			},
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["type"] = "subforeground",
				}, -- [2]
				{
					["border_size"] = 1,
					["border_anchor"] = "bar",
					["type"] = "subborder",
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_offset"] = 0,
				}, -- [3]
				{
					["text_text_format_n_format"] = "none",
					["text_text"] = "Next Spray",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_LEFT",
					["text_shadowXOffset"] = 1,
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [4]
				{
					["text_text_format_n_format"] = "none",
					["text_text"] = "Spray Soon",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_LEFT",
					["text_shadowXOffset"] = 1,
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_visible"] = false,
				}, -- [5]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%p",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_time_format"] = 0,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["type"] = "subtext",
					["text_anchorXOffset"] = -2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_text_format_p_time_precision"] = 1,
					["text_shadowYOffset"] = -1,
					["anchorYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_RIGHT",
					["text_visible"] = true,
					["text_text_format_p_format"] = "timed",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_mod_rate"] = true,
				}, -- [6]
			},
			["height"] = 20,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["load"] = {
				["use_encounterid"] = true,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "629, 1088",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["parent"] = "Tems ToGC - Timers",
			["source"] = "import",
			["gradientOrientation"] = "HORIZONTAL",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["enableGradient"] = false,
			["anchorFrameType"] = "SCREEN",
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["alpha"] = 1,
			["config"] = {
			},
			["icon_side"] = "LEFT",
			["id"] = "Beasts - Spray",
			["sparkHeight"] = 30,
			["texture"] = "Melli",
			["spark"] = false,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["semver"] = "2.2.2",
			["tocversion"] = 30402,
			["sparkHidden"] = "NEVER",
			["icon"] = true,
			["frameStrata"] = 1,
			["width"] = 200,
			["sparkOffsetX"] = 0,
			["uid"] = "gCGIKO(s9HR",
			["inverse"] = false,
			["sparkOffsetY"] = 0,
			["orientation"] = "HORIZONTAL",
			["displayIcon"] = "135815",
			["information"] = {
			},
			["authorOptions"] = {
			},
		},
		["ToGC - Magic Glow"] = {
			["outline"] = "OUTLINE",
			["iconSource"] = 0,
			["wagoID"] = "A5ytftEJV",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["shadowYOffset"] = -1,
			["anchorPoint"] = "CENTER",
			["frameStrata"] = 1,
			["cooldownSwipe"] = true,
			["displayText_format_p_time_format"] = 0,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/TemsToGC/18",
			["actions"] = {
				["start"] = {
					["glow_color"] = {
						0.15686274509804, -- [1]
						0.43921568627451, -- [2]
						0.67843137254902, -- [3]
						1, -- [4]
					},
					["glow_thickness"] = 3,
					["glow_action"] = "show",
					["glow_frequency"] = 0.2,
					["glow_lines"] = 8,
					["glow_length"] = 15,
					["do_glow"] = true,
					["use_glow_color"] = true,
					["glow_type"] = "Pixel",
					["glow_frame_type"] = "UNITFRAME",
				},
				["finish"] = {
					["hide_all_glows"] = true,
				},
				["init"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["useMatch_count"] = false,
						["spellId"] = "28783",
						["auranames"] = {
							"59151", -- [1]
						},
						["duration"] = "2",
						["group_count"] = "0",
						["group_countOperator"] = ">",
						["showClones"] = true,
						["use_debuffClass"] = true,
						["subeventSuffix"] = "_CAST_START",
						["use_includePets"] = true,
						["use_spellId"] = true,
						["use_status"] = false,
						["useGroup_count"] = false,
						["includePets"] = "PlayersAndPets",
						["unit"] = "raid",
						["use_aggro"] = true,
						["useExactSpellId"] = false,
						["spellName"] = "Impale",
						["debuffType"] = "HARMFUL",
						["names"] = {
						},
						["type"] = "aura2",
						["match_countOperator"] = ">",
						["auraspellids"] = {
						},
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["threatUnit"] = "target",
						["useName"] = false,
						["use_threatUnit"] = true,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["unevent"] = "timed",
						["debuffClass"] = {
							["magic"] = true,
						},
						["match_count"] = "0",
						["useAffected"] = false,
						["event"] = "Combat Log",
					},
					["untrigger"] = {
						["threatUnit"] = "target",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["displayText_format_p_time_mod_rate"] = true,
			["internalVersion"] = 66,
			["keepAspectRatio"] = false,
			["wordWrap"] = "WordWrap",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayText"] = "",
			["yOffset"] = 0,
			["desaturate"] = false,
			["parent"] = "Tems ToGC - Glow [DO NOT MOVE]",
			["font"] = "Accidental Presidency",
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 64,
			["cooldownEdge"] = true,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
						["PRIEST"] = true,
					},
				},
				["use_encounterid"] = true,
				["use_zone"] = false,
				["zoneIds"] = "",
				["encounterid"] = "629, 633, 637, 641, 645",
				["use_zoneIds"] = false,
				["zone"] = "",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["icon"] = true,
			["displayText_format_p_format"] = "timed",
			["fontSize"] = 18,
			["source"] = "import",
			["displayText_format_p_time_legacy_floor"] = false,
			["shadowXOffset"] = 1,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["preset"] = "spiralandpulse",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["displayText_format_p_time_dynamic_threshold"] = 60,
			["auto"] = false,
			["regionType"] = "text",
			["automaticWidth"] = "Auto",
			["selfPoint"] = "CENTER",
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["fixedWidth"] = 200,
			["xOffset"] = 0,
			["displayText_format_p_time_precision"] = 1,
			["zoom"] = 0,
			["config"] = {
			},
			["cooldownTextDisabled"] = false,
			["semver"] = "2.2.2",
			["tocversion"] = 30402,
			["id"] = "ToGC - Magic Glow",
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["width"] = 64,
			["justify"] = "LEFT",
			["uid"] = "YrfK4vADBbr",
			["inverse"] = false,
			["useCooldownModRate"] = true,
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["displayIcon"] = 136160,
		},
		["Beasts - Frothing Enrage"] = {
			["modelIsUnit"] = false,
			["iconSource"] = 0,
			["api"] = false,
			["xOffset"] = 0,
			["displayText"] = "SPARK SPAWNED\n",
			["yOffset"] = -40,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["url"] = "https://wago.io/TemsToGC/18",
			["actions"] = {
				["start"] = {
					["message"] = "",
					["message_format_unitName_format"] = "none",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = true,
					["message_format_c_format"] = "none",
					["do_message"] = false,
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\sonar.ogg",
					["message_type"] = "SAY",
				},
				["finish"] = {
					["do_custom"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_message"] = false,
					["do_sound"] = false,
				},
				["init"] = {
				},
			},
			["displayText_format_p_time_mod_rate"] = true,
			["keepAspectRatio"] = false,
			["model_path"] = "spells/arcanepower_state_chest.m2",
			["desaturate"] = false,
			["rotation"] = 0,
			["font"] = "Accidental Presidency",
			["load"] = {
				["use_never"] = false,
				["zone"] = "",
				["encounterid"] = "629, 1088",
				["zoneIds"] = "",
				["use_encounterid"] = true,
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
						["HUNTER"] = true,
						["WARLOCK"] = true,
						["SHAMAN"] = true,
						["MAGE"] = true,
						["DRUID"] = true,
						["PALADIN"] = true,
						["PRIEST"] = true,
					},
				},
				["use_zone"] = false,
				["instance_type"] = {
					["multi"] = {
						[4] = true,
						[3] = true,
					},
				},
				["use_zoneIds"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["use_instance_type"] = false,
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
			["sequence"] = 1,
			["shadowXOffset"] = 1,
			["regionType"] = "texture",
			["model_st_us"] = 40,
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Circle_AlphaGradient_In.tga",
			["model_st_ry"] = 0,
			["auto"] = false,
			["tocversion"] = 30402,
			["model_st_rx"] = 270,
			["uid"] = "t2caOvFrYAF",
			["fixedWidth"] = 200,
			["model_st_tz"] = 0,
			["parent"] = "Tems ToGC - Nameplates [DO NOT MOVE]",
			["outline"] = "OUTLINE",
			["cooldown"] = true,
			["borderBackdrop"] = "Blizzard Tooltip",
			["wagoID"] = "A5ytftEJV",
			["color"] = {
				1, -- [1]
				0.011764707043767, -- [2]
				0.047058828175068, -- [3]
				0.50316345691681, -- [4]
			},
			["authorOptions"] = {
			},
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["shadowYOffset"] = -1,
			["borderOffset"] = 5,
			["model_x"] = 0,
			["cooldownSwipe"] = true,
			["cooldownEdge"] = true,
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["advance"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "30084",
						["spellId"] = "56272",
						["auranames"] = {
							"66759", -- [1]
						},
						["duration"] = "1.5",
						["message_operator"] = "find('%s')",
						["destUnit"] = "player",
						["group_count"] = "0",
						["use_attackable"] = true,
						["group_countOperator"] = ">",
						["use_namerealm"] = false,
						["namerealm"] = "Crypt Guard",
						["subeventSuffix"] = "_CAST_START",
						["percenthealth"] = "0",
						["event"] = "Chat Message",
						["message"] = "",
						["use_spellId"] = true,
						["use_destUnit"] = false,
						["use_track"] = true,
						["useExactSpellId"] = false,
						["use_hostility"] = false,
						["useGroup_count"] = false,
						["percenthealth_operator"] = "~=",
						["subeventPrefix"] = "SPELL",
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["showClones"] = true,
						["use_genericShowOn"] = true,
						["unit"] = "target",
						["use_npcId"] = true,
						["use_threatUnit"] = true,
						["type"] = "aura2",
						["use_cloneId"] = false,
						["debuffType"] = "HELPFUL",
						["use_sourceName"] = false,
						["sourceName"] = "Crypt Guard",
						["unevent"] = "timed",
						["auraspellids"] = {
						},
						["useName"] = true,
						["names"] = {
						},
						["threatUnit"] = "target",
						["use_status"] = false,
						["realSpellName"] = "Summon Corpse Scarabs",
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["spellName"] = "Summon Corpse Scarabs",
						["use_message"] = false,
						["use_percenthealth"] = true,
						["use_messageType"] = false,
						["use_aggro"] = true,
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "target",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["displayText_format_p_format"] = "timed",
			["displayText_format_p_time_legacy_floor"] = false,
			["model_fileId"] = "122968",
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["preset"] = "alphaPulse",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["model_st_ty"] = 0,
			["alpha"] = 1,
			["version"] = 18,
			["width"] = 80,
			["discrete_rotation"] = 0,
			["frameStrata"] = 5,
			["model_st_tx"] = 0,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_text_format_n_format"] = "none",
					["text_text"] = "TRANQ",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "CENTER",
					["text_shadowXOffset"] = 1,
					["text_anchorYOffset"] = 0,
					["text_fontSize"] = 10,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [2]
			},
			["height"] = 80,
			["rotate"] = true,
			["config"] = {
			},
			["displayText_format_p_time_dynamic_threshold"] = 60,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["fontSize"] = 26,
			["source"] = "import",
			["blendMode"] = "BLEND",
			["justify"] = "LEFT",
			["borderInset"] = 11,
			["mirror"] = false,
			["borderEdge"] = "None",
			["cooldownTextDisabled"] = false,
			["borderSize"] = 16,
			["border"] = false,
			["icon"] = true,
			["model_st_rz"] = 0,
			["model_z"] = 0,
			["displayText_format_p_time_precision"] = 1,
			["wordWrap"] = "WordWrap",
			["selfPoint"] = "CENTER",
			["displayText_format_p_time_format"] = 0,
			["semver"] = "2.2.2",
			["zoom"] = 0,
			["id"] = "Beasts - Frothing Enrage",
			["model_y"] = 0,
			["useCooldownModRate"] = true,
			["anchorFrameType"] = "NAMEPLATE",
			["internalVersion"] = 66,
			["displayIcon"] = 135731,
			["inverse"] = false,
			["scale"] = 1,
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["preferToUpdate"] = false,
		},
		["Beasts - Impale"] = {
			["sparkWidth"] = 10,
			["iconSource"] = 0,
			["wagoID"] = "A5ytftEJV",
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["url"] = "https://wago.io/TemsToGC/18",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "16063",
						["use_incombat"] = true,
						["auranames"] = {
							"66331", -- [1]
						},
						["use_genericShowOn"] = true,
						["destUnit"] = "player",
						["group_count"] = "0",
						["group_countOperator"] = ">",
						["showClones"] = false,
						["use_health"] = true,
						["subeventSuffix"] = "_CAST_SUCCESS",
						["event"] = "Combat Log",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["use_name"] = false,
						["use_spellId"] = true,
						["name"] = "Obsidian Eradicator",
						["check"] = "update",
						["use_destUnit"] = false,
						["use_track"] = true,
						["use_eventtype"] = true,
						["useGroup_count"] = true,
						["sourceNpcId"] = "15932",
						["health_operator"] = ">",
						["genericShowOn"] = "showOnCooldown",
						["subeventPrefix"] = "SPELL",
						["use_sourceNpcId"] = true,
						["powertype"] = 0,
						["custom_type"] = "status",
						["spellIds"] = {
						},
						["combineMode"] = "showHighest",
						["type"] = "aura2",
						["use_powertype"] = true,
						["debuffType"] = "HARMFUL",
						["realSpellName"] = "Shield Wall",
						["useName"] = true,
						["unevent"] = "timed",
						["auraspellids"] = {
						},
						["spellId"] = "29685",
						["use_unit"] = true,
						["names"] = {
						},
						["unit"] = "group",
						["use_npcId"] = true,
						["use_spellName"] = false,
						["health"] = "0",
						["use_sourceName"] = false,
						["duration"] = "20",
						["useExactSpellId"] = false,
						["useAffected"] = true,
						["spellName"] = 871,
					},
					["untrigger"] = {
						["unit"] = "target",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
					},
				}, -- [1]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(trigger)\n    return trigger[1]\nend",
				["activeTriggerMode"] = -10,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 66,
			["zoom"] = 0.3,
			["selfPoint"] = "CENTER",
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
			["barColor"] = {
				0.53725492954254, -- [1]
				0.50980395078659, -- [2]
				0.75686281919479, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["barColor2"] = {
				1, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
				{
					["check"] = {
						["op"] = ">=",
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 0,
							}, -- [1]
							{
								["value"] = 0,
								["variable"] = "show",
							}, -- [2]
						},
						["value"] = "2",
						["variable"] = "stacks",
						["trigger"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.29019609093666, -- [2]
								0.24705883860588, -- [3]
								1, -- [4]
							},
							["property"] = "sub.6.tick_color",
						}, -- [1]
					},
				}, -- [1]
			},
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["type"] = "subforeground",
				}, -- [2]
				{
					["border_size"] = 1,
					["border_anchor"] = "bar",
					["type"] = "subborder",
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_offset"] = 0,
				}, -- [3]
				{
					["text_shadowXOffset"] = 1,
					["text_text_format_s_format"] = "none",
					["text_text"] = "[%s] %1.unitName",
					["text_text_format_1.unitName_color"] = "class",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_unitName_format"] = "none",
					["text_text_format_1.unitName_abbreviate_max"] = 8,
					["type"] = "subtext",
					["text_anchorXOffset"] = 2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_text_format_1.unitName_format"] = "Unit",
					["text_shadowYOffset"] = -1,
					["text_text_format_1.unitName_realm_name"] = "never",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "INNER_LEFT",
					["text_text_format_n_format"] = "none",
					["text_fontType"] = "None",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_text_format_1.unitName_abbreviate"] = true,
				}, -- [4]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%p",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_time_format"] = 0,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["type"] = "subtext",
					["text_anchorXOffset"] = -2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_text_format_p_time_precision"] = 1,
					["text_shadowYOffset"] = -1,
					["anchorYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_RIGHT",
					["text_visible"] = true,
					["text_text_format_p_format"] = "timed",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_mod_rate"] = true,
				}, -- [5]
				{
					["tick_blend_mode"] = "ADD",
					["tick_rotation"] = 0,
					["tick_xOffset"] = 0,
					["tick_desaturate"] = false,
					["automatic_length"] = true,
					["tick_thickness"] = 2,
					["type"] = "subtick",
					["use_texture"] = false,
					["tick_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["tick_placement"] = "33",
					["tick_texture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
					["tick_yOffset"] = 0,
					["tick_visible"] = true,
					["tick_length"] = 30,
					["tick_mirror"] = false,
					["tick_placement_mode"] = "AtValue",
				}, -- [6]
			},
			["height"] = 20,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["load"] = {
				["use_encounterid"] = true,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "629, 1088",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["parent"] = "Tems ToGC - Timers",
			["source"] = "import",
			["gradientOrientation"] = "HORIZONTAL",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["enableGradient"] = false,
			["anchorFrameType"] = "SCREEN",
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["alpha"] = 1,
			["config"] = {
			},
			["icon_side"] = "LEFT",
			["id"] = "Beasts - Impale",
			["sparkHeight"] = 30,
			["texture"] = "Melli",
			["spark"] = false,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["semver"] = "2.2.2",
			["tocversion"] = 30402,
			["sparkHidden"] = "NEVER",
			["icon"] = true,
			["frameStrata"] = 1,
			["width"] = 200,
			["sparkOffsetX"] = 0,
			["uid"] = "az7oWjncgAH",
			["inverse"] = false,
			["sparkOffsetY"] = 0,
			["orientation"] = "HORIZONTAL",
			["displayIcon"] = "132324",
			["information"] = {
			},
			["authorOptions"] = {
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
			["internalVersion"] = 66,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["preset"] = "slidetop",
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
					["glowDuration"] = 1,
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
			["xOffset"] = 430,
			["desc"] = "Inner Fire at the right side of the screen to rebuff it!",
			["url"] = "",
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
			["icon"] = true,
			["useTooltip"] = false,
			["config"] = {
			},
			["frameStrata"] = 1,
			["useCooldownModRate"] = true,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 20502,
			["id"] = "Inner Fire REBUFF!",
			["semver"] = "1.0.5",
			["alpha"] = 1,
			["width"] = 48,
			["zoom"] = 0,
			["uid"] = ")GOgtvSY(WA",
			["inverse"] = false,
			["color"] = {
				0.984313725490196, -- [1]
				0.9725490196078431, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayIcon"] = 135932,
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["selfPoint"] = "CENTER",
		},
		["Twins - Dark Vortex Texture"] = {
			["user_y"] = 0,
			["user_x"] = 0,
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["foregroundColor"] = {
				0.25098040699959, -- [1]
				0.61176472902298, -- [2]
				0.4627451300621, -- [3]
				1, -- [4]
			},
			["desaturateBackground"] = false,
			["startAngle"] = 0,
			["sameTexture"] = true,
			["url"] = "https://wago.io/TemsToGC/18",
			["actions"] = {
				["start"] = {
					["message_format_unitName_realm_name"] = "never",
					["message_type"] = "SAY",
					["message_format_unitName_abbreviate_max"] = 8,
					["message"] = "",
					["do_sound"] = false,
					["message_format_unitName_abbreviate"] = false,
					["message_format_unitName_format"] = "none",
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Glass.mp3",
					["do_message"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "combatlog",
						["spellId"] = "66058",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "11",
						["event"] = "Combat Log",
						["use_unit"] = true,
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["unit"] = "nameplate",
						["use_exact_spellId"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"66001", -- [1]
						},
						["debuffType"] = "HARMFUL",
						["useName"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(trigger)\n    return trigger[1]\nend",
				["activeTriggerMode"] = -10,
			},
			["endAngle"] = 360,
			["internalVersion"] = 66,
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
			["desaturateForeground"] = false,
			["authorOptions"] = {
			},
			["crop_x"] = 0.41,
			["rotation"] = 0,
			["font"] = "Friz Quadrata TT",
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "Safe",
					["text_text_format_p_time_mod_rate"] = true,
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["anchorYOffset"] = 0,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["type"] = "subtext",
					["text_text_format_p_time_precision"] = 1,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_shadowYOffset"] = -1,
					["text_visible"] = true,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_time_format"] = 0,
					["text_text_format_n_format"] = "none",
					["text_fontSize"] = 14,
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
				}, -- [2]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "Switch Color",
					["text_text_format_p_time_mod_rate"] = true,
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["anchorYOffset"] = 0,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["type"] = "subtext",
					["text_text_format_p_time_precision"] = 1,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_shadowYOffset"] = -1,
					["text_visible"] = false,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_time_format"] = 0,
					["text_text_format_n_format"] = "none",
					["text_fontSize"] = 14,
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
				}, -- [3]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%p",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_n_format"] = "none",
					["anchorXOffset"] = 0,
					["text_text_format_p_time_precision"] = 1,
					["type"] = "subtext",
					["anchorYOffset"] = 0,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_anchorYOffset"] = -15,
					["text_shadowYOffset"] = -1,
					["text_fontType"] = "None",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_time_format"] = 0,
					["text_text_format_p_time_mod_rate"] = true,
					["text_fontSize"] = 14,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_text_format_p_format"] = "timed",
				}, -- [4]
			},
			["height"] = 140,
			["parent"] = "Tems ToGC - Central Textures",
			["load"] = {
				["use_encounterid"] = true,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "641, 1089",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["wagoID"] = "A5ytftEJV",
			["useAdjustededMax"] = false,
			["fontSize"] = 12,
			["source"] = "import",
			["foregroundTexture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Ring_20px.tga",
			["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
			["config"] = {
			},
			["mirror"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "progresstexture",
			["backgroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura3",
			["blendMode"] = "BLEND",
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["slantMode"] = "INSIDE",
			["selfPoint"] = "CENTER",
			["tocversion"] = 30402,
			["anchorPoint"] = "CENTER",
			["semver"] = "2.2.2",
			["compress"] = false,
			["id"] = "Twins - Dark Vortex Texture",
			["backgroundColor"] = {
				0.50196081399918, -- [1]
				0.50196081399918, -- [2]
				0.50196081399918, -- [3]
				0, -- [4]
			},
			["frameStrata"] = 1,
			["width"] = 140,
			["auraRotation"] = 0,
			["uid"] = "uCajWNH6OLC",
			["inverse"] = false,
			["crop_y"] = 0.41,
			["orientation"] = "ANTICLOCKWISE",
			["conditions"] = {
				{
					["check"] = {
						["op"] = "==",
						["checks"] = {
							{
								["trigger"] = -2,
								["variable"] = "AND",
								["checks"] = {
									{
										["trigger"] = 1,
										["variable"] = "show",
										["value"] = 1,
									}, -- [1]
									{
										["trigger"] = 2,
										["op"] = "==",
										["value"] = "66001",
										["variable"] = "spellId",
									}, -- [2]
								},
							}, -- [1]
							{
								["trigger"] = -2,
								["op"] = "==",
								["variable"] = "AND",
								["checks"] = {
									{
										["value"] = 1,
										["variable"] = "show",
									}, -- [1]
									{
										["trigger"] = 2,
										["op"] = "==",
										["value"] = "65686",
										["variable"] = "spellId",
									}, -- [2]
								},
							}, -- [2]
						},
						["value"] = 0,
						["variable"] = "show",
						["trigger"] = 2,
					},
					["changes"] = {
						{
							["property"] = "sub.2.text_visible",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "sub.3.text_visible",
						}, -- [2]
						{
							["value"] = {
								0.55686277151108, -- [1]
								0.10196079313755, -- [2]
								0.035294119268656, -- [3]
								1, -- [4]
							},
							["property"] = "foregroundColor",
						}, -- [3]
						{
							["value"] = {
								["sound_type"] = "Play",
								["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Glass.mp3",
								["sound_channel"] = "Master",
							},
							["property"] = "sound",
						}, -- [4]
					},
				}, -- [1]
			},
			["information"] = {
			},
			["backgroundOffset"] = 2,
		},
		["LIC indicator(HUMAN)"] = {
			["iconSource"] = 0,
			["authorOptions"] = {
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
						["itemName"] = 40532,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["names"] = {
						},
						["itemSlot"] = 14,
						["debuffType"] = "HELPFUL",
						["type"] = "item",
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["use_itemSlot"] = true,
						["use_itemName"] = true,
						["use_exact_spellName"] = true,
						["realSpellName"] = 7744,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["spellName"] = 7744,
						["use_remaining"] = false,
						["event"] = "Cooldown Progress (Item)",
						["use_track"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 66,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desc"] = "Displays Living Ice Crystal cooldown icon.",
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_size"] = 10,
					["type"] = "subborder",
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Gladdy Tooltip round",
					["border_offset"] = 1,
				}, -- [2]
				{
					["api"] = false,
					["model_x"] = 0,
					["model_st_us"] = 40,
					["model_st_rz"] = 0,
					["model_alpha"] = 1,
					["model_fileId"] = "235338",
					["model_path"] = "spells/arcanepower_state_chest.m2",
					["model_st_ty"] = 0,
					["model_y"] = 0,
					["model_st_rx"] = 270,
					["rotation"] = 0,
					["model_z"] = 0,
					["model_st_tx"] = 0,
					["bar_model_clip"] = true,
					["model_st_ry"] = 0,
					["model_visible"] = true,
					["model_st_tz"] = 0,
					["type"] = "submodel",
				}, -- [3]
			},
			["height"] = 50,
			["load"] = {
				["use_race"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["race"] = {
					["single"] = "Human",
					["multi"] = {
						["Scourge"] = true,
					},
				},
				["use_itemequiped"] = true,
				["itemequiped"] = 40532,
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
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = false,
							["property"] = "sub.3.model_visible",
						}, -- [2]
					},
				}, -- [1]
			},
			["information"] = {
				["forceEvents"] = true,
			},
			["desaturate"] = false,
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
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["cooldownTextDisabled"] = false,
			["zoom"] = 0,
			["uid"] = "wJb8GagrIH4",
			["useCooldownModRate"] = true,
			["id"] = "LIC indicator(HUMAN)",
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["width"] = 50,
			["frameStrata"] = 1,
			["config"] = {
			},
			["inverse"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayIcon"] = "132783",
			["cooldown"] = true,
			["xOffset"] = -555.2334365844727,
		},
		["Twins - Powering Up Debuff"] = {
			["iconSource"] = 0,
			["wagoID"] = "A5ytftEJV",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "https://wago.io/TemsToGC/18",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"67590", -- [1]
						},
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["useName"] = true,
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "function(trigger)\n    return trigger[1]\nend",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 66,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_size"] = 1,
					["type"] = "subborder",
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_offset"] = 1,
				}, -- [2]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_time_mod_rate"] = true,
					["type"] = "subtext",
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_text_format_p_time_format"] = 0,
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "BOTTOM",
					["anchorYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_precision"] = 1,
				}, -- [3]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_text_format_p_time_mod_rate"] = true,
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_format"] = "timed",
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["type"] = "subtext",
					["text_text_format_n_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["anchorYOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "TOP",
					["text_visible"] = true,
					["text_text_format_p_time_format"] = 0,
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_precision"] = 1,
				}, -- [4]
			},
			["height"] = 41,
			["load"] = {
				["use_encounterid"] = true,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "641, 1089",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["config"] = {
			},
			["cooldownEdge"] = false,
			["xOffset"] = 0,
			["regionType"] = "icon",
			["actions"] = {
				["start"] = {
					["message"] = "",
					["do_message"] = false,
					["message_type"] = "SAY",
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["cooldown"] = true,
			["conditions"] = {
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["zoom"] = 0.3,
			["anchorFrameType"] = "SCREEN",
			["cooldownTextDisabled"] = true,
			["semver"] = "2.2.2",
			["tocversion"] = 30402,
			["id"] = "Twins - Powering Up Debuff",
			["useCooldownModRate"] = true,
			["frameStrata"] = 1,
			["width"] = 41,
			["alpha"] = 1,
			["uid"] = "Lnh47YSAWb9",
			["inverse"] = false,
			["parent"] = "Tems ToGC - Icons",
			["displayIcon"] = 298674,
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
		["Beasts - Spew"] = {
			["sparkWidth"] = 10,
			["iconSource"] = 0,
			["wagoID"] = "A5ytftEJV",
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["url"] = "https://wago.io/TemsToGC/18",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "combatlog",
						["spellId"] = "66821",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "21",
						["event"] = "Combat Log",
						["unit"] = "player",
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "combatlog",
						["spellId"] = "66818",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "21",
						["event"] = "Combat Log",
						["unit"] = "player",
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "combatlog",
						["spellId"] = "66330",
						["subeventSuffix"] = "",
						["duration"] = "26",
						["event"] = "Combat Log",
						["unit"] = "player",
						["use_destNpcId"] = true,
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["names"] = {
						},
						["subeventPrefix"] = "UNIT_DIED",
						["use_destUnit"] = false,
						["destNpcId"] = "34796",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [3]
				{
					["trigger"] = {
						["type"] = "combatlog",
						["spellId"] = "66821",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "99",
						["event"] = "Combat Log",
						["unit"] = "player",
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [4]
				{
					["trigger"] = {
						["type"] = "combatlog",
						["spellId"] = "66818",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "99",
						["event"] = "Combat Log",
						["unit"] = "player",
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [5]
				{
					["trigger"] = {
						["type"] = "combatlog",
						["spellId"] = "66330",
						["subeventSuffix"] = "",
						["duration"] = "99",
						["event"] = "Combat Log",
						["unit"] = "player",
						["use_destNpcId"] = true,
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["names"] = {
						},
						["subeventPrefix"] = "UNIT_DIED",
						["use_destUnit"] = false,
						["destNpcId"] = "34796",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [6]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 66,
			["zoom"] = 0.3,
			["selfPoint"] = "CENTER",
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
			["barColor"] = {
				0.33725491166115, -- [1]
				0.66274511814117, -- [2]
				0.75686281919479, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["barColor2"] = {
				1, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 0,
							}, -- [1]
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 0,
							}, -- [2]
							{
								["trigger"] = 3,
								["variable"] = "show",
								["value"] = 0,
							}, -- [3]
						},
					},
					["changes"] = {
						{
							["value"] = {
								0.33725491166115, -- [1]
								0.66274511814117, -- [2]
								0.75686281919479, -- [3]
								1, -- [4]
							},
							["property"] = "backgroundColor",
						}, -- [1]
						{
							["property"] = "sub.4.text_visible",
						}, -- [2]
						{
							["property"] = "sub.6.text_visible",
						}, -- [3]
						{
							["value"] = true,
							["property"] = "sub.5.text_visible",
						}, -- [4]
					},
				}, -- [1]
			},
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["type"] = "subforeground",
				}, -- [2]
				{
					["border_size"] = 1,
					["border_anchor"] = "bar",
					["type"] = "subborder",
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_offset"] = 0,
				}, -- [3]
				{
					["text_text_format_n_format"] = "none",
					["text_text"] = "Next Frontal",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_LEFT",
					["text_shadowXOffset"] = 1,
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [4]
				{
					["text_text_format_n_format"] = "none",
					["text_text"] = "Frontal Soon",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_LEFT",
					["text_shadowXOffset"] = 1,
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_visible"] = false,
				}, -- [5]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%p",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_time_format"] = 0,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["type"] = "subtext",
					["text_anchorXOffset"] = -2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_text_format_p_time_precision"] = 1,
					["text_shadowYOffset"] = -1,
					["anchorYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_RIGHT",
					["text_visible"] = true,
					["text_text_format_p_format"] = "timed",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_mod_rate"] = true,
				}, -- [6]
			},
			["height"] = 20,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["load"] = {
				["use_encounterid"] = true,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "629, 1088",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["parent"] = "Tems ToGC - Timers",
			["source"] = "import",
			["gradientOrientation"] = "HORIZONTAL",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["enableGradient"] = false,
			["anchorFrameType"] = "SCREEN",
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["alpha"] = 1,
			["config"] = {
			},
			["icon_side"] = "LEFT",
			["id"] = "Beasts - Spew",
			["sparkHeight"] = 30,
			["texture"] = "Melli",
			["spark"] = false,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["semver"] = "2.2.2",
			["tocversion"] = 30402,
			["sparkHidden"] = "NEVER",
			["icon"] = true,
			["frameStrata"] = 1,
			["width"] = 200,
			["sparkOffsetX"] = 0,
			["uid"] = "zbOr88mhyxT",
			["inverse"] = false,
			["sparkOffsetY"] = 0,
			["orientation"] = "HORIZONTAL",
			["displayIcon"] = "136007",
			["information"] = {
			},
			["authorOptions"] = {
			},
		},
		["Tems ToGC Pack"] = {
			["controlledChildren"] = {
				"ToGC", -- [1]
				"Onyxia", -- [2]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["wagoID"] = "A5ytftEJV",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["url"] = "https://wago.io/TemsToGC/18",
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
						["names"] = {
						},
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["event"] = "Health",
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["internalVersion"] = 66,
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
			["version"] = 18,
			["subRegions"] = {
			},
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
			},
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["source"] = "import",
			["scale"] = 1,
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "group",
			["borderSize"] = 2,
			["borderOffset"] = 4,
			["semver"] = "2.2.2",
			["tocversion"] = 30402,
			["id"] = "Tems ToGC Pack",
			["uid"] = "Gz5BbsmTGuG",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["groupIcon"] = "236689",
			["borderInset"] = 1,
			["config"] = {
			},
			["xOffset"] = 0,
			["conditions"] = {
			},
			["information"] = {
			},
			["selfPoint"] = "CENTER",
		},
		["Anubarak - Enrage"] = {
			["sparkWidth"] = 10,
			["iconSource"] = 0,
			["wagoID"] = "A5ytftEJV",
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["url"] = "https://wago.io/TemsToGC/18",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "custom",
						["subeventPrefix"] = "SPELL",
						["custom_type"] = "event",
						["events"] = "ENCOUNTER_START",
						["duration"] = "570",
						["message_operator"] = "find('%s')",
						["unit"] = "player",
						["message"] = "The air itself freezes with the introduction of our next combatant, Icehowl! Kill or be killed, champions",
						["spellIds"] = {
						},
						["custom"] = "function(event)\n    return true\nend",
						["event"] = "Chat Message",
						["use_message"] = true,
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 66,
			["zoom"] = 0.3,
			["selfPoint"] = "CENTER",
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
			["barColor"] = {
				0.79215693473816, -- [1]
				0.47450983524323, -- [2]
				0.46666669845581, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["barColor2"] = {
				1, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["type"] = "subforeground",
				}, -- [2]
				{
					["border_size"] = 1,
					["border_anchor"] = "bar",
					["type"] = "subborder",
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_offset"] = 0,
				}, -- [3]
				{
					["text_text_format_n_format"] = "none",
					["text_text"] = "Enrage",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_LEFT",
					["text_shadowXOffset"] = 1,
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [4]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%p",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_time_format"] = 0,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["type"] = "subtext",
					["text_anchorXOffset"] = -2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_text_format_p_time_precision"] = 1,
					["text_shadowYOffset"] = -1,
					["anchorYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_RIGHT",
					["text_visible"] = true,
					["text_text_format_p_format"] = "timed",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_mod_rate"] = true,
				}, -- [5]
			},
			["height"] = 20,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["load"] = {
				["use_encounterid"] = true,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "645, 1085",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["parent"] = "Tems ToGC - Timers",
			["source"] = "import",
			["gradientOrientation"] = "HORIZONTAL",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["enableGradient"] = false,
			["anchorFrameType"] = "SCREEN",
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["alpha"] = 1,
			["config"] = {
			},
			["icon_side"] = "LEFT",
			["id"] = "Anubarak - Enrage",
			["sparkHeight"] = 30,
			["texture"] = "Melli",
			["spark"] = false,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["semver"] = "2.2.2",
			["tocversion"] = 30402,
			["sparkHidden"] = "NEVER",
			["icon"] = true,
			["frameStrata"] = 1,
			["width"] = 200,
			["sparkOffsetX"] = 0,
			["uid"] = "g4QTKsXXjjZ",
			["inverse"] = false,
			["sparkOffsetY"] = 0,
			["orientation"] = "HORIZONTAL",
			["displayIcon"] = 136224,
			["information"] = {
			},
			["authorOptions"] = {
			},
		},
		["Special Abilities Countdown"] = {
			["sparkWidth"] = 10,
			["sparkOffsetX"] = 0,
			["wagoID"] = "A5ytftEJV",
			["parent"] = "Tems - Twins Special Abilities [Silas WA]",
			["preferToUpdate"] = false,
			["yOffset"] = 83.924880642361,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["url"] = "https://wago.io/TemsToGC/18",
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
						["type"] = "custom",
						["custom_type"] = "event",
						["debuffType"] = "HELPFUL",
						["duration"] = "45",
						["event"] = "Health",
						["unit"] = "player",
						["names"] = {
						},
						["spellIds"] = {
						},
						["custom"] = "function(event)\n    return true\nend",
						["events"] = "ENCOUNTER_START, TOGC_VALKYR_SPECIAL_ABILITY_USED",
						["check"] = "event",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 66,
			["selfPoint"] = "CENTER",
			["id"] = "Special Abilities Countdown",
			["barColor"] = {
				0.50588238239288, -- [1]
				0.73333334922791, -- [2]
				0.678431391716, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
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
			["barColor2"] = {
				1, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["type"] = "subforeground",
				}, -- [2]
				{
					["border_size"] = 1,
					["border_anchor"] = "bar",
					["type"] = "subborder",
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_offset"] = 0,
				}, -- [3]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%p",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_time_format"] = 0,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["type"] = "subtext",
					["text_anchorXOffset"] = 1,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_text_format_p_time_precision"] = 1,
					["text_shadowYOffset"] = -1,
					["anchorYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_CENTER",
					["text_visible"] = true,
					["text_text_format_p_format"] = "timed",
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_mod_rate"] = true,
				}, -- [4]
			},
			["height"] = 83,
			["authorOptions"] = {
			},
			["load"] = {
				["use_encounterid"] = true,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "1089, 641",
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
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["sparkOffsetY"] = 0,
			["source"] = "import",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["uid"] = "OdemxaMKSqW",
			["config"] = {
			},
			["xOffset"] = -108.94366073608,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["width"] = 20,
			["alpha"] = 1,
			["icon_side"] = "RIGHT",
			["enableGradient"] = false,
			["sparkHeight"] = 30,
			["texture"] = "Solid",
			["semver"] = "2.2.2",
			["zoom"] = 0,
			["spark"] = false,
			["tocversion"] = 30402,
			["sparkHidden"] = "NEVER",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["iconSource"] = -1,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["inverse"] = false,
			["icon"] = false,
			["orientation"] = "VERTICAL_INVERSE",
			["conditions"] = {
			},
			["information"] = {
			},
			["gradientOrientation"] = "HORIZONTAL",
		},
		["ToGC - Poison Glow"] = {
			["outline"] = "OUTLINE",
			["iconSource"] = 0,
			["wagoID"] = "A5ytftEJV",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["shadowYOffset"] = -1,
			["anchorPoint"] = "CENTER",
			["frameStrata"] = 1,
			["cooldownSwipe"] = true,
			["displayText_format_p_time_format"] = 0,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/TemsToGC/18",
			["actions"] = {
				["start"] = {
					["glow_color"] = {
						0, -- [1]
						0.54901960784314, -- [2]
						0.047058823529412, -- [3]
						1, -- [4]
					},
					["glow_thickness"] = 3,
					["glow_action"] = "show",
					["glow_frequency"] = 0.2,
					["glow_lines"] = 8,
					["glow_length"] = 15,
					["do_glow"] = true,
					["use_glow_color"] = true,
					["glow_type"] = "Pixel",
					["glow_frame_type"] = "UNITFRAME",
				},
				["finish"] = {
					["hide_all_glows"] = true,
				},
				["init"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["useMatch_count"] = false,
						["spellId"] = "28783",
						["auranames"] = {
							"56624", -- [1]
						},
						["duration"] = "2",
						["group_count"] = "0",
						["group_countOperator"] = ">",
						["showClones"] = true,
						["use_debuffClass"] = true,
						["subeventSuffix"] = "_CAST_START",
						["use_includePets"] = true,
						["use_spellId"] = true,
						["use_status"] = false,
						["useGroup_count"] = false,
						["includePets"] = "PlayersAndPets",
						["unit"] = "raid",
						["use_aggro"] = true,
						["useExactSpellId"] = false,
						["spellName"] = "Impale",
						["debuffType"] = "HARMFUL",
						["names"] = {
						},
						["type"] = "aura2",
						["match_countOperator"] = ">",
						["auraspellids"] = {
						},
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["threatUnit"] = "target",
						["useName"] = false,
						["use_threatUnit"] = true,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["unevent"] = "timed",
						["debuffClass"] = {
							["poison"] = true,
						},
						["match_count"] = "0",
						["useAffected"] = false,
						["event"] = "Combat Log",
					},
					["untrigger"] = {
						["threatUnit"] = "target",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["displayText_format_p_time_mod_rate"] = true,
			["internalVersion"] = 66,
			["keepAspectRatio"] = false,
			["wordWrap"] = "WordWrap",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayText"] = "",
			["yOffset"] = 0,
			["desaturate"] = false,
			["parent"] = "Tems ToGC - Glow [DO NOT MOVE]",
			["font"] = "Accidental Presidency",
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 64,
			["cooldownEdge"] = true,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
						["PRIEST"] = true,
					},
				},
				["use_encounterid"] = true,
				["use_zone"] = false,
				["zoneIds"] = "",
				["encounterid"] = "629, 633, 637, 641, 645",
				["use_zoneIds"] = false,
				["zone"] = "",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["icon"] = true,
			["displayText_format_p_format"] = "timed",
			["fontSize"] = 18,
			["source"] = "import",
			["displayText_format_p_time_legacy_floor"] = false,
			["shadowXOffset"] = 1,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["preset"] = "spiralandpulse",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["displayText_format_p_time_dynamic_threshold"] = 60,
			["auto"] = false,
			["regionType"] = "text",
			["automaticWidth"] = "Auto",
			["selfPoint"] = "CENTER",
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["fixedWidth"] = 200,
			["xOffset"] = 0,
			["displayText_format_p_time_precision"] = 1,
			["zoom"] = 0,
			["config"] = {
			},
			["cooldownTextDisabled"] = false,
			["semver"] = "2.2.2",
			["tocversion"] = 30402,
			["id"] = "ToGC - Poison Glow",
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["width"] = 64,
			["justify"] = "LEFT",
			["uid"] = "yfRKAxhtDPe",
			["inverse"] = false,
			["useCooldownModRate"] = true,
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["displayIcon"] = 136160,
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
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["useStacks"] = false,
						["auranames"] = {
							"19746", -- [1]
						},
						["useTotal"] = false,
						["matchesShowOn"] = "showOnActive",
						["event"] = "Health",
						["unit"] = "target",
						["unitExists"] = false,
						["useExactSpellId"] = false,
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
				}, -- [2]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 66,
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
				["size"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
						[103] = true,
					},
				},
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
				["use_ignoreNameRealm"] = false,
				["use_talent"] = false,
			},
			["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
			["mirror"] = false,
			["anchorFrameFrame"] = "TargetFrame",
			["regionType"] = "texture",
			["blendMode"] = "ADD",
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\UI-FOCUSFRAME-LARGE-FLASH",
			["selfPoint"] = "CENTER",
			["discrete_rotation"] = 0,
			["authorOptions"] = {
			},
			["desc"] = "AURA MASTERY target highlight texture...",
			["id"] = "AURA MASTERY target",
			["alpha"] = 1,
			["frameStrata"] = 2,
			["width"] = 256,
			["config"] = {
			},
			["uid"] = "25IZogHGlrc",
			["inverse"] = false,
			["anchorFrameType"] = "SELECTFRAME",
			["conditions"] = {
			},
			["information"] = {
				["forceEvents"] = true,
			},
			["xOffset"] = -11,
		},
		["Jaraxxus - Incinerate Flesh Glow"] = {
			["outline"] = "OUTLINE",
			["iconSource"] = 0,
			["wagoID"] = "A5ytftEJV",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["shadowYOffset"] = -1,
			["anchorPoint"] = "CENTER",
			["frameStrata"] = 1,
			["cooldownSwipe"] = true,
			["displayText_format_p_time_format"] = 0,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/TemsToGC/18",
			["actions"] = {
				["start"] = {
					["glow_color"] = {
						0.67843137254902, -- [1]
						0.16470588235294, -- [2]
						0.082352941176471, -- [3]
						1, -- [4]
					},
					["glow_thickness"] = 4,
					["glow_action"] = "show",
					["glow_frequency"] = 0.2,
					["glow_lines"] = 8,
					["glow_length"] = 15,
					["do_glow"] = true,
					["use_glow_color"] = true,
					["glow_type"] = "Pixel",
					["glow_frame_type"] = "UNITFRAME",
				},
				["finish"] = {
					["hide_all_glows"] = true,
				},
				["init"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "16063",
						["spellId"] = "29685",
						["auranames"] = {
							"66237", -- [1]
						},
						["use_genericShowOn"] = true,
						["destUnit"] = "player",
						["group_count"] = "0",
						["group_countOperator"] = ">",
						["showClones"] = true,
						["use_health"] = true,
						["custom_type"] = "status",
						["event"] = "Conditions",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["use_name"] = false,
						["use_spellId"] = true,
						["name"] = "Obsidian Eradicator",
						["check"] = "update",
						["use_destUnit"] = false,
						["use_track"] = true,
						["spellName"] = 871,
						["sourceNpcId"] = "15932",
						["use_alwaystrue"] = true,
						["useGroup_count"] = false,
						["stacksOperator"] = ">",
						["use_sourceNpcId"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["stacks"] = "4",
						["powertype"] = 0,
						["spellIds"] = {
						},
						["duration"] = "20",
						["use_npcId"] = true,
						["names"] = {
						},
						["use_powertype"] = true,
						["debuffType"] = "HARMFUL",
						["type"] = "aura2",
						["use_sourceName"] = false,
						["unevent"] = "timed",
						["auraspellids"] = {
						},
						["useStacks"] = false,
						["useName"] = true,
						["useExactSpellId"] = false,
						["unit"] = "raid",
						["realSpellName"] = "Shield Wall",
						["use_spellName"] = false,
						["health"] = "0",
						["health_operator"] = ">",
						["subeventPrefix"] = "SPELL",
						["use_eventtype"] = true,
						["useAffected"] = false,
						["subeventSuffix"] = "_CAST_SUCCESS",
					},
					["untrigger"] = {
						["unit"] = "target",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["displayText_format_p_time_mod_rate"] = true,
			["internalVersion"] = 66,
			["keepAspectRatio"] = false,
			["wordWrap"] = "WordWrap",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayText"] = "",
			["yOffset"] = 0,
			["desaturate"] = false,
			["parent"] = "Tems ToGC - Glow [DO NOT MOVE]",
			["font"] = "Accidental Presidency",
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 64,
			["cooldownEdge"] = true,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
						["PRIEST"] = true,
					},
				},
				["use_encounterid"] = true,
				["use_zone"] = false,
				["zoneIds"] = "150",
				["encounterid"] = "633, 1087",
				["use_zoneIds"] = false,
				["zone"] = "",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["icon"] = true,
			["displayText_format_p_format"] = "timed",
			["fontSize"] = 18,
			["source"] = "import",
			["displayText_format_p_time_legacy_floor"] = false,
			["shadowXOffset"] = 1,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["preset"] = "spiralandpulse",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["displayText_format_p_time_dynamic_threshold"] = 60,
			["auto"] = false,
			["regionType"] = "text",
			["automaticWidth"] = "Auto",
			["selfPoint"] = "CENTER",
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["fixedWidth"] = 200,
			["xOffset"] = 0,
			["displayText_format_p_time_precision"] = 1,
			["zoom"] = 0,
			["config"] = {
			},
			["cooldownTextDisabled"] = false,
			["semver"] = "2.2.2",
			["tocversion"] = 30402,
			["id"] = "Jaraxxus - Incinerate Flesh Glow",
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["width"] = 64,
			["justify"] = "LEFT",
			["uid"] = "bUJ3lwlsWzI",
			["inverse"] = false,
			["useCooldownModRate"] = true,
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["displayIcon"] = 136160,
		},
		["Shadowfiend Duration"] = {
			["sparkWidth"] = 10,
			["sparkOffsetX"] = 0,
			["wagoID"] = "sz3jz7-QJ",
			["xOffset"] = 68,
			["preferToUpdate"] = false,
			["yOffset"] = -2,
			["anchorPoint"] = "CENTER",
			["cooldownTextDisabled"] = false,
			["cooldownSwipe"] = false,
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["cooldownEdge"] = false,
			["icon"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "34433",
						["duration"] = "15",
						["genericShowOn"] = "showOnCooldown",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["type"] = "combatlog",
						["subeventSuffix"] = "_CAST_SUCCESS",
						["unit"] = "player",
						["sourceUnit"] = "player",
						["event"] = "Combat Log",
						["names"] = {
						},
						["realSpellName"] = 0,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["use_sourceUnit"] = true,
						["spellName"] = 0,
						["use_spellId"] = true,
						["use_track"] = true,
						["use_genericShowOn"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 66,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["iconSource"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["barColor"] = {
				1, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["zoom"] = 0.2,
			["url"] = "",
			["version"] = 2,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text_format_p_big_number_format"] = "AbbreviateLargeNumbers",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_format"] = "Number",
					["text_text_format_p_decimal_precision"] = 0,
					["type"] = "subtext",
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_color"] = {
						1, -- [1]
						0.9333333333333333, -- [2]
						0.9372549019607843, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "INNER_LEFT",
					["text_text"] = "%p",
					["text_text_format_p_time_format"] = 0,
					["text_fontSize"] = 20,
					["anchorXOffset"] = 0,
					["text_text_format_p_round_type"] = "floor",
				}, -- [2]
			},
			["height"] = 30,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["load"] = {
				["use_class"] = true,
				["use_spellknown"] = false,
				["talent"] = {
					["single"] = 62,
					["multi"] = {
						[62] = true,
					},
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
				["spellknown"] = 31687,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
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
			["source"] = "import",
			["information"] = {
				["forceEvents"] = true,
			},
			["conditions"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "if not aura_env.region.mask then\n  aura_env.region.mask = aura_env.region:CreateMaskTexture()\nend\naura_env.region.mask:SetTexture([[Interface\\AddOns\\WeakAuras\\Media\\Textures\\Circle_White]])\naura_env.region.mask:SetAllPoints()\naura_env.region.icon:AddMaskTexture(aura_env.region.mask)\naura_env.region.cooldown:SetSwipeTexture([[Interface\\AddOns\\WeakAuras\\Media\\Textures\\Circle_White]], 0,0,0,0.2)\naura_env.region.cooldown:SetUseCircularEdge(true)\n",
					["do_custom"] = false,
				},
			},
			["sparkOffsetY"] = 0,
			["useAdjustededMin"] = false,
			["regionType"] = "icon",
			["authorOptions"] = {
			},
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["icon_side"] = "RIGHT",
			["anchorFrameType"] = "SELECTFRAME",
			["useCooldownModRate"] = true,
			["sparkHeight"] = 30,
			["texture"] = "Blizzard",
			["anchorFrameFrame"] = "PetFrame",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["spark"] = false,
			["tocversion"] = 30400,
			["id"] = "Shadowfiend Duration",
			["sparkHidden"] = "NEVER",
			["alpha"] = 1,
			["width"] = 30,
			["frameStrata"] = 1,
			["config"] = {
			},
			["inverse"] = false,
			["semver"] = "1.0.1",
			["orientation"] = "HORIZONTAL",
			["displayIcon"] = "136199",
			["cooldown"] = false,
			["uid"] = "9ni(PItb)Ay",
		},
		["Jaraxxus - Mistress' Kiss Debuff"] = {
			["iconSource"] = 0,
			["wagoID"] = "A5ytftEJV",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "https://wago.io/TemsToGC/18",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"66336", -- [1]
						},
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["useName"] = true,
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "function(trigger)\n    return trigger[1]\nend",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 66,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_size"] = 1,
					["type"] = "subborder",
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_offset"] = 1,
				}, -- [2]
				{
					["glowFrequency"] = 0.2,
					["type"] = "subglow",
					["glowXOffset"] = 0,
					["glowType"] = "Pixel",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowDuration"] = 1,
					["useGlowColor"] = false,
					["glowScale"] = 1,
					["glowThickness"] = 1.5,
					["glow"] = true,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_time_mod_rate"] = true,
					["type"] = "subtext",
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_text_format_p_time_format"] = 0,
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "BOTTOM",
					["anchorYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_precision"] = 1,
				}, -- [4]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "STOP CAST",
					["text_text_format_p_time_mod_rate"] = true,
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_format"] = "timed",
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["type"] = "subtext",
					["text_text_format_n_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["anchorYOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "TOP",
					["text_visible"] = true,
					["text_text_format_p_time_format"] = 0,
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_precision"] = 1,
				}, -- [5]
			},
			["height"] = 41,
			["load"] = {
				["use_encounterid"] = true,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "633, 1087",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["config"] = {
			},
			["cooldownEdge"] = false,
			["xOffset"] = 0,
			["regionType"] = "icon",
			["actions"] = {
				["start"] = {
					["message"] = "",
					["do_message"] = false,
					["message_type"] = "SAY",
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["cooldown"] = true,
			["conditions"] = {
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["zoom"] = 0.3,
			["anchorFrameType"] = "SCREEN",
			["cooldownTextDisabled"] = true,
			["semver"] = "2.2.2",
			["tocversion"] = 30402,
			["id"] = "Jaraxxus - Mistress' Kiss Debuff",
			["useCooldownModRate"] = true,
			["frameStrata"] = 1,
			["width"] = 41,
			["alpha"] = 1,
			["uid"] = "Y2eVT2Oiteq",
			["inverse"] = false,
			["parent"] = "Tems ToGC - Icons",
			["displayIcon"] = 136209,
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
		["Anubarak - Pursue Texture"] = {
			["user_y"] = 0,
			["user_x"] = 0,
			["color"] = {
				0.76470595598221, -- [1]
				0.27450981736183, -- [2]
				0.21176472306252, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["desaturateBackground"] = false,
			["compress"] = false,
			["wagoID"] = "A5ytftEJV",
			["sameTexture"] = true,
			["url"] = "https://wago.io/TemsToGC/18",
			["backgroundColor"] = {
				0.50196081399918, -- [1]
				0.50196081399918, -- [2]
				0.50196081399918, -- [3]
				0, -- [4]
			},
			["triggers"] = {
				{
					["trigger"] = {
						["useName"] = true,
						["spellId"] = "66046",
						["auranames"] = {
							"67574", -- [1]
						},
						["subeventPrefix"] = "SPELL",
						["duration"] = "11",
						["event"] = "Combat Log",
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["names"] = {
						},
						["type"] = "aura2",
						["unit"] = "player",
						["use_exact_spellId"] = true,
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"10278", -- [1]
						},
						["debuffType"] = "HELPFUL",
						["useName"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(trigger)\n    return trigger[1]\nend",
				["activeTriggerMode"] = -10,
			},
			["endAngle"] = 360,
			["internalVersion"] = 66,
			["parent"] = "Tems ToGC - Central Textures",
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
			["foregroundColor"] = {
				0.55686277151108, -- [1]
				0.10196079313755, -- [2]
				0.035294119268656, -- [3]
				1, -- [4]
			},
			["xOffset"] = 0,
			["desaturateForeground"] = false,
			["desaturate"] = false,
			["rotation"] = 0,
			["font"] = "Friz Quadrata TT",
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "{rt8}Pursued{rt8}",
					["text_text_format_p_time_mod_rate"] = true,
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["anchorYOffset"] = 0,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["type"] = "subtext",
					["text_text_format_p_time_precision"] = 1,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_shadowYOffset"] = -1,
					["text_visible"] = true,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_time_format"] = 0,
					["text_text_format_n_format"] = "none",
					["text_fontSize"] = 14,
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
				}, -- [2]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "Protected",
					["text_text_format_p_time_mod_rate"] = true,
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["anchorYOffset"] = 0,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["type"] = "subtext",
					["text_text_format_p_time_precision"] = 1,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_shadowYOffset"] = -1,
					["text_visible"] = false,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_time_format"] = 0,
					["text_text_format_n_format"] = "none",
					["text_fontSize"] = 14,
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
				}, -- [3]
				{
					["text_text_format_p_time_format"] = 0,
					["text_text"] = "%2.p",
					["text_text_format_2.p_time_format"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_text_format_2.p_time_legacy_floor"] = false,
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["rotateText"] = "NONE",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_fontSize"] = 14,
					["anchorXOffset"] = 0,
					["text_text_format_n_format"] = "none",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["text_text_format_2.p_time_precision"] = 1,
					["text_text_format_2.p_format"] = "timed",
					["type"] = "subtext",
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_anchorYOffset"] = -15,
					["text_text_format_2.p_time_dynamic_threshold"] = 60,
					["text_visible"] = false,
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_time_precision"] = 1,
					["text_text_format_p_time_mod_rate"] = true,
					["text_text_format_2.p_time_mod_rate"] = true,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_shadowXOffset"] = 1,
				}, -- [4]
			},
			["height"] = 140,
			["rotate"] = false,
			["load"] = {
				["use_encounterid"] = true,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "645, 1085",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["crop_x"] = 0.41,
			["useAdjustededMax"] = false,
			["backgroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura3",
			["source"] = "import",
			["foregroundTexture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Ring_20px.tga",
			["selfPoint"] = "CENTER",
			["authorOptions"] = {
			},
			["mirror"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "texture",
			["config"] = {
			},
			["blendMode"] = "BLEND",
			["crop_y"] = 0.41,
			["auraRotation"] = 0,
			["slantMode"] = "INSIDE",
			["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Circle_AlphaGradient_Out.tga",
			["startAngle"] = 0,
			["actions"] = {
				["start"] = {
					["message_format_unitName_realm_name"] = "never",
					["message_type"] = "SAY",
					["message_format_unitName_abbreviate_max"] = 8,
					["message"] = "{rt7} Pursue on %unitName {rt7}",
					["do_sound"] = true,
					["message_format_unitName_abbreviate"] = false,
					["message_format_unitName_format"] = "none",
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Glass.mp3",
					["do_message"] = true,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["semver"] = "2.2.2",
			["tocversion"] = 30402,
			["id"] = "Anubarak - Pursue Texture",
			["width"] = 140,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["uid"] = "LOk)hLASCB(",
			["inverse"] = false,
			["fontSize"] = 12,
			["orientation"] = "ANTICLOCKWISE",
			["conditions"] = {
				{
					["check"] = {
						["op"] = "==",
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 2,
								["op"] = "==",
								["value"] = "66001",
								["variable"] = "spellId",
							}, -- [2]
						},
						["value"] = 1,
						["variable"] = "show",
						["trigger"] = 2,
					},
					["changes"] = {
						{
							["property"] = "sub.2.text_visible",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "sub.3.text_visible",
						}, -- [2]
						{
							["value"] = {
								0.25098040699959, -- [1]
								0.61176472902298, -- [2]
								0.4627451300621, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [3]
						{
							["value"] = true,
							["property"] = "sub.4.text_visible",
						}, -- [4]
					},
				}, -- [1]
			},
			["information"] = {
			},
			["backgroundOffset"] = 2,
		},
		["Champions - BL/Hero"] = {
			["sparkWidth"] = 10,
			["iconSource"] = 0,
			["wagoID"] = "A5ytftEJV",
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["url"] = "https://wago.io/TemsToGC/18",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["triggers"] = {
				{
					["trigger"] = {
						["use_destFlags2"] = false,
						["spellId"] = "66017",
						["useGroup_count"] = true,
						["duration"] = "3",
						["message_operator"] = "find('%s')",
						["subeventPrefix"] = "SPELL",
						["use_sourceFlags"] = false,
						["group_count"] = "0",
						["use_destFlags"] = false,
						["group_countOperator"] = ">",
						["debuffType"] = "HELPFUL",
						["destFlags2"] = "Friendly",
						["type"] = "aura2",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_SUCCESS",
						["auranames"] = {
							"65980", -- [1]
						},
						["sourceFlags2"] = "Hostile",
						["event"] = "Combat Log",
						["use_sourceFlags2"] = true,
						["message"] = "Grand Warlock Wilfred Fizzlebang will summon forth your next challenge. Stand by for his entry",
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["useHostility"] = true,
						["use_message"] = true,
						["useName"] = true,
						["unit"] = "nameplate",
						["hostility"] = "hostile",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["use_destFlags2"] = false,
						["spellId"] = "66017",
						["useGroup_count"] = true,
						["duration"] = "3",
						["message_operator"] = "find('%s')",
						["subeventPrefix"] = "SPELL",
						["destFlags2"] = "Friendly",
						["use_sourceFlags"] = false,
						["group_count"] = "0",
						["use_destFlags"] = false,
						["group_countOperator"] = ">",
						["debuffType"] = "HELPFUL",
						["useName"] = true,
						["type"] = "aura2",
						["useNpcId"] = false,
						["subeventSuffix"] = "_CAST_SUCCESS",
						["auranames"] = {
							"65983", -- [1]
						},
						["sourceFlags2"] = "Hostile",
						["event"] = "Combat Log",
						["use_sourceFlags2"] = true,
						["message"] = "Grand Warlock Wilfred Fizzlebang will summon forth your next challenge. Stand by for his entry",
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["useHostility"] = true,
						["use_message"] = true,
						["names"] = {
						},
						["unit"] = "nameplate",
						["hostility"] = "hostile",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 66,
			["zoom"] = 0.3,
			["selfPoint"] = "CENTER",
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
			["barColor"] = {
				0.79215693473816, -- [1]
				0.80392163991928, -- [2]
				0.3647058904171, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["barColor2"] = {
				1, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = "==",
						["value"] = 1,
						["variable"] = "show",
					},
					["changes"] = {
						{
							["property"] = "sub.4.text_visible",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "sub.5.text_visible",
						}, -- [2]
						{
							["value"] = 132313,
							["property"] = "displayIcon",
						}, -- [3]
					},
				}, -- [1]
			},
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["type"] = "subforeground",
				}, -- [2]
				{
					["border_size"] = 1,
					["border_anchor"] = "bar",
					["type"] = "subborder",
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_offset"] = 0,
				}, -- [3]
				{
					["text_text_format_n_format"] = "none",
					["text_text"] = "BLOODLUST: %1.unitCount",
					["text_text_format_1.unitCount_format"] = "none",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_LEFT",
					["text_shadowXOffset"] = 1,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [4]
				{
					["text_text_format_n_format"] = "none",
					["text_text"] = "HEROISM: %1.unitCount",
					["text_text_format_1.unitCount_format"] = "none",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_LEFT",
					["text_shadowXOffset"] = 1,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_visible"] = false,
				}, -- [5]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%p",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_time_format"] = 0,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["type"] = "subtext",
					["text_anchorXOffset"] = -2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_text_format_p_time_precision"] = 1,
					["text_shadowYOffset"] = -1,
					["anchorYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_RIGHT",
					["text_visible"] = true,
					["text_text_format_p_format"] = "timed",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_mod_rate"] = true,
				}, -- [6]
			},
			["height"] = 20,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["load"] = {
				["use_encounterid"] = true,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "637, 1086",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["parent"] = "Tems ToGC - Timers",
			["source"] = "import",
			["gradientOrientation"] = "HORIZONTAL",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["enableGradient"] = false,
			["anchorFrameType"] = "SCREEN",
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["alpha"] = 1,
			["config"] = {
			},
			["icon_side"] = "LEFT",
			["id"] = "Champions - BL/Hero",
			["sparkHeight"] = 30,
			["texture"] = "Melli",
			["spark"] = false,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["semver"] = "2.2.2",
			["tocversion"] = 30402,
			["sparkHidden"] = "NEVER",
			["icon"] = true,
			["frameStrata"] = 1,
			["width"] = 200,
			["sparkOffsetX"] = 0,
			["uid"] = "dMGq7RlFxAH",
			["inverse"] = false,
			["sparkOffsetY"] = 0,
			["orientation"] = "HORIZONTAL",
			["displayIcon"] = 136012,
			["information"] = {
			},
			["authorOptions"] = {
			},
		},
		["Champions - Casts"] = {
			["sparkWidth"] = 10,
			["iconSource"] = -1,
			["wagoID"] = "A5ytftEJV",
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["url"] = "https://wago.io/TemsToGC/18",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.51000002026558, -- [4]
			},
			["triggers"] = {
				{
					["trigger"] = {
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "target",
						["debuffType"] = "HELPFUL",
						["use_interruptible"] = true,
						["type"] = "unit",
						["subeventSuffix"] = "_AURA_APPLIED",
						["subeventPrefix"] = "SPELL",
						["spellName"] = 0,
						["event"] = "Cast",
						["use_unit"] = true,
						["realSpellName"] = 0,
						["use_spellId"] = false,
						["spellIds"] = {
						},
						["use_spellName"] = false,
						["use_exact_spellId"] = false,
						["names"] = {
						},
						["use_track"] = true,
						["duration"] = "5",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 66,
			["zoom"] = 0.3,
			["selfPoint"] = "CENTER",
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
			["barColor"] = {
				0.27058824896812, -- [1]
				0.42352944612503, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["barColor2"] = {
				1, -- [1]
				0.05882353335619, -- [2]
				0.12156863510609, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["type"] = "subforeground",
				}, -- [2]
				{
					["border_size"] = 1,
					["border_anchor"] = "bg",
					["type"] = "subborder",
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_offset"] = 1,
				}, -- [3]
				{
					["text_text_format_n_format"] = "none",
					["text_text"] = "%1.spell",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 2,
					["text_text_format_1.spell_format"] = "none",
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_LEFT",
					["text_shadowXOffset"] = 1,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_fontSize"] = 14,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [4]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%p",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_time_format"] = 0,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["type"] = "subtext",
					["text_anchorXOffset"] = -2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_text_format_p_time_precision"] = 1,
					["text_shadowYOffset"] = -1,
					["anchorYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_RIGHT",
					["text_visible"] = true,
					["text_text_format_p_format"] = "timed",
					["text_fontSize"] = 14,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_mod_rate"] = true,
				}, -- [5]
			},
			["height"] = 22,
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\sonar.ogg",
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["load"] = {
				["use_encounterid"] = true,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "637, 1086",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["parent"] = "Tems ToGC - Casts",
			["source"] = "import",
			["gradientOrientation"] = "HORIZONTAL",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["enableGradient"] = true,
			["anchorFrameType"] = "SCREEN",
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["alpha"] = 1,
			["config"] = {
			},
			["icon_side"] = "LEFT",
			["id"] = "Champions - Casts",
			["sparkHeight"] = 30,
			["texture"] = "Clean",
			["spark"] = false,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["semver"] = "2.2.2",
			["tocversion"] = 30402,
			["sparkHidden"] = "NEVER",
			["icon"] = true,
			["frameStrata"] = 1,
			["width"] = 290,
			["sparkOffsetX"] = 0,
			["uid"] = "U3)67txTEQp",
			["inverse"] = true,
			["sparkOffsetY"] = 0,
			["orientation"] = "HORIZONTAL",
			["displayIcon"] = 132125,
			["information"] = {
			},
			["authorOptions"] = {
			},
		},
		["Twins - Essence Texture"] = {
			["sparkWidth"] = 10,
			["iconSource"] = 0,
			["authorOptions"] = {
			},
			["displayText"] = "%s",
			["yOffset"] = -45,
			["anchorPoint"] = "CENTER",
			["displayText_format_p_time_format"] = 0,
			["url"] = "https://wago.io/TemsToGC/18",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["displayText_format_1.percenthealth_gcd_hide_zero"] = false,
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["keepAspectRatio"] = false,
			["wordWrap"] = "WordWrap",
			["barColor"] = {
				1, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["rotation"] = 0,
			["font"] = "Accidental Presidency",
			["sparkOffsetY"] = 0,
			["load"] = {
				["use_encounterid"] = true,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "641, 1089",
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
			["shadowXOffset"] = 1,
			["useAdjustededMin"] = false,
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["displayText_format_1.percenthealth_round_type"] = "floor",
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Circle_Smooth2.tga",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["auto"] = false,
			["tocversion"] = 30402,
			["alpha"] = 1,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["fixedWidth"] = 200,
			["displayIcon"] = 135731,
			["outline"] = "OUTLINE",
			["cooldown"] = true,
			["sparkOffsetX"] = 0,
			["wagoID"] = "A5ytftEJV",
			["color"] = {
				1, -- [1]
				0.72156864404678, -- [2]
				0.066666670143604, -- [3]
				1, -- [4]
			},
			["displayText_format_1.percenthealth_gcd_gcd"] = true,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["shadowYOffset"] = -1,
			["displayText_format_p_time_mod_rate"] = true,
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["cooldownSwipe"] = true,
			["automaticWidth"] = "Auto",
			["displayText_format_1.percenthealth_decimal_precision"] = 1,
			["cooldownEdge"] = true,
			["icon"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"65686", -- [1]
							"65684", -- [2]
						},
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["useName"] = true,
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["displayText_format_p_format"] = "timed",
			["displayText_format_p_time_legacy_floor"] = false,
			["spark"] = false,
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
			["displayText_format_p_time_dynamic_threshold"] = 60,
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 5,
			["cooldownTextDisabled"] = false,
			["displayText_format_1.percenthealth_gcd_channel"] = false,
			["id"] = "Twins - Essence Texture",
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_text_format_n_format"] = "none",
					["text_text_format_s_format"] = "none",
					["text_text"] = "LIGHT",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "CENTER",
					["text_shadowXOffset"] = 1,
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [2]
				{
					["text_text_format_n_format"] = "none",
					["text_text_format_s_format"] = "none",
					["text_text"] = "SHADOW",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "CENTER",
					["text_shadowXOffset"] = 1,
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_visible"] = false,
				}, -- [3]
			},
			["height"] = 125,
			["rotate"] = false,
			["sparkRotationMode"] = "AUTO",
			["displayText_format_s_format"] = "none",
			["useAdjustededMax"] = false,
			["fontSize"] = 22,
			["source"] = "import",
			["justify"] = "LEFT",
			["config"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["mirror"] = false,
			["sparkRotation"] = 0,
			["sparkHeight"] = 30,
			["parent"] = "Tems ToGC - Central Textures",
			["xOffset"] = 0,
			["icon_side"] = "RIGHT",
			["displayText_format_1.percenthealth_format"] = "Number",
			["customTextUpdate"] = "update",
			["displayText_format_p_time_precision"] = 1,
			["internalVersion"] = 66,
			["displayText_format_1.percenthealth_gcd_cast"] = false,
			["displayText_format_1.percenthealth_big_number_format"] = "AbbreviateNumbers",
			["semver"] = "2.2.2",
			["sparkBlendMode"] = "ADD",
			["sparkHidden"] = "NEVER",
			["discrete_rotation"] = 0,
			["useCooldownModRate"] = true,
			["width"] = 125,
			["zoom"] = 0,
			["uid"] = "rvv5yl9EMdy",
			["inverse"] = false,
			["selfPoint"] = "CENTER",
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["value"] = "65684",
						["variable"] = "spellId",
					},
					["changes"] = {
						{
							["property"] = "sub.2.text_visible",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "sub.3.text_visible",
						}, -- [2]
						{
							["value"] = {
								0.55686277151108, -- [1]
								0.20000001788139, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [3]
					},
				}, -- [1]
			},
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["preferToUpdate"] = false,
		},
		["Light Vortex"] = {
			["sparkWidth"] = 10,
			["sparkOffsetX"] = 0,
			["wagoID"] = "A5ytftEJV",
			["parent"] = "Tems - Twins Special Abilities [Silas WA]",
			["preferToUpdate"] = false,
			["customText"] = "function()\n    return tostring(aura_env.CanBeUsed)\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["semver"] = "2.2.2",
			["sparkRotation"] = 0,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/TemsToGC/18",
			["actions"] = {
				["start"] = {
					["custom"] = "\n\n",
					["do_custom"] = false,
				},
				["finish"] = {
					["custom"] = "\n\n",
					["do_custom"] = false,
				},
				["init"] = {
					["custom"] = "aura_env.CanBeUsed = true",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "combatlog",
						["spellId"] = "66046",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "11",
						["event"] = "Combat Log",
						["unit"] = "player",
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["use_sourceUnit"] = false,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["sourceUnit"] = "player",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "custom",
						["custom"] = "function(event)\n    aura_env.CanBeUsed = true\n    return true\nend",
						["custom_type"] = "event",
						["events"] = "ENCOUNTER_START, TOGC_VALKYR_SPECIAL_ABILITIES_RESET",
						["duration"] = "1",
						["custom_hide"] = "timed",
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [2]
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
				}, -- [3]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t)\n    return t[3]\nend",
				["activeTriggerMode"] = 1,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 66,
			["selfPoint"] = "CENTER",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["barColor2"] = {
				1, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["barColor"] = {
				1, -- [1]
				1, -- [2]
				0.78431379795074, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
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
							["property"] = "sub.3.border_visible",
						}, -- [1]
						{
							["value"] = {
								0, -- [1]
								0, -- [2]
								0, -- [3]
								0.5, -- [4]
							},
							["property"] = "backgroundColor",
						}, -- [2]
						{
							["value"] = {
								["custom"] = "WeakAuras.ScanEvents(\"TOGC_VALKYR_SPECIAL_ABILITY_USED\")\naura_env.CanBeUsed = false",
							},
							["property"] = "customcode",
						}, -- [3]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "customcheck",
						["value"] = "function()\n    return not aura_env.CanBeUsed\nend",
					},
					["linked"] = true,
					["changes"] = {
						{
							["value"] = {
								0.55294120311737, -- [1]
								0.55294120311737, -- [2]
								0.55294120311737, -- [3]
								1, -- [4]
							},
							["property"] = "sub.4.text_color",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [2]
					},
				}, -- [2]
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
			["sparkOffsetY"] = 0,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["type"] = "subforeground",
				}, -- [2]
				{
					["border_size"] = 1,
					["border_anchor"] = "bar",
					["type"] = "subborder",
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = false,
					["border_edge"] = "Square Full White",
					["border_offset"] = 0,
				}, -- [3]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "Light Vortex",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_n_format"] = "none",
					["anchorXOffset"] = 0,
					["text_text_format_p_time_precision"] = 1,
					["type"] = "subtext",
					["text_anchorXOffset"] = 2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						0.69019609689713, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["anchorYOffset"] = 0,
					["text_shadowYOffset"] = -1,
					["text_text_format_p_time_format"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_LEFT",
					["text_visible"] = true,
					["text_text_format_p_time_mod_rate"] = true,
					["text_fontSize"] = 12,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_text_format_p_format"] = "timed",
				}, -- [4]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%p",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_n_format"] = "none",
					["anchorXOffset"] = 0,
					["text_text_format_p_time_precision"] = 1,
					["type"] = "subtext",
					["text_anchorXOffset"] = -2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						0.69019609689713, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["anchorYOffset"] = 0,
					["text_shadowYOffset"] = -1,
					["text_text_format_p_time_format"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_RIGHT",
					["text_visible"] = true,
					["text_text_format_p_time_mod_rate"] = true,
					["text_fontSize"] = 12,
					["text_text_format_p_time_dynamic_threshold"] = 5,
					["text_text_format_p_format"] = "timed",
				}, -- [5]
				{
					["tick_blend_mode"] = "ADD",
					["tick_rotation"] = 0,
					["tick_xOffset"] = 0,
					["tick_desaturate"] = false,
					["automatic_length"] = true,
					["tick_thickness"] = 2,
					["type"] = "subtick",
					["use_texture"] = false,
					["tick_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["tick_placement"] = "5",
					["tick_texture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
					["tick_yOffset"] = 0,
					["tick_visible"] = true,
					["tick_length"] = 30,
					["tick_mirror"] = false,
					["tick_placement_mode"] = "AtValue",
				}, -- [6]
			},
			["gradientOrientation"] = "HORIZONTAL",
			["sparkRotationMode"] = "AUTO",
			["load"] = {
				["use_encounterid"] = true,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "1089, 641",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["uid"] = "7BN82Nw926D",
			["source"] = "import",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["icon"] = true,
			["width"] = 200,
			["frameStrata"] = 1,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["height"] = 20,
			["id"] = "Light Vortex",
			["icon_side"] = "LEFT",
			["xOffset"] = 0,
			["sparkHeight"] = 30,
			["texture"] = "Solid",
			["zoom"] = 0.3,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["spark"] = false,
			["tocversion"] = 30402,
			["sparkHidden"] = "NEVER",
			["version"] = 18,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["authorOptions"] = {
			},
			["config"] = {
			},
			["inverse"] = false,
			["enableGradient"] = false,
			["orientation"] = "HORIZONTAL",
			["displayIcon"] = 135894,
			["information"] = {
			},
			["iconSource"] = 0,
		},
		["ToGC - Curse Glow"] = {
			["outline"] = "OUTLINE",
			["iconSource"] = 0,
			["wagoID"] = "A5ytftEJV",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["shadowYOffset"] = -1,
			["anchorPoint"] = "CENTER",
			["frameStrata"] = 1,
			["cooldownSwipe"] = true,
			["displayText_format_p_time_format"] = 0,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/TemsToGC/18",
			["actions"] = {
				["start"] = {
					["glow_color"] = {
						0.53333333333333, -- [1]
						0.22352941176471, -- [2]
						0.67843137254902, -- [3]
						1, -- [4]
					},
					["glow_thickness"] = 3,
					["glow_action"] = "show",
					["glow_frequency"] = 0.2,
					["glow_lines"] = 8,
					["glow_length"] = 15,
					["do_glow"] = true,
					["use_glow_color"] = true,
					["glow_type"] = "Pixel",
					["glow_frame_type"] = "UNITFRAME",
				},
				["finish"] = {
					["hide_all_glows"] = true,
				},
				["init"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["useMatch_count"] = false,
						["spellId"] = "28783",
						["auranames"] = {
							"53803", -- [1]
						},
						["duration"] = "2",
						["group_count"] = "0",
						["group_countOperator"] = ">",
						["showClones"] = true,
						["use_debuffClass"] = true,
						["subeventSuffix"] = "_CAST_START",
						["use_includePets"] = true,
						["use_spellId"] = true,
						["use_status"] = false,
						["useGroup_count"] = false,
						["includePets"] = "PlayersAndPets",
						["unit"] = "raid",
						["use_aggro"] = true,
						["useExactSpellId"] = false,
						["spellName"] = "Impale",
						["debuffType"] = "HARMFUL",
						["names"] = {
						},
						["type"] = "aura2",
						["match_countOperator"] = ">",
						["auraspellids"] = {
						},
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["threatUnit"] = "target",
						["useName"] = false,
						["use_threatUnit"] = true,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["unevent"] = "timed",
						["debuffClass"] = {
							["curse"] = true,
						},
						["match_count"] = "0",
						["useAffected"] = false,
						["event"] = "Combat Log",
					},
					["untrigger"] = {
						["threatUnit"] = "target",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["displayText_format_p_time_mod_rate"] = true,
			["internalVersion"] = 66,
			["keepAspectRatio"] = false,
			["wordWrap"] = "WordWrap",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayText"] = "",
			["yOffset"] = 0,
			["desaturate"] = false,
			["parent"] = "Tems ToGC - Glow [DO NOT MOVE]",
			["font"] = "Accidental Presidency",
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 64,
			["cooldownEdge"] = true,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
						["PRIEST"] = true,
					},
				},
				["use_encounterid"] = true,
				["use_zone"] = false,
				["zoneIds"] = "",
				["encounterid"] = "629, 633, 637, 641, 645",
				["use_zoneIds"] = false,
				["zone"] = "",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["icon"] = true,
			["displayText_format_p_format"] = "timed",
			["fontSize"] = 18,
			["source"] = "import",
			["displayText_format_p_time_legacy_floor"] = false,
			["shadowXOffset"] = 1,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["preset"] = "spiralandpulse",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["displayText_format_p_time_dynamic_threshold"] = 60,
			["auto"] = false,
			["regionType"] = "text",
			["automaticWidth"] = "Auto",
			["selfPoint"] = "CENTER",
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["fixedWidth"] = 200,
			["xOffset"] = 0,
			["displayText_format_p_time_precision"] = 1,
			["zoom"] = 0,
			["config"] = {
			},
			["cooldownTextDisabled"] = false,
			["semver"] = "2.2.2",
			["tocversion"] = 30402,
			["id"] = "ToGC - Curse Glow",
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["width"] = 64,
			["justify"] = "LEFT",
			["uid"] = "iy4ZPyxLlqj",
			["inverse"] = false,
			["useCooldownModRate"] = true,
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["displayIcon"] = 136160,
		},
		["Champions - Grip Target"] = {
			["outline"] = "None",
			["wagoID"] = "A5ytftEJV",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayText_format_p_time_dynamic_threshold"] = 10,
			["shadowYOffset"] = -1,
			["anchorPoint"] = "CENTER",
			["displayText_format_p_time_format"] = 0,
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/TemsToGC/18",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Glass.mp3",
					["do_sound"] = true,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["use_destFlags2"] = false,
						["spellId"] = "66017",
						["duration"] = "3",
						["message_operator"] = "find('%s')",
						["names"] = {
						},
						["destFlags2"] = "Friendly",
						["debuffType"] = "HELPFUL",
						["type"] = "combatlog",
						["subeventSuffix"] = "_CAST_SUCCESS",
						["use_destFlags"] = false,
						["event"] = "Combat Log",
						["use_sourceFlags2"] = true,
						["message"] = "Grand Warlock Wilfred Fizzlebang will summon forth your next challenge. Stand by for his entry",
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["unit"] = "player",
						["use_message"] = true,
						["sourceFlags2"] = "Hostile",
						["subeventPrefix"] = "SPELL",
						["use_sourceFlags"] = false,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["displayText_format_p_format"] = "timed",
			["displayText_format_p_time_legacy_floor"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["preset"] = "alphaPulse",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["displayText_format_1.unitName_format"] = "none",
			["displayText_format_1.destName_abbreviate_max"] = 8,
			["font"] = "KMT-GothamXN_Ultra",
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["parent"] = "Tems ToGC - Casts",
			["load"] = {
				["use_encounterid"] = true,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "637, 1086",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["yOffset"] = 0,
			["fontSize"] = 24,
			["source"] = "import",
			["preferToUpdate"] = false,
			["shadowXOffset"] = 1,
			["fixedWidth"] = 200,
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["automaticWidth"] = "Auto",
			["regionType"] = "text",
			["displayText_format_1.destName_realm_name"] = "never",
			["uid"] = "AzeWRSVeUOa",
			["wordWrap"] = "WordWrap",
			["displayText"] = "**%1.destName Gripped**",
			["displayText_format_p_time_precision"] = 1,
			["authorOptions"] = {
			},
			["id"] = "Champions - Grip Target",
			["semver"] = "2.2.2",
			["justify"] = "LEFT",
			["tocversion"] = 30402,
			["displayText_format_1.destName_abbreviate"] = false,
			["displayText_format_1.destName_format"] = "Unit",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["internalVersion"] = 66,
			["config"] = {
			},
			["displayText_format_p_time_mod_rate"] = true,
			["selfPoint"] = "BOTTOM",
			["displayText_format_1.destName_color"] = "class",
			["conditions"] = {
			},
			["information"] = {
			},
			["xOffset"] = 0,
		},
		["Twins - Shield of Darkness"] = {
			["sparkWidth"] = 10,
			["iconSource"] = 0,
			["wagoID"] = "A5ytftEJV",
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["url"] = "https://wago.io/TemsToGC/18",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.51000002026558, -- [4]
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "unit",
						["spellId"] = 65875,
						["subeventSuffix"] = "_CAST_START",
						["use_exact_spellId"] = true,
						["event"] = "Cast",
						["unit"] = "nameplate",
						["use_spellId"] = true,
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
				{
					["trigger"] = {
						["spellId"] = "65874",
						["auranames"] = {
							"65858", -- [1]
							"65874", -- [2]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["type"] = "combatlog",
						["unit"] = "nameplate",
						["subeventSuffix"] = "_AURA_REMOVED",
						["use_unit"] = true,
						["useName"] = true,
						["event"] = "Combat Log",
						["names"] = {
						},
						["realSpellName"] = 0,
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["spellName"] = 0,
						["use_spellName"] = false,
						["use_exact_spellId"] = false,
						["use_track"] = true,
						["duration"] = "15",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["spellId"] = "65874",
						["auranames"] = {
							"65858", -- [1]
							"65874", -- [2]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["type"] = "combatlog",
						["unit"] = "nameplate",
						["subeventSuffix"] = "_AURA_BROKEN",
						["use_unit"] = true,
						["useName"] = true,
						["event"] = "Combat Log",
						["names"] = {
						},
						["realSpellName"] = 0,
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["spellName"] = 0,
						["use_spellName"] = false,
						["use_exact_spellId"] = false,
						["use_track"] = true,
						["duration"] = "15",
					},
					["untrigger"] = {
					},
				}, -- [3]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(trigger)\n    return trigger[1]\nend",
				["activeTriggerMode"] = -10,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 66,
			["zoom"] = 0.3,
			["selfPoint"] = "CENTER",
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
			["barColor"] = {
				0.52549022436142, -- [1]
				0.22745099663734, -- [2]
				0.76862752437592, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["barColor2"] = {
				0.94901967048645, -- [1]
				0.52549022436142, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 3,
								["variable"] = "show",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["property"] = "sub.4.text_visible",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "sub.5.text_visible",
						}, -- [2]
						{
							["value"] = {
								["sound_type"] = "Play",
								["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\sonar.ogg",
								["sound_channel"] = "Master",
							},
							["property"] = "sound",
						}, -- [3]
						{
							["value"] = true,
							["property"] = "inverse",
						}, -- [4]
					},
				}, -- [1]
			},
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["type"] = "subforeground",
				}, -- [2]
				{
					["border_size"] = 1,
					["border_anchor"] = "bg",
					["type"] = "subborder",
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_offset"] = 1,
				}, -- [3]
				{
					["text_text_format_n_format"] = "none",
					["text_text"] = "ATTACK SHADOW",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 2,
					["text_text_format_1.spell_format"] = "none",
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_LEFT",
					["text_shadowXOffset"] = 1,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_fontSize"] = 14,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [4]
				{
					["text_text_format_n_format"] = "none",
					["text_text"] = "INTERRUPT",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 2,
					["text_text_format_1.spell_format"] = "none",
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_LEFT",
					["text_shadowXOffset"] = 1,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_fontSize"] = 14,
					["anchorXOffset"] = 0,
					["text_visible"] = false,
				}, -- [5]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%p",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_time_format"] = 0,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["type"] = "subtext",
					["text_anchorXOffset"] = -2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_text_format_p_time_precision"] = 1,
					["text_shadowYOffset"] = -1,
					["anchorYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_RIGHT",
					["text_visible"] = true,
					["text_text_format_p_format"] = "timed",
					["text_fontSize"] = 14,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_mod_rate"] = true,
				}, -- [6]
			},
			["height"] = 22,
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\sonar.ogg",
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["load"] = {
				["use_encounterid"] = true,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "641, 1089",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["parent"] = "Tems ToGC - Casts",
			["source"] = "import",
			["gradientOrientation"] = "HORIZONTAL",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["enableGradient"] = true,
			["anchorFrameType"] = "SCREEN",
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["alpha"] = 1,
			["config"] = {
			},
			["icon_side"] = "LEFT",
			["id"] = "Twins - Shield of Darkness",
			["sparkHeight"] = 30,
			["texture"] = "Clean",
			["spark"] = false,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["semver"] = "2.2.2",
			["tocversion"] = 30402,
			["sparkHidden"] = "NEVER",
			["icon"] = true,
			["frameStrata"] = 1,
			["width"] = 290,
			["sparkOffsetX"] = 0,
			["uid"] = "souYfTOLhTf",
			["inverse"] = false,
			["sparkOffsetY"] = 0,
			["orientation"] = "HORIZONTAL",
			["displayIcon"] = 135752,
			["information"] = {
			},
			["authorOptions"] = {
			},
		},
		["Beasts - Staggered Daze"] = {
			["sparkWidth"] = 10,
			["iconSource"] = 0,
			["wagoID"] = "A5ytftEJV",
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["url"] = "https://wago.io/TemsToGC/18",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.51000002026558, -- [4]
			},
			["triggers"] = {
				{
					["trigger"] = {
						["useName"] = true,
						["spellId"] = "66758",
						["auranames"] = {
							"66758", -- [1]
						},
						["use_sourceNpcId"] = true,
						["duration"] = "15",
						["event"] = "Combat Log",
						["unit"] = "target",
						["sourceNpcId"] = "34797",
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["names"] = {
						},
						["subeventSuffix"] = "_AURA_APPLIED",
						["subeventPrefix"] = "SPELL",
						["type"] = "combatlog",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 66,
			["zoom"] = 0.3,
			["selfPoint"] = "CENTER",
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
			["barColor"] = {
				0.27058824896812, -- [1]
				0.42352944612503, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["barColor2"] = {
				0.60000002384186, -- [1]
				0.95686280727386, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["type"] = "subforeground",
				}, -- [2]
				{
					["border_size"] = 1,
					["border_anchor"] = "bg",
					["type"] = "subborder",
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_offset"] = 1,
				}, -- [3]
				{
					["text_text_format_n_format"] = "none",
					["text_text"] = "Burn Boss",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_LEFT",
					["text_shadowXOffset"] = 1,
					["text_fontSize"] = 14,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [4]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%p",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_time_format"] = 0,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["type"] = "subtext",
					["text_anchorXOffset"] = -2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_text_format_p_time_precision"] = 1,
					["text_shadowYOffset"] = -1,
					["anchorYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_RIGHT",
					["text_visible"] = true,
					["text_text_format_p_format"] = "timed",
					["text_fontSize"] = 14,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_mod_rate"] = true,
				}, -- [5]
			},
			["height"] = 22,
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Glass.mp3",
					["do_sound"] = true,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["load"] = {
				["use_encounterid"] = true,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "629, 1088",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["parent"] = "Tems ToGC - Casts",
			["source"] = "import",
			["gradientOrientation"] = "HORIZONTAL",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["enableGradient"] = true,
			["anchorFrameType"] = "SCREEN",
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["alpha"] = 1,
			["config"] = {
			},
			["icon_side"] = "LEFT",
			["id"] = "Beasts - Staggered Daze",
			["sparkHeight"] = 30,
			["texture"] = "Clean",
			["spark"] = false,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["semver"] = "2.2.2",
			["tocversion"] = 30402,
			["sparkHidden"] = "NEVER",
			["icon"] = true,
			["frameStrata"] = 1,
			["width"] = 290,
			["sparkOffsetX"] = 0,
			["uid"] = "SvZgaZ2LcLp",
			["inverse"] = true,
			["sparkOffsetY"] = 0,
			["orientation"] = "HORIZONTAL",
			["displayIcon"] = 135860,
			["information"] = {
			},
			["authorOptions"] = {
			},
		},
		["Beasts - Paralytic Toxic Glow"] = {
			["outline"] = "OUTLINE",
			["iconSource"] = 0,
			["wagoID"] = "A5ytftEJV",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["shadowYOffset"] = -1,
			["anchorPoint"] = "CENTER",
			["frameStrata"] = 1,
			["cooldownSwipe"] = true,
			["displayText_format_p_time_format"] = 0,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/TemsToGC/18",
			["actions"] = {
				["start"] = {
					["glow_color"] = {
						0.54509806632996, -- [1]
						0.678431391716, -- [2]
						0.39215689897537, -- [3]
						1, -- [4]
					},
					["glow_thickness"] = 3,
					["glow_action"] = "show",
					["glow_frequency"] = 0.2,
					["glow_lines"] = 4,
					["glow_length"] = 15,
					["do_glow"] = true,
					["use_glow_color"] = true,
					["glow_type"] = "Pixel",
					["glow_frame_type"] = "UNITFRAME",
				},
				["finish"] = {
					["hide_all_glows"] = true,
				},
				["init"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "16063",
						["spellId"] = "29685",
						["auranames"] = {
							"66823", -- [1]
						},
						["use_genericShowOn"] = true,
						["destUnit"] = "player",
						["group_count"] = "0",
						["group_countOperator"] = ">",
						["showClones"] = true,
						["use_health"] = true,
						["custom_type"] = "status",
						["event"] = "Conditions",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["use_name"] = false,
						["use_spellId"] = true,
						["name"] = "Obsidian Eradicator",
						["check"] = "update",
						["use_destUnit"] = false,
						["use_track"] = true,
						["spellName"] = 871,
						["sourceNpcId"] = "15932",
						["use_alwaystrue"] = true,
						["useGroup_count"] = false,
						["stacksOperator"] = ">",
						["use_sourceNpcId"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["stacks"] = "4",
						["powertype"] = 0,
						["spellIds"] = {
						},
						["duration"] = "20",
						["use_npcId"] = true,
						["names"] = {
						},
						["use_powertype"] = true,
						["debuffType"] = "HARMFUL",
						["type"] = "aura2",
						["use_sourceName"] = false,
						["unevent"] = "timed",
						["auraspellids"] = {
						},
						["useStacks"] = false,
						["useName"] = true,
						["useExactSpellId"] = false,
						["unit"] = "raid",
						["realSpellName"] = "Shield Wall",
						["use_spellName"] = false,
						["health"] = "0",
						["health_operator"] = ">",
						["subeventPrefix"] = "SPELL",
						["use_eventtype"] = true,
						["useAffected"] = false,
						["subeventSuffix"] = "_CAST_SUCCESS",
					},
					["untrigger"] = {
						["unit"] = "target",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["displayText_format_p_time_mod_rate"] = true,
			["internalVersion"] = 66,
			["keepAspectRatio"] = false,
			["wordWrap"] = "WordWrap",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayText"] = "",
			["yOffset"] = 0,
			["desaturate"] = false,
			["parent"] = "Tems ToGC - Glow [DO NOT MOVE]",
			["font"] = "Accidental Presidency",
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 64,
			["cooldownEdge"] = true,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
						["PRIEST"] = true,
					},
				},
				["use_encounterid"] = true,
				["use_zone"] = false,
				["zoneIds"] = "150",
				["encounterid"] = "629, 1088",
				["use_zoneIds"] = false,
				["zone"] = "",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["icon"] = true,
			["displayText_format_p_format"] = "timed",
			["fontSize"] = 18,
			["source"] = "import",
			["displayText_format_p_time_legacy_floor"] = false,
			["shadowXOffset"] = 1,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["preset"] = "spiralandpulse",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["displayText_format_p_time_dynamic_threshold"] = 60,
			["auto"] = false,
			["regionType"] = "text",
			["automaticWidth"] = "Auto",
			["selfPoint"] = "CENTER",
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["fixedWidth"] = 200,
			["xOffset"] = 0,
			["displayText_format_p_time_precision"] = 1,
			["zoom"] = 0,
			["config"] = {
			},
			["cooldownTextDisabled"] = false,
			["semver"] = "2.2.2",
			["tocversion"] = 30402,
			["id"] = "Beasts - Paralytic Toxic Glow",
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["width"] = 64,
			["justify"] = "LEFT",
			["uid"] = "b9Yh()LzUme",
			["inverse"] = false,
			["useCooldownModRate"] = true,
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["displayIcon"] = 136160,
		},
		["Beasts - Debuffs"] = {
			["outline"] = "None",
			["iconSource"] = -1,
			["wagoID"] = "A5ytftEJV",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["displayText_format_p_time_dynamic_threshold"] = 10,
			["icon"] = true,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["displayText_format_p_time_format"] = 0,
			["customTextUpdate"] = "event",
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
						["type"] = "aura2",
						["auranames"] = {
							"66869", -- [1]
						},
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["useName"] = true,
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"66823", -- [1]
						},
						["group_countOperator"] = ">",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["unit"] = "group",
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
						},
						["names"] = {
						},
						["group_count"] = "0",
						["useName"] = true,
						["useGroup_count"] = true,
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(trigger)\n    return trigger[1]\nend",
				["activeTriggerMode"] = -10,
			},
			["displayText_format_p_format"] = "timed",
			["internalVersion"] = 66,
			["keepAspectRatio"] = false,
			["selfPoint"] = "BOTTOM",
			["parent"] = "Tems ToGC - Casts",
			["cooldown"] = true,
			["fixedWidth"] = 200,
			["desaturate"] = false,
			["displayText"] = "Combat in %p",
			["font"] = "KMT-GothamXN_Ultra",
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "** All Clear - Move Away **",
					["text_text_format_p_time_mod_rate"] = true,
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_format"] = "timed",
					["type"] = "subtext",
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_color"] = {
						0.8117647767067, -- [1]
						1, -- [2]
						0.78431379795074, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_text_format_p_time_precision"] = 1,
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["anchorYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_format"] = 0,
				}, -- [2]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "** Clear Toxins **",
					["text_text_format_p_time_mod_rate"] = true,
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_format"] = "timed",
					["type"] = "subtext",
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_color"] = {
						1, -- [1]
						0.61960786581039, -- [2]
						0.58431375026703, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_text_format_p_time_precision"] = 1,
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = false,
					["text_anchorPoint"] = "CENTER",
					["anchorYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_format"] = 0,
				}, -- [3]
			},
			["height"] = 20,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "show",
						["value"] = 1,
						["checks"] = {
							{
								["trigger"] = 1,
								["op"] = "<",
								["value"] = "2",
								["variable"] = "expirationTime",
							}, -- [1]
							{
								["trigger"] = 2,
								["op"] = "<",
								["value"] = "2",
								["variable"] = "expirationTime",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["property"] = "sub.2.text_visible",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "sub.3.text_visible",
						}, -- [2]
					},
				}, -- [1]
			},
			["load"] = {
				["use_zoneIds"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "629, 1088",
				["use_encounterid"] = false,
				["zoneIds"] = "172",
				["class"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
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
			["config"] = {
			},
			["fontSize"] = 16,
			["source"] = "import",
			["displayText_format_p_time_mod_rate"] = true,
			["shadowXOffset"] = 1,
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["automaticWidth"] = "Auto",
			["regionType"] = "icon",
			["preferToUpdate"] = false,
			["url"] = "https://wago.io/TemsToGC/18",
			["justify"] = "LEFT",
			["zoom"] = 0,
			["displayText_format_p_time_precision"] = 1,
			["alpha"] = 1,
			["shadowYOffset"] = -1,
			["cooldownTextDisabled"] = true,
			["semver"] = "2.2.2",
			["tocversion"] = 30402,
			["id"] = "Beasts - Debuffs",
			["wordWrap"] = "WordWrap",
			["useCooldownModRate"] = true,
			["width"] = 20,
			["displayText_format_p_time_legacy_floor"] = false,
			["uid"] = "QDMWP6p(9o9",
			["inverse"] = false,
			["authorOptions"] = {
			},
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["displayIcon"] = 132105,
			["information"] = {
			},
			["xOffset"] = 0,
		},
		["Twins - Dark Vortex"] = {
			["sparkWidth"] = 10,
			["iconSource"] = 0,
			["wagoID"] = "A5ytftEJV",
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["url"] = "https://wago.io/TemsToGC/18",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.51000002026558, -- [4]
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "combatlog",
						["spellId"] = "66058",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "6",
						["event"] = "Combat Log",
						["use_unit"] = true,
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["unit"] = "nameplate",
						["use_exact_spellId"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "combatlog",
						["spellId"] = "66058",
						["subeventSuffix"] = "_CAST_SUCCESS",
						["duration"] = "5",
						["event"] = "Combat Log",
						["use_unit"] = true,
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["unit"] = "nameplate",
						["use_exact_spellId"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "function(trigger)\n    return trigger[1] or trigger[2]\nend",
				["activeTriggerMode"] = -10,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 66,
			["zoom"] = 0.3,
			["selfPoint"] = "CENTER",
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
			["barColor"] = {
				0.94901967048645, -- [1]
				0.52549022436142, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["barColor2"] = {
				0.52549022436142, -- [1]
				0.22745099663734, -- [2]
				0.76862752437592, -- [3]
				1, -- [4]
			},
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
							["property"] = "inverse",
						}, -- [1]
					},
				}, -- [1]
			},
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["type"] = "subforeground",
				}, -- [2]
				{
					["border_size"] = 1,
					["border_anchor"] = "bg",
					["type"] = "subborder",
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_offset"] = 1,
				}, -- [3]
				{
					["text_text_format_n_format"] = "none",
					["text_text"] = "Dark Vortex",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 2,
					["text_text_format_1.spell_format"] = "none",
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_LEFT",
					["text_shadowXOffset"] = 1,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_fontSize"] = 14,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [4]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%p",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_time_format"] = 0,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["type"] = "subtext",
					["text_anchorXOffset"] = -2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_text_format_p_time_precision"] = 1,
					["text_shadowYOffset"] = -1,
					["anchorYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_RIGHT",
					["text_visible"] = true,
					["text_text_format_p_format"] = "timed",
					["text_fontSize"] = 14,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_mod_rate"] = true,
				}, -- [5]
			},
			["height"] = 22,
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\sonar.ogg",
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["load"] = {
				["use_encounterid"] = true,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "641, 1089",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["parent"] = "Tems ToGC - Casts",
			["source"] = "import",
			["gradientOrientation"] = "HORIZONTAL",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["enableGradient"] = true,
			["anchorFrameType"] = "SCREEN",
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["alpha"] = 1,
			["config"] = {
			},
			["icon_side"] = "LEFT",
			["id"] = "Twins - Dark Vortex",
			["sparkHeight"] = 30,
			["texture"] = "Clean",
			["spark"] = false,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["semver"] = "2.2.2",
			["tocversion"] = 30402,
			["sparkHidden"] = "NEVER",
			["icon"] = true,
			["frameStrata"] = 1,
			["width"] = 290,
			["sparkOffsetX"] = 0,
			["uid"] = "937vZEuNeLQ",
			["inverse"] = false,
			["sparkOffsetY"] = 0,
			["orientation"] = "HORIZONTAL",
			["displayIcon"] = 136202,
			["information"] = {
			},
			["authorOptions"] = {
			},
		},
		["Anubarak - Shadow Strike"] = {
			["sparkWidth"] = 10,
			["iconSource"] = 0,
			["wagoID"] = "A5ytftEJV",
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["url"] = "https://wago.io/TemsToGC/18",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "event",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Chat Message",
						["duration"] = "30",
						["message_operator"] = "find('%s')",
						["subeventPrefix"] = "SPELL",
						["message"] = "burrows into the ground",
						["names"] = {
						},
						["spellIds"] = {
						},
						["use_delay"] = true,
						["use_message"] = true,
						["unit"] = "player",
						["delay"] = 65,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_type"] = "event",
						["duration"] = "30",
						["event"] = "Health",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["spellIds"] = {
						},
						["custom"] = "function()\n    return true\nend",
						["names"] = {
						},
						["events"] = "TemsAnubShadowstrikeEvent",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_type"] = "event",
						["duration"] = "30",
						["event"] = "Health",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["spellIds"] = {
						},
						["custom"] = "function()\n    return true\nend",
						["names"] = {
						},
						["events"] = "ENCOUNTER_START",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [3]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "function(trigger)\n    return (trigger[1] or trigger[2]) and not trigger[3]\nend",
				["activeTriggerMode"] = -10,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 66,
			["zoom"] = 0.3,
			["selfPoint"] = "CENTER",
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
			["barColor"] = {
				0.49411767721176, -- [1]
				0.32941177487373, -- [2]
				0.78039222955704, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["barColor2"] = {
				1, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["type"] = "subforeground",
				}, -- [2]
				{
					["border_size"] = 1,
					["border_anchor"] = "bar",
					["type"] = "subborder",
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_offset"] = 0,
				}, -- [3]
				{
					["text_text_format_n_format"] = "none",
					["text_text"] = "Next Shadowstrike",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_LEFT",
					["text_shadowXOffset"] = 1,
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [4]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%p",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_time_format"] = 0,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["type"] = "subtext",
					["text_anchorXOffset"] = -2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_text_format_p_time_precision"] = 1,
					["text_shadowYOffset"] = -1,
					["anchorYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_RIGHT",
					["text_visible"] = true,
					["text_text_format_p_format"] = "timed",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_mod_rate"] = true,
				}, -- [5]
			},
			["height"] = 20,
			["actions"] = {
				["start"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
				["finish"] = {
					["custom"] = "C_Timer.After(0, function()\n        WeakAuras.ScanEvents(\"TemsAnubShadowstrikeEvent\")\nend)",
					["do_custom"] = true,
				},
				["init"] = {
				},
			},
			["load"] = {
				["use_encounterid"] = true,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "645, 1085",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["parent"] = "Tems ToGC - Timers",
			["source"] = "import",
			["gradientOrientation"] = "HORIZONTAL",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["enableGradient"] = false,
			["anchorFrameType"] = "SCREEN",
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["alpha"] = 1,
			["config"] = {
			},
			["icon_side"] = "LEFT",
			["id"] = "Anubarak - Shadow Strike",
			["sparkHeight"] = 30,
			["texture"] = "Melli",
			["spark"] = false,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["semver"] = "2.2.2",
			["tocversion"] = 30402,
			["sparkHidden"] = "NEVER",
			["icon"] = true,
			["frameStrata"] = 1,
			["width"] = 200,
			["sparkOffsetX"] = 0,
			["uid"] = "MjBIBXToegp",
			["inverse"] = false,
			["sparkOffsetY"] = 0,
			["orientation"] = "HORIZONTAL",
			["displayIcon"] = 136189,
			["information"] = {
			},
			["authorOptions"] = {
			},
		},
		["Dark Shield"] = {
			["sparkWidth"] = 10,
			["sparkOffsetX"] = 0,
			["wagoID"] = "A5ytftEJV",
			["parent"] = "Tems - Twins Special Abilities [Silas WA]",
			["preferToUpdate"] = false,
			["customText"] = "function()\n    return tostring(aura_env.CanBeUsed)\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["semver"] = "2.2.2",
			["sparkRotation"] = 0,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/TemsToGC/18",
			["actions"] = {
				["start"] = {
					["custom"] = "\n\n",
					["do_custom"] = false,
				},
				["finish"] = {
					["hide_all_glows"] = false,
					["custom"] = "\n\n",
					["do_custom"] = false,
				},
				["init"] = {
					["custom"] = "aura_env.CanBeUsed = true",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "34496",
						["spellId"] = "65875",
						["use_exact_spellId"] = true,
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["type"] = "unit",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Cast",
						["use_unit"] = true,
						["use_npcId"] = false,
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["use_sourceUnit"] = false,
						["unit"] = "nameplate",
						["duration"] = "15",
						["sourceUnit"] = "player",
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "custom",
						["custom"] = "function(event)\n    aura_env.CanBeUsed = true\n    return true\nend",
						["custom_type"] = "event",
						["events"] = "ENCOUNTER_START, TOGC_VALKYR_SPECIAL_ABILITIES_RESET",
						["duration"] = "1",
						["custom_hide"] = "timed",
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "combatlog",
						["spellId"] = "65874",
						["subeventSuffix"] = "_AURA_REMOVED",
						["duration"] = "15",
						["event"] = "Combat Log",
						["unit"] = "player",
						["use_spellName"] = false,
						["spellName"] = "Shield of Darkness",
						["use_spellId"] = true,
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [3]
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
				}, -- [4]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t)\n    return t[4]\nend",
				["activeTriggerMode"] = 1,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 66,
			["selfPoint"] = "CENTER",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["barColor2"] = {
				1, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["barColor"] = {
				0.38039219379425, -- [1]
				0.30196079611778, -- [2]
				0.64705884456635, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
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
							["property"] = "sub.3.border_visible",
						}, -- [1]
						{
							["value"] = {
								0, -- [1]
								0, -- [2]
								0, -- [3]
								0.5, -- [4]
							},
							["property"] = "backgroundColor",
						}, -- [2]
						{
							["value"] = {
								["custom"] = "WeakAuras.ScanEvents(\"TOGC_VALKYR_SPECIAL_ABILITY_USED\")\naura_env.CanBeUsed = false",
							},
							["property"] = "customcode",
						}, -- [3]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "customcheck",
						["value"] = "function()\n    return not aura_env.CanBeUsed\nend",
					},
					["linked"] = true,
					["changes"] = {
						{
							["value"] = {
								0.55294120311737, -- [1]
								0.55294120311737, -- [2]
								0.55294120311737, -- [3]
								1, -- [4]
							},
							["property"] = "sub.4.text_color",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 3,
								["variable"] = "show",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["property"] = "sub.4.text_visible",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "sub.5.text_visible",
						}, -- [2]
						{
							["value"] = {
								0.68235296010971, -- [1]
								0.34509804844856, -- [2]
								0.36862745881081, -- [3]
								1, -- [4]
							},
							["property"] = "barColor",
						}, -- [3]
					},
				}, -- [3]
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
			["sparkOffsetY"] = 0,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["type"] = "subforeground",
				}, -- [2]
				{
					["border_size"] = 1,
					["border_anchor"] = "bar",
					["type"] = "subborder",
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = false,
					["border_edge"] = "Square Full White",
					["border_offset"] = 0,
				}, -- [3]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "Dark Shield",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_n_format"] = "none",
					["anchorXOffset"] = 0,
					["text_text_format_p_time_precision"] = 1,
					["type"] = "subtext",
					["text_anchorXOffset"] = 2,
					["text_color"] = {
						0.80392163991928, -- [1]
						0.74117648601532, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["anchorYOffset"] = 0,
					["text_shadowYOffset"] = -1,
					["text_text_format_p_time_format"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_LEFT",
					["text_visible"] = true,
					["text_text_format_p_time_mod_rate"] = true,
					["text_fontSize"] = 12,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_text_format_p_format"] = "timed",
				}, -- [4]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "INTERRUPT",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_n_format"] = "none",
					["anchorXOffset"] = 0,
					["text_text_format_p_time_precision"] = 1,
					["type"] = "subtext",
					["text_anchorXOffset"] = 0,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["anchorYOffset"] = 0,
					["text_shadowYOffset"] = -1,
					["text_text_format_p_time_format"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_CENTER",
					["text_visible"] = false,
					["text_text_format_p_time_mod_rate"] = true,
					["text_fontSize"] = 12,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_text_format_p_format"] = "timed",
				}, -- [5]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%p",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_n_format"] = "none",
					["anchorXOffset"] = 0,
					["text_text_format_p_time_precision"] = 1,
					["type"] = "subtext",
					["text_anchorXOffset"] = -2,
					["text_color"] = {
						0.80392163991928, -- [1]
						0.74117648601532, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["anchorYOffset"] = 0,
					["text_shadowYOffset"] = -1,
					["text_text_format_p_time_format"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_RIGHT",
					["text_visible"] = true,
					["text_text_format_p_time_mod_rate"] = true,
					["text_fontSize"] = 12,
					["text_text_format_p_time_dynamic_threshold"] = 3,
					["text_text_format_p_format"] = "timed",
				}, -- [6]
			},
			["gradientOrientation"] = "HORIZONTAL",
			["sparkRotationMode"] = "AUTO",
			["load"] = {
				["use_encounterid"] = true,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "1089, 641",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["uid"] = "lIL)WE)(hAO",
			["source"] = "import",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["icon"] = true,
			["width"] = 200,
			["frameStrata"] = 1,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["height"] = 20,
			["id"] = "Dark Shield",
			["icon_side"] = "LEFT",
			["xOffset"] = 0,
			["sparkHeight"] = 30,
			["texture"] = "Solid",
			["zoom"] = 0.3,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["spark"] = false,
			["tocversion"] = 30402,
			["sparkHidden"] = "NEVER",
			["version"] = 18,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["authorOptions"] = {
			},
			["config"] = {
			},
			["inverse"] = false,
			["enableGradient"] = false,
			["orientation"] = "HORIZONTAL",
			["displayIcon"] = 135752,
			["information"] = {
			},
			["iconSource"] = 0,
		},
		["Jaraxxus - Incinerate Flesh"] = {
			["sparkWidth"] = 10,
			["iconSource"] = 0,
			["wagoID"] = "A5ytftEJV",
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["url"] = "https://wago.io/TemsToGC/18",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "combatlog",
						["spellId"] = "66237",
						["subeventSuffix"] = "_CAST_SUCCESS",
						["duration"] = "22",
						["event"] = "Combat Log",
						["unit"] = "player",
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_type"] = "event",
						["duration"] = "23",
						["event"] = "Health",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["spellIds"] = {
						},
						["custom"] = "function(event)\n    return true\nend",
						["names"] = {
						},
						["events"] = "ENCOUNTER_START",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "combatlog",
						["spellId"] = "66237",
						["subeventSuffix"] = "_CAST_SUCCESS",
						["duration"] = "99",
						["event"] = "Combat Log",
						["unit"] = "player",
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [3]
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_type"] = "event",
						["duration"] = "99",
						["event"] = "Health",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["spellIds"] = {
						},
						["custom"] = "function(event)\n    return true\nend",
						["names"] = {
						},
						["events"] = "ENCOUNTER_START",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [4]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 66,
			["zoom"] = 0.3,
			["selfPoint"] = "CENTER",
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
			["barColor"] = {
				0.75686281919479, -- [1]
				0.43921571969986, -- [2]
				0.27058824896812, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["barColor2"] = {
				1, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 0,
							}, -- [1]
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 0,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = {
								0.75686281919479, -- [1]
								0.43921571969986, -- [2]
								0.27058824896812, -- [3]
								1, -- [4]
							},
							["property"] = "backgroundColor",
						}, -- [1]
						{
							["property"] = "sub.4.text_visible",
						}, -- [2]
						{
							["property"] = "sub.6.text_visible",
						}, -- [3]
						{
							["value"] = true,
							["property"] = "sub.5.text_visible",
						}, -- [4]
					},
				}, -- [1]
			},
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["type"] = "subforeground",
				}, -- [2]
				{
					["border_size"] = 1,
					["border_anchor"] = "bar",
					["type"] = "subborder",
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_offset"] = 0,
				}, -- [3]
				{
					["text_text_format_n_format"] = "none",
					["text_text"] = "Next Incinerate",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_LEFT",
					["text_shadowXOffset"] = 1,
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [4]
				{
					["text_text_format_n_format"] = "none",
					["text_text"] = "Incinerate Soon",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_LEFT",
					["text_shadowXOffset"] = 1,
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_visible"] = false,
				}, -- [5]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%p",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_time_format"] = 0,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["type"] = "subtext",
					["text_anchorXOffset"] = -2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_text_format_p_time_precision"] = 1,
					["text_shadowYOffset"] = -1,
					["anchorYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_RIGHT",
					["text_visible"] = true,
					["text_text_format_p_format"] = "timed",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_mod_rate"] = true,
				}, -- [6]
			},
			["height"] = 20,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["load"] = {
				["use_encounterid"] = true,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "633, 1087",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["parent"] = "Tems ToGC - Timers",
			["source"] = "import",
			["gradientOrientation"] = "HORIZONTAL",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["enableGradient"] = false,
			["anchorFrameType"] = "SCREEN",
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["alpha"] = 1,
			["config"] = {
			},
			["icon_side"] = "LEFT",
			["id"] = "Jaraxxus - Incinerate Flesh",
			["sparkHeight"] = 30,
			["texture"] = "Melli",
			["spark"] = false,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["semver"] = "2.2.2",
			["tocversion"] = 30402,
			["sparkHidden"] = "NEVER",
			["icon"] = true,
			["frameStrata"] = 1,
			["width"] = 200,
			["sparkOffsetX"] = 0,
			["uid"] = "KGvFjnlGijN",
			["inverse"] = false,
			["sparkOffsetY"] = 0,
			["orientation"] = "HORIZONTAL",
			["displayIcon"] = 236297,
			["information"] = {
			},
			["authorOptions"] = {
			},
		},
		["Twins - Touch Glow"] = {
			["outline"] = "OUTLINE",
			["iconSource"] = 0,
			["wagoID"] = "A5ytftEJV",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["shadowYOffset"] = -1,
			["anchorPoint"] = "CENTER",
			["frameStrata"] = 1,
			["cooldownSwipe"] = true,
			["displayText_format_p_time_format"] = 0,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/TemsToGC/18",
			["actions"] = {
				["start"] = {
					["glow_color"] = {
						0.67843137254902, -- [1]
						0.16470588235294, -- [2]
						0.082352941176471, -- [3]
						1, -- [4]
					},
					["glow_thickness"] = 4,
					["glow_action"] = "show",
					["glow_frequency"] = 0.2,
					["glow_lines"] = 8,
					["glow_length"] = 15,
					["do_glow"] = true,
					["use_glow_color"] = true,
					["glow_type"] = "Pixel",
					["glow_frame_type"] = "UNITFRAME",
				},
				["finish"] = {
					["hide_all_glows"] = true,
				},
				["init"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "16063",
						["spellId"] = "29685",
						["auranames"] = {
							"65950", -- [1]
						},
						["use_genericShowOn"] = true,
						["destUnit"] = "player",
						["group_count"] = "0",
						["group_countOperator"] = ">",
						["showClones"] = true,
						["use_health"] = true,
						["custom_type"] = "status",
						["event"] = "Conditions",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["use_name"] = false,
						["use_spellId"] = true,
						["name"] = "Obsidian Eradicator",
						["check"] = "update",
						["use_destUnit"] = false,
						["use_track"] = true,
						["spellName"] = 871,
						["sourceNpcId"] = "15932",
						["use_alwaystrue"] = true,
						["useGroup_count"] = false,
						["stacksOperator"] = ">",
						["use_sourceNpcId"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["stacks"] = "4",
						["powertype"] = 0,
						["spellIds"] = {
						},
						["duration"] = "20",
						["use_npcId"] = true,
						["names"] = {
						},
						["use_powertype"] = true,
						["debuffType"] = "HARMFUL",
						["type"] = "aura2",
						["use_sourceName"] = false,
						["unevent"] = "timed",
						["auraspellids"] = {
						},
						["useStacks"] = false,
						["useName"] = true,
						["useExactSpellId"] = false,
						["unit"] = "raid",
						["realSpellName"] = "Shield Wall",
						["use_spellName"] = false,
						["health"] = "0",
						["health_operator"] = ">",
						["subeventPrefix"] = "SPELL",
						["use_eventtype"] = true,
						["useAffected"] = false,
						["subeventSuffix"] = "_CAST_SUCCESS",
					},
					["untrigger"] = {
						["unit"] = "target",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
					},
				}, -- [1]
				{
					["trigger"] = {
						["npcId"] = "16063",
						["spellId"] = "29685",
						["auranames"] = {
							"65684", -- [1]
						},
						["use_genericShowOn"] = true,
						["destUnit"] = "player",
						["group_count"] = "0",
						["group_countOperator"] = ">",
						["showClones"] = true,
						["use_health"] = true,
						["custom_type"] = "status",
						["event"] = "Conditions",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["use_name"] = false,
						["use_spellId"] = true,
						["name"] = "Obsidian Eradicator",
						["check"] = "update",
						["use_destUnit"] = false,
						["use_track"] = true,
						["spellName"] = 871,
						["sourceNpcId"] = "15932",
						["use_alwaystrue"] = true,
						["useGroup_count"] = false,
						["stacksOperator"] = ">",
						["use_sourceNpcId"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["stacks"] = "4",
						["powertype"] = 0,
						["spellIds"] = {
						},
						["duration"] = "20",
						["use_npcId"] = true,
						["names"] = {
						},
						["use_powertype"] = true,
						["debuffType"] = "HARMFUL",
						["type"] = "aura2",
						["use_sourceName"] = false,
						["unevent"] = "timed",
						["auraspellids"] = {
						},
						["useStacks"] = false,
						["useName"] = true,
						["useExactSpellId"] = false,
						["unit"] = "raid",
						["realSpellName"] = "Shield Wall",
						["use_spellName"] = false,
						["health"] = "0",
						["health_operator"] = ">",
						["subeventPrefix"] = "SPELL",
						["use_eventtype"] = true,
						["useAffected"] = false,
						["subeventSuffix"] = "_CAST_SUCCESS",
					},
					["untrigger"] = {
						["unit"] = "target",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
					},
				}, -- [2]
				{
					["trigger"] = {
						["npcId"] = "16063",
						["spellId"] = "29685",
						["auranames"] = {
							"66001", -- [1]
						},
						["use_genericShowOn"] = true,
						["destUnit"] = "player",
						["group_count"] = "0",
						["group_countOperator"] = ">",
						["showClones"] = true,
						["use_health"] = true,
						["custom_type"] = "status",
						["event"] = "Conditions",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["use_name"] = false,
						["use_spellId"] = true,
						["name"] = "Obsidian Eradicator",
						["check"] = "update",
						["use_destUnit"] = false,
						["use_track"] = true,
						["spellName"] = 871,
						["sourceNpcId"] = "15932",
						["use_alwaystrue"] = true,
						["useGroup_count"] = false,
						["stacksOperator"] = ">",
						["use_sourceNpcId"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["stacks"] = "4",
						["powertype"] = 0,
						["spellIds"] = {
						},
						["duration"] = "20",
						["use_npcId"] = true,
						["names"] = {
						},
						["use_powertype"] = true,
						["debuffType"] = "HARMFUL",
						["type"] = "aura2",
						["use_sourceName"] = false,
						["unevent"] = "timed",
						["auraspellids"] = {
						},
						["useStacks"] = false,
						["useName"] = true,
						["useExactSpellId"] = false,
						["unit"] = "raid",
						["realSpellName"] = "Shield Wall",
						["use_spellName"] = false,
						["health"] = "0",
						["health_operator"] = ">",
						["subeventPrefix"] = "SPELL",
						["use_eventtype"] = true,
						["useAffected"] = false,
						["subeventSuffix"] = "_CAST_SUCCESS",
					},
					["untrigger"] = {
						["unit"] = "target",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
					},
				}, -- [3]
				{
					["trigger"] = {
						["npcId"] = "16063",
						["spellId"] = "29685",
						["auranames"] = {
							"65686", -- [1]
						},
						["use_genericShowOn"] = true,
						["destUnit"] = "player",
						["group_count"] = "0",
						["group_countOperator"] = ">",
						["showClones"] = true,
						["use_health"] = true,
						["custom_type"] = "status",
						["event"] = "Conditions",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["use_name"] = false,
						["use_spellId"] = true,
						["name"] = "Obsidian Eradicator",
						["check"] = "update",
						["use_destUnit"] = false,
						["use_track"] = true,
						["spellName"] = 871,
						["sourceNpcId"] = "15932",
						["use_alwaystrue"] = true,
						["useGroup_count"] = false,
						["stacksOperator"] = ">",
						["use_sourceNpcId"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["stacks"] = "4",
						["powertype"] = 0,
						["spellIds"] = {
						},
						["duration"] = "20",
						["use_npcId"] = true,
						["names"] = {
						},
						["use_powertype"] = true,
						["debuffType"] = "HARMFUL",
						["type"] = "aura2",
						["use_sourceName"] = false,
						["unevent"] = "timed",
						["auraspellids"] = {
						},
						["useStacks"] = false,
						["useName"] = true,
						["useExactSpellId"] = false,
						["unit"] = "raid",
						["realSpellName"] = "Shield Wall",
						["use_spellName"] = false,
						["health"] = "0",
						["health_operator"] = ">",
						["subeventPrefix"] = "SPELL",
						["use_eventtype"] = true,
						["useAffected"] = false,
						["subeventSuffix"] = "_CAST_SUCCESS",
					},
					["untrigger"] = {
						["unit"] = "target",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
					},
				}, -- [4]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(trigger)\n    return (trigger[1] and trigger[2]) or (trigger[3] and trigger[4])\n    end",
				["activeTriggerMode"] = -10,
			},
			["displayText_format_p_time_mod_rate"] = true,
			["internalVersion"] = 66,
			["keepAspectRatio"] = false,
			["wordWrap"] = "WordWrap",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayText"] = "",
			["yOffset"] = 0,
			["desaturate"] = false,
			["parent"] = "Tems ToGC - Glow [DO NOT MOVE]",
			["font"] = "Accidental Presidency",
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 64,
			["cooldownEdge"] = true,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
						["PRIEST"] = true,
					},
				},
				["use_encounterid"] = true,
				["use_zone"] = false,
				["zoneIds"] = "150",
				["encounterid"] = "641, 1089",
				["use_zoneIds"] = false,
				["zone"] = "",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["icon"] = true,
			["displayText_format_p_format"] = "timed",
			["fontSize"] = 18,
			["source"] = "import",
			["displayText_format_p_time_legacy_floor"] = false,
			["shadowXOffset"] = 1,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["preset"] = "spiralandpulse",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["displayText_format_p_time_dynamic_threshold"] = 60,
			["auto"] = false,
			["regionType"] = "text",
			["automaticWidth"] = "Auto",
			["selfPoint"] = "CENTER",
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["fixedWidth"] = 200,
			["xOffset"] = 0,
			["displayText_format_p_time_precision"] = 1,
			["zoom"] = 0,
			["config"] = {
			},
			["cooldownTextDisabled"] = false,
			["semver"] = "2.2.2",
			["tocversion"] = 30402,
			["id"] = "Twins - Touch Glow",
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["width"] = 64,
			["justify"] = "LEFT",
			["uid"] = "Uhctc4fPUEM",
			["inverse"] = false,
			["useCooldownModRate"] = true,
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["displayIcon"] = 136160,
		},
		["Fojji - Don't Release V2 // Retail Edit"] = {
			["outline"] = "OUTLINE",
			["wagoID"] = "zlMMGfilv",
			["authorOptions"] = {
				{
					["type"] = "select",
					["values"] = {
						"Shift", -- [1]
						"Control", -- [2]
						"Alt", -- [3]
					},
					["default"] = 2,
					["name"] = "Modifier key",
					["useDesc"] = false,
					["key"] = "modKey",
					["width"] = 1,
				}, -- [1]
				{
					["type"] = "number",
					["useDesc"] = false,
					["max"] = 60,
					["step"] = 0.1,
					["width"] = 2,
					["min"] = 0,
					["key"] = "TIMEOUT",
					["default"] = 2,
					["name"] = "Hold key down for # seconds before enabling the release button",
				}, -- [2]
				{
					["type"] = "toggle",
					["key"] = "AUTO_RELEASE",
					["default"] = false,
					["name"] = "Auto-release when release button is clickable",
					["useDesc"] = false,
					["width"] = 2,
				}, -- [3]
				{
					["type"] = "toggle",
					["default"] = false,
					["width"] = 2,
					["name"] = "Enable Ape mode (EXPERIMENTAL)",
					["useDesc"] = true,
					["key"] = "APE",
					["desc"] = "Enabling this makes the dialog shake a lot when you get closer to the button with your cursor.",
				}, -- [4]
			},
			["displayText"] = " ",
			["customText"] = "",
			["shadowYOffset"] = -1,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/zlMMGfilv/2",
			["actions"] = {
				["start"] = {
					["message"] = "",
					["do_sound"] = false,
					["message_type"] = "PRINT",
					["do_custom"] = false,
					["do_message"] = false,
				},
				["finish"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
				["init"] = {
					["custom"] = "-- seconds to hold down modifier to enable the release button\naura_env.TIMEOUT = aura_env.config.TIMEOUT\n\n-- should we auto-release if modifier is held down long enough?\naura_env.AUTO_RELEASE = aura_env.config.AUTO_RELEASE\n\n-- format the text that explains this behavior\naura_env.INFO_TEXT = \"Hold %s for %d seconds to release.\"\naura_env.INFO_TEXT_SAFE = \"Keep holding and click the button.\"\n\n-- text shown below if someone can get back up and revive the group\naura_env.INFO_TEXT_HAS_RESS = \"|cffFF5555 DON T RELEASE!|r\"\n\n\n-- get modifier key\nlocal function IsModifierKeyDown()\n    -- print(\"key down\")\n    -- print(aura_env.config.modKey)\n    if aura_env.config.modKey == 1 then\n        return IsShiftKeyDown, \"SHIFT\"\n    elseif aura_env.config.modKey == 3 then\n        return IsAltKeyDown, \"ALT\"\n    end\n    return IsControlKeyDown, \"CTRL\"\nend\n\n-- returns the popup widget\nfunction aura_env:GetPopup()\n    local _, sp = StaticPopup_Visible(\"DEATH\")\n    return sp\nend\n\n-- copied from StaticPopup.lua#26\nlocal function GetSelfResurrectDialogOptions()\n    local resOptions = GetSortedSelfResurrectOptions()\n    if resOptions then\n        if IsEncounterLimitingResurrections() then\n            return resOptions[1], resOptions[2]\n        else\n            return resOptions[1]\n        end\n    end\nend\n\n-- returns true if we can release and the button is enabled by default\nfunction aura_env:CanRelease()\n    local sp = self:GetPopup()\n    local allowed = true\n    if sp then\n        if IsFalling() and not IsOutOfBounds() then\n            allowed = false -- wait until corpse lands\n        elseif IsEncounterSuppressingRelease() then\n            allowed = false -- encounter keeps us dead\n        elseif HasNoReleaseAura() then\n            allowed = false -- forced to stay dead\n        else\n            \n            -- self ress options with potential restrictions\n            local option1, option2 = GetSelfResurrectDialogOptions()\n            if option1 and not option1.canUse then\n                allowed = false\n            end\n            if option2 and not option2.canUse then\n                allowed = false\n            end\n        end\n    end\n    return allowed, sp\nend\n\n-- returns true if we aren't restricted and can release\nfunction aura_env:IsReleaseAllowed()\n    local canRelease, sp = self:CanRelease()\n    if canRelease and sp then\n        -- is running not worth it?\n        local allowed = not self:ShouldPreventRelease()\n        -- check if we have held modifier long enough - if we aren't allowed to run\n        if not allowed then\n            local _, remain = aura_env:UpdateModifierStatus()\n            if remain then\n                return remain < 1\n            end\n        end\n        -- is running allowed?\n        return allowed\n    end\n    return true\nend\n\n-- called every second in order to keep the button status up-to-date\nfunction aura_env:UpdateButton()\n    \n    local canRelease, sp = self:CanRelease()\n    -- print(canRelease)\n    if canRelease then\n        -- update button status\n        local status = self:IsReleaseAllowed()\n        sp.button1:SetShown(status)\n        --  print(\"button to false\")\n        -- append our explanation text and resize the popup widget\n        local text = sp.text:GetText()\n        if not status then\n            if text then\n                -- print(text)\n                local _, remain, modName = aura_env:UpdateModifierStatus()\n                local t\n                -- print(remain)\n                if remain and remain >= 1 then\n                    -- print(\"remain >=1\")\n                    t = format(self.INFO_TEXT, modName, max(0, remain))\n                elseif remain then\n                    -- print(\"elseif\")\n                    t = self.INFO_TEXT_SAFE\n                else\n                    --  print(\"else\")\n                    t = format(self.INFO_TEXT, modName, aura_env.TIMEOUT)\n                end\n                \n                t = aura_env.INFO_TEXT_HAS_RESS:format(c) .. \"\\n\" .. t\n                -- print(t)\n                sp.text:SetText(t)\n                StaticPopup_Resize(sp, sp.which)\n            end\n            return true\n        end\n    end\n    return false\nend\n\n-- called to update modifier status, returns also seconds elapsed\nfunction aura_env:UpdateModifierStatus()\n    local isModifierKeyDown, modifierKeyName = IsModifierKeyDown()\n    -- print(\"Modifier\")\n    if aura_env.TIMEOUT <= 0 then\n        return 0, 0, modifierKeyName\n    elseif isModifierKeyDown() then\n        if not aura_env.keyPressed then\n            aura_env.keyPressed = GetTime() + aura_env.TIMEOUT\n        end\n    else\n        aura_env.keyPressed = nil\n    end\n    local elapsed = aura_env.keyPressed\n    if elapsed then\n        return elapsed, elapsed - GetTime(), modifierKeyName\n    end\n    return elapsed, nil, modifierKeyName\nend\n\n\nfunction aura_env:ShouldPreventRelease()\n    \n    for i=1,10 do\n        local _,_,_,_,_,_,_,_,_,spellid = UnitDebuff(\"player\", i)\n        if spellid == 57724 or spellid == 57723 then\n            return true\n        end\n        return false\n    end\nend   \n\n\n\n\n",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "unit",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "1",
						["genericShowOn"] = "showOnActive",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["event"] = "Conditions",
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["names"] = {
						},
						["use_alive"] = false,
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["subeventSuffix"] = "_CAST_START",
						["type"] = "custom",
						["custom"] = "function()\n    if aura_env:GetPopup() then\n        aura_env:UpdateModifierStatus()\n        aura_env:UpdateButton()\n        return true\n    end\nend\n\n\n",
						["custom_type"] = "status",
						["check"] = "update",
						["genericShowOn"] = "showOnActive",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 66,
			["selfPoint"] = "CENTER",
			["font"] = "Friz Quadrata TT",
			["version"] = 2,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 0.99994909763336,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["class"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["flexible"] = true,
						["party"] = true,
						["ten"] = true,
						["twentyfive"] = true,
						["fortyman"] = true,
						["twenty"] = true,
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_zoneIds"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
						["normal"] = true,
						["challenge"] = true,
						["heroic"] = true,
						["mythic"] = true,
					},
				},
				["use_zone"] = false,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["instance_type"] = {
				},
				["use_alive"] = false,
				["role"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "147,148,151,149, 150",
			},
			["fontSize"] = 12,
			["source"] = "import",
			["shadowXOffset"] = 1,
			["regionType"] = "text",
			["fixedWidth"] = 1,
			["automaticWidth"] = "Auto",
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
			["wordWrap"] = "Elide",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["anchorFrameType"] = "SCREEN",
			["justify"] = "LEFT",
			["tocversion"] = 30401,
			["id"] = "Fojji - Don't Release V2 // Retail Edit",
			["config"] = {
				["AUTO_RELEASE"] = false,
				["modKey"] = 2,
				["TIMEOUT"] = 1,
				["APE"] = false,
			},
			["frameStrata"] = 1,
			["width"] = 1.0000220537186,
			["xOffset"] = 0,
			["uid"] = "fJvfzfdTdF5",
			["semver"] = "1.0.1",
			["yOffset"] = 0,
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["preferToUpdate"] = false,
		},
		["Beasts - Enrage"] = {
			["sparkWidth"] = 10,
			["iconSource"] = 0,
			["wagoID"] = "A5ytftEJV",
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["url"] = "https://wago.io/TemsToGC/18",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "event",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "224",
						["message_operator"] = "find('%s')",
						["names"] = {
						},
						["message"] = "The air itself freezes with the introduction of our next combatant, Icehowl! Kill or be killed, champions",
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["use_message"] = true,
						["event"] = "Chat Message",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "event",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "300",
						["message_operator"] = "find('%s')",
						["names"] = {
						},
						["message"] = "The monstrous menagerie has been vanquished",
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["use_message"] = true,
						["event"] = "Chat Message",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(trigger)\n    return trigger[1] and not trigger[2]\nend",
				["activeTriggerMode"] = -10,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 66,
			["zoom"] = 0.3,
			["selfPoint"] = "CENTER",
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
			["barColor"] = {
				0.79215693473816, -- [1]
				0.47450983524323, -- [2]
				0.46666669845581, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["barColor2"] = {
				1, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["type"] = "subforeground",
				}, -- [2]
				{
					["border_size"] = 1,
					["border_anchor"] = "bar",
					["type"] = "subborder",
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_offset"] = 0,
				}, -- [3]
				{
					["text_text_format_n_format"] = "none",
					["text_text"] = "Enrage",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_LEFT",
					["text_shadowXOffset"] = 1,
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [4]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%p",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_time_format"] = 0,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["type"] = "subtext",
					["text_anchorXOffset"] = -2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_text_format_p_time_precision"] = 1,
					["text_shadowYOffset"] = -1,
					["anchorYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_RIGHT",
					["text_visible"] = true,
					["text_text_format_p_format"] = "timed",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_mod_rate"] = true,
				}, -- [5]
			},
			["height"] = 20,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "629, 1088",
				["use_encounterid"] = true,
				["difficulty"] = {
				},
				["use_instance_type"] = false,
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["instance_type"] = {
					["multi"] = {
						[4] = true,
						[3] = true,
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["parent"] = "Tems ToGC - Timers",
			["source"] = "import",
			["gradientOrientation"] = "HORIZONTAL",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["enableGradient"] = false,
			["anchorFrameType"] = "SCREEN",
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["alpha"] = 1,
			["config"] = {
			},
			["icon_side"] = "LEFT",
			["id"] = "Beasts - Enrage",
			["sparkHeight"] = 30,
			["texture"] = "Melli",
			["spark"] = false,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["semver"] = "2.2.2",
			["tocversion"] = 30402,
			["sparkHidden"] = "NEVER",
			["icon"] = true,
			["frameStrata"] = 1,
			["width"] = 200,
			["sparkOffsetX"] = 0,
			["uid"] = "1v2hvZTUwpl",
			["inverse"] = false,
			["sparkOffsetY"] = 0,
			["orientation"] = "HORIZONTAL",
			["displayIcon"] = 136224,
			["information"] = {
			},
			["authorOptions"] = {
			},
		},
		["Twins - Shield of Lights"] = {
			["sparkWidth"] = 10,
			["iconSource"] = -1,
			["wagoID"] = "A5ytftEJV",
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["url"] = "https://wago.io/TemsToGC/18",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.51000002026558, -- [4]
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "unit",
						["spellId"] = 65876,
						["subeventSuffix"] = "_CAST_START",
						["use_exact_spellId"] = true,
						["event"] = "Cast",
						["unit"] = "nameplate",
						["use_spellId"] = true,
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
				{
					["trigger"] = {
						["spellId"] = "65874",
						["auranames"] = {
							"65858", -- [1]
							"65874", -- [2]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["type"] = "combatlog",
						["unit"] = "nameplate",
						["subeventSuffix"] = "_AURA_BROKEN",
						["use_unit"] = true,
						["useName"] = true,
						["event"] = "Combat Log",
						["names"] = {
						},
						["realSpellName"] = 0,
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["spellName"] = 0,
						["use_spellName"] = false,
						["use_exact_spellId"] = false,
						["use_track"] = true,
						["duration"] = "15",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["spellId"] = "65874",
						["auranames"] = {
							"65858", -- [1]
							"65874", -- [2]
						},
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["type"] = "combatlog",
						["unit"] = "nameplate",
						["subeventSuffix"] = "_AURA_REMOVED",
						["use_unit"] = true,
						["useName"] = true,
						["event"] = "Combat Log",
						["names"] = {
						},
						["realSpellName"] = 0,
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["spellName"] = 0,
						["use_spellName"] = false,
						["use_exact_spellId"] = false,
						["use_track"] = true,
						["duration"] = "15",
					},
					["untrigger"] = {
					},
				}, -- [3]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(trigger)\n    return trigger[1]\nend",
				["activeTriggerMode"] = -10,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 66,
			["zoom"] = 0.3,
			["selfPoint"] = "CENTER",
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
			["barColor"] = {
				0.80000007152557, -- [1]
				0.63529413938522, -- [2]
				0.34509804844856, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["barColor2"] = {
				1, -- [1]
				1, -- [2]
				0.96470594406128, -- [3]
				1, -- [4]
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 3,
								["variable"] = "show",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["property"] = "sub.4.text_visible",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "sub.5.text_visible",
						}, -- [2]
						{
							["value"] = {
								["sound_type"] = "Play",
								["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\sonar.ogg",
								["sound_channel"] = "Master",
							},
							["property"] = "sound",
						}, -- [3]
						{
							["value"] = true,
							["property"] = "inverse",
						}, -- [4]
					},
				}, -- [1]
			},
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["type"] = "subforeground",
				}, -- [2]
				{
					["border_size"] = 1,
					["border_anchor"] = "bg",
					["type"] = "subborder",
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_offset"] = 1,
				}, -- [3]
				{
					["text_text_format_n_format"] = "none",
					["text_text"] = "ATTACK LIGHT",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 2,
					["text_text_format_1.spell_format"] = "none",
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_LEFT",
					["text_shadowXOffset"] = 1,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_fontSize"] = 14,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [4]
				{
					["text_text_format_n_format"] = "none",
					["text_text"] = "INTERRUPT",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 2,
					["text_text_format_1.spell_format"] = "none",
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_LEFT",
					["text_shadowXOffset"] = 1,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_fontSize"] = 14,
					["anchorXOffset"] = 0,
					["text_visible"] = false,
				}, -- [5]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%p",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_time_format"] = 0,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["type"] = "subtext",
					["text_anchorXOffset"] = -2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_text_format_p_time_precision"] = 1,
					["text_shadowYOffset"] = -1,
					["anchorYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_RIGHT",
					["text_visible"] = true,
					["text_text_format_p_format"] = "timed",
					["text_fontSize"] = 14,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_mod_rate"] = true,
				}, -- [6]
			},
			["height"] = 22,
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\sonar.ogg",
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["load"] = {
				["use_encounterid"] = true,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "641, 1089",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["parent"] = "Tems ToGC - Casts",
			["source"] = "import",
			["gradientOrientation"] = "HORIZONTAL",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["enableGradient"] = true,
			["anchorFrameType"] = "SCREEN",
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["alpha"] = 1,
			["config"] = {
			},
			["icon_side"] = "LEFT",
			["id"] = "Twins - Shield of Lights",
			["sparkHeight"] = 30,
			["texture"] = "Clean",
			["spark"] = false,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["semver"] = "2.2.2",
			["tocversion"] = 30402,
			["sparkHidden"] = "NEVER",
			["icon"] = true,
			["frameStrata"] = 1,
			["width"] = 290,
			["sparkOffsetX"] = 0,
			["uid"] = "RO)d3af2coF",
			["inverse"] = false,
			["sparkOffsetY"] = 0,
			["orientation"] = "HORIZONTAL",
			["displayIcon"] = 135940,
			["information"] = {
			},
			["authorOptions"] = {
			},
		},
		["Champions - Bladestorm Nameplate"] = {
			["modelIsUnit"] = false,
			["iconSource"] = 0,
			["api"] = false,
			["xOffset"] = 0,
			["displayText"] = "SPARK SPAWNED\n",
			["yOffset"] = -45,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["url"] = "https://wago.io/TemsToGC/18",
			["actions"] = {
				["start"] = {
					["message"] = "",
					["message_format_unitName_format"] = "none",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = false,
					["message_format_c_format"] = "none",
					["do_message"] = false,
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\sonar.ogg",
					["message_type"] = "SAY",
				},
				["finish"] = {
					["do_custom"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_message"] = false,
					["do_sound"] = false,
				},
				["init"] = {
				},
			},
			["displayText_format_p_time_mod_rate"] = true,
			["keepAspectRatio"] = false,
			["model_path"] = "spells/arcanepower_state_chest.m2",
			["desaturate"] = false,
			["rotation"] = 0,
			["font"] = "Accidental Presidency",
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
						["HUNTER"] = true,
						["WARLOCK"] = true,
						["SHAMAN"] = true,
						["MAGE"] = true,
						["DRUID"] = true,
						["PALADIN"] = true,
						["PRIEST"] = true,
					},
				},
				["use_encounterid"] = true,
				["use_zone"] = false,
				["zoneIds"] = "",
				["encounterid"] = "637, 1086",
				["use_zoneIds"] = false,
				["zone"] = "",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
			["sequence"] = 1,
			["shadowXOffset"] = 1,
			["regionType"] = "texture",
			["model_st_us"] = 40,
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Circle_AlphaGradient_In.tga",
			["model_st_ry"] = 0,
			["auto"] = false,
			["tocversion"] = 30402,
			["model_st_rx"] = 270,
			["uid"] = "BTVCGtYdRx1",
			["fixedWidth"] = 200,
			["model_st_tz"] = 0,
			["parent"] = "Tems ToGC - Nameplates [DO NOT MOVE]",
			["outline"] = "OUTLINE",
			["cooldown"] = true,
			["borderBackdrop"] = "Blizzard Tooltip",
			["wagoID"] = "A5ytftEJV",
			["color"] = {
				1, -- [1]
				0.011764707043767, -- [2]
				0.047058828175068, -- [3]
				1, -- [4]
			},
			["authorOptions"] = {
			},
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["shadowYOffset"] = -1,
			["borderOffset"] = 5,
			["model_x"] = 0,
			["cooldownSwipe"] = true,
			["cooldownEdge"] = true,
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["advance"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "30084",
						["spellId"] = "56272",
						["auranames"] = {
							"63784", -- [1]
							"63785", -- [2]
							"9633", -- [3]
						},
						["duration"] = "1.5",
						["message_operator"] = "find('%s')",
						["destUnit"] = "player",
						["group_count"] = "0",
						["use_attackable"] = true,
						["group_countOperator"] = ">",
						["use_namerealm"] = false,
						["namerealm"] = "Crypt Guard",
						["subeventSuffix"] = "_CAST_START",
						["percenthealth"] = "0",
						["event"] = "Chat Message",
						["message"] = "",
						["use_spellId"] = true,
						["use_destUnit"] = false,
						["use_track"] = true,
						["useExactSpellId"] = false,
						["use_hostility"] = false,
						["useGroup_count"] = false,
						["percenthealth_operator"] = "~=",
						["subeventPrefix"] = "SPELL",
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["showClones"] = true,
						["use_genericShowOn"] = true,
						["unit"] = "nameplate",
						["use_npcId"] = true,
						["use_threatUnit"] = true,
						["type"] = "aura2",
						["use_cloneId"] = false,
						["debuffType"] = "HELPFUL",
						["use_sourceName"] = false,
						["sourceName"] = "Crypt Guard",
						["unevent"] = "timed",
						["auraspellids"] = {
						},
						["useName"] = true,
						["names"] = {
						},
						["threatUnit"] = "target",
						["use_status"] = false,
						["realSpellName"] = "Summon Corpse Scarabs",
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["spellName"] = "Summon Corpse Scarabs",
						["use_message"] = false,
						["use_percenthealth"] = true,
						["use_messageType"] = false,
						["use_aggro"] = true,
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "target",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["displayText_format_p_format"] = "timed",
			["displayText_format_p_time_legacy_floor"] = false,
			["model_fileId"] = "122968",
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "preset",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["preset"] = "alphaPulse",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["model_st_ty"] = 0,
			["alpha"] = 1,
			["version"] = 18,
			["width"] = 100,
			["discrete_rotation"] = 0,
			["frameStrata"] = 5,
			["model_st_tx"] = 0,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_text_format_n_format"] = "none",
					["text_text"] = "MOVE AWAY",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "CENTER",
					["text_shadowXOffset"] = 1,
					["text_anchorYOffset"] = 0,
					["text_fontSize"] = 11,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [2]
			},
			["height"] = 100,
			["rotate"] = true,
			["config"] = {
			},
			["displayText_format_p_time_dynamic_threshold"] = 60,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["fontSize"] = 26,
			["source"] = "import",
			["blendMode"] = "BLEND",
			["justify"] = "LEFT",
			["borderInset"] = 11,
			["mirror"] = false,
			["borderEdge"] = "None",
			["cooldownTextDisabled"] = false,
			["borderSize"] = 16,
			["border"] = false,
			["icon"] = true,
			["model_st_rz"] = 0,
			["model_z"] = 0,
			["displayText_format_p_time_precision"] = 1,
			["wordWrap"] = "WordWrap",
			["selfPoint"] = "CENTER",
			["displayText_format_p_time_format"] = 0,
			["semver"] = "2.2.2",
			["zoom"] = 0,
			["id"] = "Champions - Bladestorm Nameplate",
			["model_y"] = 0,
			["useCooldownModRate"] = true,
			["anchorFrameType"] = "NAMEPLATE",
			["internalVersion"] = 66,
			["displayIcon"] = 135731,
			["inverse"] = false,
			["scale"] = 1,
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["preferToUpdate"] = false,
		},
		["Champions - Mass Dispell Nameplate"] = {
			["modelIsUnit"] = false,
			["iconSource"] = 0,
			["api"] = false,
			["xOffset"] = 0,
			["displayText"] = "SPARK SPAWNED\n",
			["yOffset"] = -45,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["url"] = "https://wago.io/TemsToGC/18",
			["actions"] = {
				["start"] = {
					["message"] = "",
					["message_format_unitName_format"] = "none",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = false,
					["message_format_c_format"] = "none",
					["do_message"] = false,
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\sonar.ogg",
					["message_type"] = "SAY",
				},
				["finish"] = {
					["do_custom"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_message"] = false,
					["do_sound"] = false,
				},
				["init"] = {
				},
			},
			["displayText_format_p_time_mod_rate"] = true,
			["keepAspectRatio"] = false,
			["model_path"] = "spells/arcanepower_state_chest.m2",
			["desaturate"] = false,
			["rotation"] = 0,
			["font"] = "Accidental Presidency",
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
						["HUNTER"] = true,
						["WARLOCK"] = true,
						["SHAMAN"] = true,
						["MAGE"] = true,
						["DRUID"] = true,
						["PALADIN"] = true,
						["PRIEST"] = true,
					},
				},
				["use_encounterid"] = true,
				["use_zone"] = false,
				["zoneIds"] = "",
				["encounterid"] = "637, 1086",
				["use_zoneIds"] = false,
				["zone"] = "",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
			["sequence"] = 1,
			["shadowXOffset"] = 1,
			["regionType"] = "texture",
			["model_st_us"] = 40,
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Circle_AlphaGradient_In.tga",
			["model_st_ry"] = 0,
			["auto"] = false,
			["tocversion"] = 30402,
			["model_st_rx"] = 270,
			["uid"] = "b7U7A38eao(",
			["fixedWidth"] = 200,
			["model_st_tz"] = 0,
			["parent"] = "Tems ToGC - Nameplates [DO NOT MOVE]",
			["outline"] = "OUTLINE",
			["cooldown"] = true,
			["borderBackdrop"] = "Blizzard Tooltip",
			["wagoID"] = "A5ytftEJV",
			["color"] = {
				1, -- [1]
				0.60392159223557, -- [2]
				0.39607846736908, -- [3]
				1, -- [4]
			},
			["authorOptions"] = {
			},
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["shadowYOffset"] = -1,
			["borderOffset"] = 5,
			["model_x"] = 0,
			["cooldownSwipe"] = true,
			["cooldownEdge"] = true,
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["advance"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "30084",
						["spellId"] = "56272",
						["auranames"] = {
							"66009", -- [1]
							"66010", -- [2]
							"65802", -- [3]
						},
						["duration"] = "1.5",
						["message_operator"] = "find('%s')",
						["destUnit"] = "player",
						["group_count"] = "0",
						["use_attackable"] = true,
						["group_countOperator"] = ">",
						["use_namerealm"] = false,
						["namerealm"] = "Crypt Guard",
						["subeventSuffix"] = "_CAST_START",
						["percenthealth"] = "0",
						["event"] = "Chat Message",
						["message"] = "",
						["use_spellId"] = true,
						["use_destUnit"] = false,
						["use_track"] = true,
						["useExactSpellId"] = false,
						["use_hostility"] = false,
						["useGroup_count"] = false,
						["percenthealth_operator"] = "~=",
						["subeventPrefix"] = "SPELL",
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["showClones"] = true,
						["use_genericShowOn"] = true,
						["unit"] = "nameplate",
						["use_npcId"] = true,
						["use_threatUnit"] = true,
						["type"] = "aura2",
						["use_cloneId"] = false,
						["debuffType"] = "HELPFUL",
						["use_sourceName"] = false,
						["sourceName"] = "Crypt Guard",
						["unevent"] = "timed",
						["auraspellids"] = {
						},
						["useName"] = true,
						["names"] = {
						},
						["threatUnit"] = "target",
						["use_status"] = false,
						["realSpellName"] = "Summon Corpse Scarabs",
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["spellName"] = "Summon Corpse Scarabs",
						["use_message"] = false,
						["use_percenthealth"] = true,
						["use_messageType"] = false,
						["use_aggro"] = true,
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "target",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["displayText_format_p_format"] = "timed",
			["displayText_format_p_time_legacy_floor"] = false,
			["model_fileId"] = "122968",
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "preset",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["preset"] = "alphaPulse",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["model_st_ty"] = 0,
			["alpha"] = 1,
			["version"] = 18,
			["width"] = 100,
			["discrete_rotation"] = 0,
			["frameStrata"] = 5,
			["model_st_tx"] = 0,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_text_format_n_format"] = "none",
					["text_text"] = "MASS DISPELL",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "CENTER",
					["text_shadowXOffset"] = 1,
					["text_anchorYOffset"] = 0,
					["text_fontSize"] = 11,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [2]
			},
			["height"] = 100,
			["rotate"] = true,
			["config"] = {
			},
			["displayText_format_p_time_dynamic_threshold"] = 60,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["fontSize"] = 26,
			["source"] = "import",
			["blendMode"] = "BLEND",
			["justify"] = "LEFT",
			["borderInset"] = 11,
			["mirror"] = false,
			["borderEdge"] = "None",
			["cooldownTextDisabled"] = false,
			["borderSize"] = 16,
			["border"] = false,
			["icon"] = true,
			["model_st_rz"] = 0,
			["model_z"] = 0,
			["displayText_format_p_time_precision"] = 1,
			["wordWrap"] = "WordWrap",
			["selfPoint"] = "CENTER",
			["displayText_format_p_time_format"] = 0,
			["semver"] = "2.2.2",
			["zoom"] = 0,
			["id"] = "Champions - Mass Dispell Nameplate",
			["model_y"] = 0,
			["useCooldownModRate"] = true,
			["anchorFrameType"] = "NAMEPLATE",
			["internalVersion"] = 66,
			["displayIcon"] = 135731,
			["inverse"] = false,
			["scale"] = 1,
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["preferToUpdate"] = false,
		},
		["Twins - Empowered Debuff"] = {
			["iconSource"] = -1,
			["wagoID"] = "A5ytftEJV",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "https://wago.io/TemsToGC/18",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"65748", -- [1]
							"65724", -- [2]
						},
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["useName"] = true,
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "function(trigger)\n    return trigger[1]\nend",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 66,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_size"] = 1,
					["type"] = "subborder",
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_offset"] = 1,
				}, -- [2]
				{
					["glowFrequency"] = 0.2,
					["type"] = "subglow",
					["glowXOffset"] = 0,
					["glowType"] = "Pixel",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowDuration"] = 1,
					["useGlowColor"] = false,
					["glowScale"] = 1,
					["glowThickness"] = 1.5,
					["glow"] = true,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_time_mod_rate"] = true,
					["type"] = "subtext",
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_text_format_p_time_format"] = 0,
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "BOTTOM",
					["anchorYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_precision"] = 1,
				}, -- [4]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "+100%",
					["text_text_format_p_time_mod_rate"] = true,
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_format"] = "timed",
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["type"] = "subtext",
					["text_text_format_n_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["anchorYOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "TOP",
					["text_visible"] = true,
					["text_text_format_p_time_format"] = 0,
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_precision"] = 1,
				}, -- [5]
			},
			["height"] = 41,
			["load"] = {
				["use_encounterid"] = true,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "641, 1089",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["config"] = {
			},
			["cooldownEdge"] = false,
			["xOffset"] = 0,
			["regionType"] = "icon",
			["actions"] = {
				["start"] = {
					["message"] = "",
					["do_message"] = false,
					["message_type"] = "SAY",
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["cooldown"] = true,
			["conditions"] = {
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["zoom"] = 0.3,
			["anchorFrameType"] = "SCREEN",
			["cooldownTextDisabled"] = true,
			["semver"] = "2.2.2",
			["tocversion"] = 30402,
			["id"] = "Twins - Empowered Debuff",
			["useCooldownModRate"] = true,
			["frameStrata"] = 1,
			["width"] = 41,
			["alpha"] = 1,
			["uid"] = "85P)CAB249C",
			["inverse"] = false,
			["parent"] = "Tems ToGC - Icons",
			["displayIcon"] = "",
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
		["Beasts - Fire Bomb Glow"] = {
			["outline"] = "OUTLINE",
			["iconSource"] = 0,
			["wagoID"] = "A5ytftEJV",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["shadowYOffset"] = -1,
			["anchorPoint"] = "CENTER",
			["frameStrata"] = 1,
			["cooldownSwipe"] = true,
			["displayText_format_p_time_format"] = 0,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/TemsToGC/18",
			["actions"] = {
				["start"] = {
					["glow_color"] = {
						0.67843137254902, -- [1]
						0.16470588235294, -- [2]
						0.082352941176471, -- [3]
						1, -- [4]
					},
					["glow_thickness"] = 4,
					["glow_action"] = "show",
					["glow_frequency"] = 0.2,
					["glow_lines"] = 8,
					["glow_length"] = 15,
					["do_glow"] = true,
					["use_glow_color"] = true,
					["glow_type"] = "Pixel",
					["glow_frame_type"] = "UNITFRAME",
				},
				["finish"] = {
					["hide_all_glows"] = true,
				},
				["init"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "16063",
						["spellId"] = "29685",
						["auranames"] = {
							"66320", -- [1]
						},
						["use_genericShowOn"] = true,
						["destUnit"] = "player",
						["group_count"] = "0",
						["group_countOperator"] = ">",
						["showClones"] = true,
						["use_health"] = true,
						["custom_type"] = "status",
						["event"] = "Conditions",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["use_name"] = false,
						["use_spellId"] = true,
						["name"] = "Obsidian Eradicator",
						["check"] = "update",
						["use_destUnit"] = false,
						["use_track"] = true,
						["spellName"] = 871,
						["sourceNpcId"] = "15932",
						["use_alwaystrue"] = true,
						["useGroup_count"] = false,
						["stacksOperator"] = ">",
						["use_sourceNpcId"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["stacks"] = "4",
						["powertype"] = 0,
						["spellIds"] = {
						},
						["duration"] = "20",
						["use_npcId"] = true,
						["names"] = {
						},
						["use_powertype"] = true,
						["debuffType"] = "HARMFUL",
						["type"] = "aura2",
						["use_sourceName"] = false,
						["unevent"] = "timed",
						["auraspellids"] = {
						},
						["useStacks"] = false,
						["useName"] = true,
						["useExactSpellId"] = false,
						["unit"] = "raid",
						["realSpellName"] = "Shield Wall",
						["use_spellName"] = false,
						["health"] = "0",
						["health_operator"] = ">",
						["subeventPrefix"] = "SPELL",
						["use_eventtype"] = true,
						["useAffected"] = false,
						["subeventSuffix"] = "_CAST_SUCCESS",
					},
					["untrigger"] = {
						["unit"] = "target",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["displayText_format_p_time_mod_rate"] = true,
			["internalVersion"] = 66,
			["keepAspectRatio"] = false,
			["wordWrap"] = "WordWrap",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayText"] = "",
			["yOffset"] = 0,
			["desaturate"] = false,
			["parent"] = "Tems ToGC - Glow [DO NOT MOVE]",
			["font"] = "Accidental Presidency",
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 64,
			["cooldownEdge"] = true,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
						["PRIEST"] = true,
					},
				},
				["use_encounterid"] = true,
				["use_zone"] = false,
				["zoneIds"] = "150",
				["encounterid"] = "629, 1088",
				["use_zoneIds"] = false,
				["zone"] = "",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["icon"] = true,
			["displayText_format_p_format"] = "timed",
			["fontSize"] = 18,
			["source"] = "import",
			["displayText_format_p_time_legacy_floor"] = false,
			["shadowXOffset"] = 1,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["preset"] = "spiralandpulse",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["displayText_format_p_time_dynamic_threshold"] = 60,
			["auto"] = false,
			["regionType"] = "text",
			["automaticWidth"] = "Auto",
			["selfPoint"] = "CENTER",
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["fixedWidth"] = 200,
			["xOffset"] = 0,
			["displayText_format_p_time_precision"] = 1,
			["zoom"] = 0,
			["config"] = {
			},
			["cooldownTextDisabled"] = false,
			["semver"] = "2.2.2",
			["tocversion"] = 30402,
			["id"] = "Beasts - Fire Bomb Glow",
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["width"] = 64,
			["justify"] = "LEFT",
			["uid"] = "ad7VTT2AGEg",
			["inverse"] = false,
			["useCooldownModRate"] = true,
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["displayIcon"] = 136160,
		},
		["Jaraxxus - Incinerate Flesh Debuff"] = {
			["iconSource"] = 0,
			["wagoID"] = "A5ytftEJV",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "https://wago.io/TemsToGC/18",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"66237", -- [1]
						},
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["useName"] = true,
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "function(trigger)\n    return trigger[1]\nend",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 66,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_size"] = 1,
					["type"] = "subborder",
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_offset"] = 1,
				}, -- [2]
				{
					["glowFrequency"] = 0.2,
					["type"] = "subglow",
					["glowXOffset"] = 0,
					["glowType"] = "Pixel",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowDuration"] = 1,
					["useGlowColor"] = false,
					["glowScale"] = 1,
					["glowThickness"] = 1.5,
					["glow"] = true,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_time_mod_rate"] = true,
					["type"] = "subtext",
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_text_format_p_time_format"] = 0,
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "BOTTOM",
					["anchorYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_precision"] = 1,
				}, -- [4]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "HEAL UP",
					["text_text_format_p_time_mod_rate"] = true,
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_format"] = "timed",
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["type"] = "subtext",
					["text_text_format_n_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["anchorYOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "TOP",
					["text_visible"] = true,
					["text_text_format_p_time_format"] = 0,
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_precision"] = 1,
				}, -- [5]
			},
			["height"] = 41,
			["load"] = {
				["use_encounterid"] = true,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "633, 1087",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["config"] = {
			},
			["cooldownEdge"] = false,
			["xOffset"] = 0,
			["regionType"] = "icon",
			["actions"] = {
				["start"] = {
					["message"] = "{rt7} HEAL ME {rt7}",
					["do_message"] = true,
					["message_type"] = "SAY",
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["cooldown"] = true,
			["conditions"] = {
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["zoom"] = 0.3,
			["anchorFrameType"] = "SCREEN",
			["cooldownTextDisabled"] = true,
			["semver"] = "2.2.2",
			["tocversion"] = 30402,
			["id"] = "Jaraxxus - Incinerate Flesh Debuff",
			["useCooldownModRate"] = true,
			["frameStrata"] = 1,
			["width"] = 41,
			["alpha"] = 1,
			["uid"] = "XN3cO2FIV9L",
			["inverse"] = false,
			["parent"] = "Tems ToGC - Icons",
			["displayIcon"] = 236297,
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
		["Jaraxxus - Incinerate Flesh Cast"] = {
			["sparkWidth"] = 10,
			["iconSource"] = 0,
			["wagoID"] = "A5ytftEJV",
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["url"] = "https://wago.io/TemsToGC/18",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.51000002026558, -- [4]
			},
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "66242",
						["auranames"] = {
							"66237", -- [1]
						},
						["duration"] = "5",
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["use_genericShowOn"] = true,
						["group_count"] = "0",
						["use_unit"] = true,
						["group_countOperator"] = ">",
						["spellName"] = 0,
						["useGroup_count"] = true,
						["useName"] = true,
						["ignoreDead"] = true,
						["subeventSuffix"] = "_AURA_APPLIED",
						["type"] = "aura2",
						["use_spellName"] = false,
						["event"] = "Combat Log",
						["realSpellName"] = 0,
						["ignoreDisconnected"] = true,
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["unit"] = "group",
						["use_exact_spellId"] = false,
						["debuffType"] = "HARMFUL",
						["use_track"] = true,
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 66,
			["zoom"] = 0.3,
			["selfPoint"] = "CENTER",
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
			["barColor"] = {
				0.80392163991928, -- [1]
				0.52156865596771, -- [2]
				0.20784315466881, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["barColor2"] = {
				0.79215693473816, -- [1]
				0.28627452254295, -- [2]
				0.17647059261799, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["type"] = "subforeground",
				}, -- [2]
				{
					["border_size"] = 1,
					["border_anchor"] = "bg",
					["type"] = "subborder",
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_offset"] = 1,
				}, -- [3]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "Heal %1.unitName",
					["text_text_format_1.unitName_color"] = "class",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_1.unitName_abbreviate_max"] = 8,
					["type"] = "subtext",
					["text_anchorXOffset"] = 2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_text_format_1.unitName_format"] = "Unit",
					["text_shadowYOffset"] = -1,
					["text_text_format_1.unitName_realm_name"] = "never",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_LEFT",
					["text_text_format_n_format"] = "none",
					["text_visible"] = true,
					["text_fontSize"] = 14,
					["anchorXOffset"] = 0,
					["text_text_format_1.unitName_abbreviate"] = true,
				}, -- [4]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%p",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_time_format"] = 0,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["type"] = "subtext",
					["text_anchorXOffset"] = -2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_text_format_p_time_precision"] = 1,
					["text_shadowYOffset"] = -1,
					["anchorYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_RIGHT",
					["text_visible"] = true,
					["text_text_format_p_format"] = "timed",
					["text_fontSize"] = 14,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_mod_rate"] = true,
				}, -- [5]
			},
			["height"] = 22,
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\sonar.ogg",
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["load"] = {
				["use_encounterid"] = true,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "633, 1087",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["parent"] = "Tems ToGC - Casts",
			["source"] = "import",
			["gradientOrientation"] = "HORIZONTAL",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["enableGradient"] = true,
			["anchorFrameType"] = "SCREEN",
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["alpha"] = 1,
			["config"] = {
			},
			["icon_side"] = "LEFT",
			["id"] = "Jaraxxus - Incinerate Flesh Cast",
			["sparkHeight"] = 30,
			["texture"] = "Clean",
			["spark"] = false,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["semver"] = "2.2.2",
			["tocversion"] = 30402,
			["sparkHidden"] = "NEVER",
			["icon"] = true,
			["frameStrata"] = 1,
			["width"] = 290,
			["sparkOffsetX"] = 0,
			["uid"] = "2miAhtl8t3R",
			["inverse"] = true,
			["sparkOffsetY"] = 0,
			["orientation"] = "HORIZONTAL",
			["displayIcon"] = 236297,
			["information"] = {
			},
			["authorOptions"] = {
			},
		},
		["Anubarak - Pursue"] = {
			["sparkWidth"] = 10,
			["iconSource"] = -1,
			["xOffset"] = 0,
			["displayText"] = "%i Pursue on %1.unitName %i",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["displayText_format_p_time_format"] = 0,
			["url"] = "https://wago.io/TemsToGC/18",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\sonar.ogg",
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["enableGradient"] = false,
			["wordWrap"] = "WordWrap",
			["displayText_format_1.unitName_format"] = "Unit",
			["barColor"] = {
				0.84705889225006, -- [1]
				0.96862751245499, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["desaturate"] = false,
			["font"] = "KMT-GothamXN_Ultra",
			["sparkOffsetY"] = 0,
			["gradientOrientation"] = "HORIZONTAL",
			["load"] = {
				["use_encounterid"] = true,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "645, 1085",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["shadowXOffset"] = 1,
			["useAdjustededMin"] = false,
			["regionType"] = "text",
			["displayText_format_1.unitName_color"] = "class",
			["texture"] = "Melli",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["spark"] = false,
			["tocversion"] = 30402,
			["alpha"] = 1,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["fixedWidth"] = 200,
			["outline"] = "None",
			["sparkOffsetX"] = 0,
			["wagoID"] = "A5ytftEJV",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["shadowYOffset"] = -1,
			["customTextUpdate"] = "event",
			["automaticWidth"] = "Auto",
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = 65876,
						["auranames"] = {
							"67574", -- [1]
						},
						["use_exact_spellId"] = true,
						["unit"] = "group",
						["combineMode"] = "showHighest",
						["debuffType"] = "HARMFUL",
						["group_countOperator"] = "~=",
						["type"] = "aura2",
						["useAffected"] = true,
						["subeventSuffix"] = "_CAST_START",
						["useGroup_count"] = true,
						["useName"] = true,
						["event"] = "Cast",
						["subeventPrefix"] = "SPELL",
						["ignoreDisconnected"] = false,
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["ignoreDead"] = true,
						["use_unit"] = true,
						["names"] = {
						},
						["fetchRaidMark"] = false,
						["group_count"] = "0",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "function(trigger)\n    return trigger[1] or trigger[2]\nend",
				["activeTriggerMode"] = -10,
			},
			["displayText_format_p_format"] = "timed",
			["displayText_format_p_time_legacy_floor"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "preset",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["preset"] = "alphaPulse",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["internalVersion"] = 66,
			["barColor2"] = {
				0.50980395078659, -- [1]
				0.13333334028721, -- [2]
				0.14901961386204, -- [3]
				1, -- [4]
			},
			["displayText_format_1.unitName_abbreviate"] = true,
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 22,
			["orientation"] = "HORIZONTAL",
			["displayIcon"] = 132212,
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["displayText_format_1.unitName_abbreviate_max"] = 8,
			["source"] = "import",
			["config"] = {
			},
			["displayText_format_p_time_mod_rate"] = true,
			["sparkRotationMode"] = "AUTO",
			["width"] = 290,
			["parent"] = "Tems ToGC - Casts",
			["authorOptions"] = {
			},
			["id"] = "Anubarak - Pursue",
			["sparkRotation"] = 0,
			["icon_side"] = "LEFT",
			["justify"] = "LEFT",
			["displayText_format_p_time_precision"] = 1,
			["sparkHeight"] = 30,
			["icon"] = true,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0, -- [4]
			},
			["displayText_format_1.unitName_realm_name"] = "never",
			["semver"] = "2.2.2",
			["fontSize"] = 28,
			["sparkHidden"] = "NEVER",
			["displayText_format_p_time_dynamic_threshold"] = 10,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["uid"] = "mYAobuJPeJK",
			["selfPoint"] = "BOTTOM",
			["inverse"] = false,
			["zoom"] = 0.3,
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
			["preferToUpdate"] = false,
		},
		["Tems ToGC - Nameplates [DO NOT MOVE]"] = {
			["controlledChildren"] = {
				"Beasts - Frothing Enrage", -- [1]
				"Jaraxxus - Nether Power Nameplate", -- [2]
				"Champions - Mass Dispell Nameplate", -- [3]
				"Champions - Bladestorm Nameplate", -- [4]
				"Champions - Hellfire Nameplate", -- [5]
				"Champions - Totems", -- [6]
				"Champions - Classes Nameplate", -- [7]
				"Anubarak - Submerge Nameplate", -- [8]
				"Anubarak - Shadow Strike Nameplate", -- [9]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["wagoID"] = "A5ytftEJV",
			["parent"] = "ToGC",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["url"] = "https://wago.io/TemsToGC/18",
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
						["names"] = {
						},
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["event"] = "Health",
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["internalVersion"] = 66,
			["selfPoint"] = "CENTER",
			["version"] = 18,
			["subRegions"] = {
			},
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
			},
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["source"] = "import",
			["scale"] = 1,
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "group",
			["borderSize"] = 2,
			["config"] = {
			},
			["borderOffset"] = 4,
			["semver"] = "2.2.2",
			["tocversion"] = 30402,
			["id"] = "Tems ToGC - Nameplates [DO NOT MOVE]",
			["groupIcon"] = "236197",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
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
			["borderInset"] = 1,
			["authorOptions"] = {
			},
			["uid"] = "9xPqPLeWFw2",
			["conditions"] = {
			},
			["information"] = {
			},
			["xOffset"] = 0,
		},
		["Twins - Enrage"] = {
			["sparkWidth"] = 10,
			["iconSource"] = 0,
			["wagoID"] = "A5ytftEJV",
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["url"] = "https://wago.io/TemsToGC/18",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "custom",
						["subeventPrefix"] = "SPELL",
						["custom_type"] = "event",
						["events"] = "ENCOUNTER_START",
						["duration"] = "360",
						["message_operator"] = "find('%s')",
						["unit"] = "player",
						["message"] = "The air itself freezes with the introduction of our next combatant, Icehowl! Kill or be killed, champions",
						["spellIds"] = {
						},
						["custom"] = "function(event)\n    return true\nend",
						["event"] = "Chat Message",
						["use_message"] = true,
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 66,
			["zoom"] = 0.3,
			["selfPoint"] = "CENTER",
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
			["barColor"] = {
				0.79215693473816, -- [1]
				0.47450983524323, -- [2]
				0.46666669845581, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["barColor2"] = {
				1, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["type"] = "subforeground",
				}, -- [2]
				{
					["border_size"] = 1,
					["border_anchor"] = "bar",
					["type"] = "subborder",
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_offset"] = 0,
				}, -- [3]
				{
					["text_text_format_n_format"] = "none",
					["text_text"] = "Enrage",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_LEFT",
					["text_shadowXOffset"] = 1,
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [4]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%p",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_time_format"] = 0,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["type"] = "subtext",
					["text_anchorXOffset"] = -2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_text_format_p_time_precision"] = 1,
					["text_shadowYOffset"] = -1,
					["anchorYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_RIGHT",
					["text_visible"] = true,
					["text_text_format_p_format"] = "timed",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_mod_rate"] = true,
				}, -- [5]
			},
			["height"] = 20,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["load"] = {
				["use_encounterid"] = true,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "641, 1089",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["parent"] = "Tems ToGC - Timers",
			["source"] = "import",
			["gradientOrientation"] = "HORIZONTAL",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["enableGradient"] = false,
			["anchorFrameType"] = "SCREEN",
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["alpha"] = 1,
			["config"] = {
			},
			["icon_side"] = "LEFT",
			["id"] = "Twins - Enrage",
			["sparkHeight"] = 30,
			["texture"] = "Melli",
			["spark"] = false,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["semver"] = "2.2.2",
			["tocversion"] = 30402,
			["sparkHidden"] = "NEVER",
			["icon"] = true,
			["frameStrata"] = 1,
			["width"] = 200,
			["sparkOffsetX"] = 0,
			["uid"] = "8y(5ElqdJZK",
			["inverse"] = false,
			["sparkOffsetY"] = 0,
			["orientation"] = "HORIZONTAL",
			["displayIcon"] = 136224,
			["information"] = {
			},
			["authorOptions"] = {
			},
		},
		["Jaraxxus - Fel Fireball"] = {
			["sparkWidth"] = 10,
			["iconSource"] = 0,
			["wagoID"] = "A5ytftEJV",
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["url"] = "https://wago.io/TemsToGC/18",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.51000002026558, -- [4]
			},
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = 66532,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["type"] = "unit",
						["subeventSuffix"] = "_CAST_START",
						["spellName"] = 0,
						["event"] = "Cast",
						["use_spellId"] = true,
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_unit"] = true,
						["use_exact_spellId"] = false,
						["names"] = {
						},
						["use_track"] = true,
						["unit"] = "nameplate",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 66,
			["zoom"] = 0.3,
			["selfPoint"] = "CENTER",
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
			["barColor"] = {
				0.33333334326744, -- [1]
				0.58823531866074, -- [2]
				0.32156863808632, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["barColor2"] = {
				0.90196084976196, -- [1]
				1, -- [2]
				0.25098040699959, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["type"] = "subforeground",
				}, -- [2]
				{
					["border_size"] = 1,
					["border_anchor"] = "bg",
					["type"] = "subborder",
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_offset"] = 1,
				}, -- [3]
				{
					["text_text_format_n_format"] = "none",
					["text_text"] = "Interrupt",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_LEFT",
					["text_shadowXOffset"] = 1,
					["text_fontSize"] = 14,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [4]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%p",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_time_format"] = 0,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["type"] = "subtext",
					["text_anchorXOffset"] = -2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_text_format_p_time_precision"] = 1,
					["text_shadowYOffset"] = -1,
					["anchorYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_RIGHT",
					["text_visible"] = true,
					["text_text_format_p_format"] = "timed",
					["text_fontSize"] = 14,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_mod_rate"] = true,
				}, -- [5]
			},
			["height"] = 22,
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\sonar.ogg",
					["do_sound"] = true,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["load"] = {
				["use_encounterid"] = true,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "633, 1087",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["parent"] = "Tems ToGC - Casts",
			["source"] = "import",
			["gradientOrientation"] = "HORIZONTAL",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["enableGradient"] = true,
			["anchorFrameType"] = "SCREEN",
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["alpha"] = 1,
			["config"] = {
			},
			["icon_side"] = "LEFT",
			["id"] = "Jaraxxus - Fel Fireball",
			["sparkHeight"] = 30,
			["texture"] = "Clean",
			["spark"] = false,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["semver"] = "2.2.2",
			["tocversion"] = 30402,
			["sparkHidden"] = "NEVER",
			["icon"] = true,
			["frameStrata"] = 1,
			["width"] = 290,
			["sparkOffsetX"] = 0,
			["uid"] = "4eIlmL0VnU3",
			["inverse"] = true,
			["sparkOffsetY"] = 0,
			["orientation"] = "HORIZONTAL",
			["displayIcon"] = 135803,
			["information"] = {
			},
			["authorOptions"] = {
			},
		},
		["Jaraxxus - Legion Flame"] = {
			["sparkWidth"] = 10,
			["iconSource"] = 0,
			["wagoID"] = "A5ytftEJV",
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["url"] = "https://wago.io/TemsToGC/18",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"66197", -- [1]
						},
						["group_countOperator"] = ">",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["unit"] = "group",
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
						},
						["names"] = {
						},
						["group_count"] = "0",
						["useName"] = true,
						["useGroup_count"] = true,
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "combatlog",
						["spellId"] = "66197",
						["subeventSuffix"] = "_CAST_SUCCESS",
						["duration"] = "30",
						["event"] = "Combat Log",
						["unit"] = "player",
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_type"] = "event",
						["duration"] = "5",
						["event"] = "Health",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["spellIds"] = {
						},
						["custom"] = "function(event)\n    return true\nend",
						["names"] = {
						},
						["events"] = "ENCOUNTER_START",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [3]
				{
					["trigger"] = {
						["type"] = "combatlog",
						["spellId"] = "66197",
						["subeventSuffix"] = "_CAST_SUCCESS",
						["duration"] = "99",
						["event"] = "Combat Log",
						["unit"] = "player",
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [4]
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_type"] = "event",
						["duration"] = "99",
						["event"] = "Health",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["spellIds"] = {
						},
						["custom"] = "function(event)\n    return true\nend",
						["names"] = {
						},
						["events"] = "ENCOUNTER_START",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [5]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 66,
			["zoom"] = 0.3,
			["selfPoint"] = "CENTER",
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
			["barColor"] = {
				0.49411767721176, -- [1]
				0.75686281919479, -- [2]
				0.38431376218796, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["barColor2"] = {
				1, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["property"] = "sub.4.text_visible",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "sub.5.text_visible",
						}, -- [2]
						{
							["value"] = true,
							["property"] = "inverse",
						}, -- [3]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 0,
							}, -- [1]
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 0,
							}, -- [2]
							{
								["trigger"] = 3,
								["variable"] = "show",
								["value"] = 0,
							}, -- [3]
						},
					},
					["linked"] = true,
					["changes"] = {
						{
							["value"] = {
								0.49411767721176, -- [1]
								0.75686281919479, -- [2]
								0.38431376218796, -- [3]
								1, -- [4]
							},
							["property"] = "backgroundColor",
						}, -- [1]
						{
							["property"] = "sub.4.text_visible",
						}, -- [2]
						{
							["property"] = "sub.7.text_visible",
						}, -- [3]
						{
							["value"] = true,
							["property"] = "sub.6.text_visible",
						}, -- [4]
					},
				}, -- [2]
			},
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["type"] = "subforeground",
				}, -- [2]
				{
					["border_size"] = 1,
					["border_anchor"] = "bar",
					["type"] = "subborder",
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_offset"] = 0,
				}, -- [3]
				{
					["text_text_format_n_format"] = "none",
					["text_text"] = "Next Flame",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_LEFT",
					["text_shadowXOffset"] = 1,
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [4]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "Flame on %1.unitName",
					["text_text_format_1.unitName_color"] = "class",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_1.unitName_abbreviate_max"] = 8,
					["type"] = "subtext",
					["text_anchorXOffset"] = 2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_text_format_1.unitName_format"] = "Unit",
					["text_shadowYOffset"] = -1,
					["text_text_format_1.unitName_realm_name"] = "never",
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_LEFT",
					["text_text_format_n_format"] = "none",
					["text_visible"] = false,
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_text_format_1.unitName_abbreviate"] = true,
				}, -- [5]
				{
					["text_text_format_n_format"] = "none",
					["text_text"] = "Flame Soon",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_LEFT",
					["text_shadowXOffset"] = 1,
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_visible"] = false,
				}, -- [6]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%p",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_time_format"] = 0,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["type"] = "subtext",
					["text_anchorXOffset"] = -2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_text_format_p_time_precision"] = 1,
					["text_shadowYOffset"] = -1,
					["anchorYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_RIGHT",
					["text_visible"] = true,
					["text_text_format_p_format"] = "timed",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_mod_rate"] = true,
				}, -- [7]
			},
			["height"] = 20,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["load"] = {
				["use_encounterid"] = true,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "633, 1087",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["parent"] = "Tems ToGC - Timers",
			["source"] = "import",
			["gradientOrientation"] = "HORIZONTAL",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["enableGradient"] = false,
			["anchorFrameType"] = "SCREEN",
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["alpha"] = 1,
			["config"] = {
			},
			["icon_side"] = "LEFT",
			["id"] = "Jaraxxus - Legion Flame",
			["sparkHeight"] = 30,
			["texture"] = "Melli",
			["spark"] = false,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["semver"] = "2.2.2",
			["tocversion"] = 30402,
			["sparkHidden"] = "NEVER",
			["icon"] = true,
			["frameStrata"] = 1,
			["width"] = 200,
			["sparkOffsetX"] = 0,
			["uid"] = "Zt1yf6yHk)Z",
			["inverse"] = false,
			["sparkOffsetY"] = 0,
			["orientation"] = "HORIZONTAL",
			["displayIcon"] = 135802,
			["information"] = {
			},
			["authorOptions"] = {
			},
		},
		["Anubarak - Freezing Slash Debuff"] = {
			["iconSource"] = 0,
			["wagoID"] = "A5ytftEJV",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "https://wago.io/TemsToGC/18",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"66012", -- [1]
						},
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["useName"] = true,
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "function(trigger)\n    return trigger[1]\nend",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 66,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_size"] = 1,
					["type"] = "subborder",
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_offset"] = 1,
				}, -- [2]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_time_mod_rate"] = true,
					["type"] = "subtext",
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_text_format_p_time_format"] = 0,
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "BOTTOM",
					["anchorYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_precision"] = 1,
				}, -- [3]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "STUNNED",
					["text_text_format_p_time_mod_rate"] = true,
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_format"] = "timed",
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["type"] = "subtext",
					["text_text_format_n_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["anchorYOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "TOP",
					["text_visible"] = true,
					["text_text_format_p_time_format"] = 0,
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_precision"] = 1,
				}, -- [4]
			},
			["height"] = 41,
			["load"] = {
				["use_encounterid"] = true,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "645, 1085",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["config"] = {
			},
			["cooldownEdge"] = false,
			["xOffset"] = 0,
			["regionType"] = "icon",
			["actions"] = {
				["start"] = {
					["message"] = "",
					["do_message"] = false,
					["message_type"] = "SAY",
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["cooldown"] = true,
			["conditions"] = {
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["zoom"] = 0.3,
			["anchorFrameType"] = "SCREEN",
			["cooldownTextDisabled"] = true,
			["semver"] = "2.2.2",
			["tocversion"] = 30402,
			["id"] = "Anubarak - Freezing Slash Debuff",
			["useCooldownModRate"] = true,
			["frameStrata"] = 1,
			["width"] = 41,
			["alpha"] = 1,
			["uid"] = "wgLHOISIaDx",
			["inverse"] = false,
			["parent"] = "Tems ToGC - Icons",
			["displayIcon"] = 135844,
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
		["Jaraxxus - Nether Power Nameplate"] = {
			["modelIsUnit"] = false,
			["iconSource"] = 0,
			["api"] = false,
			["xOffset"] = 0,
			["displayText"] = "SPARK SPAWNED\n",
			["yOffset"] = -60,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["url"] = "https://wago.io/TemsToGC/18",
			["actions"] = {
				["start"] = {
					["message"] = "",
					["message_format_unitName_format"] = "none",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = false,
					["message_format_c_format"] = "none",
					["do_message"] = false,
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\sonar.ogg",
					["message_type"] = "SAY",
				},
				["finish"] = {
					["do_custom"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_message"] = false,
					["do_sound"] = false,
				},
				["init"] = {
				},
			},
			["displayText_format_p_time_mod_rate"] = true,
			["keepAspectRatio"] = false,
			["model_path"] = "spells/arcanepower_state_chest.m2",
			["desaturate"] = false,
			["rotation"] = 0,
			["font"] = "Accidental Presidency",
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "633, 1087",
				["use_encounterid"] = true,
				["raid_role"] = {
				},
				["use_zone"] = false,
				["zoneIds"] = "148",
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
						["MAGE"] = true,
						["PRIEST"] = true,
						["SHAMAN"] = true,
					},
				},
				["use_zoneIds"] = false,
				["zone"] = "",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
			["sequence"] = 1,
			["shadowXOffset"] = 1,
			["regionType"] = "texture",
			["model_st_us"] = 40,
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Circle_AlphaGradient_In.tga",
			["model_st_ry"] = 0,
			["auto"] = false,
			["tocversion"] = 30402,
			["model_st_rx"] = 270,
			["uid"] = "UaP4TRuovcz",
			["fixedWidth"] = 200,
			["model_st_tz"] = 0,
			["parent"] = "Tems ToGC - Nameplates [DO NOT MOVE]",
			["outline"] = "OUTLINE",
			["cooldown"] = true,
			["borderBackdrop"] = "Blizzard Tooltip",
			["wagoID"] = "A5ytftEJV",
			["color"] = {
				0.78823536634445, -- [1]
				0.3137255012989, -- [2]
				0.78039222955704, -- [3]
				1, -- [4]
			},
			["authorOptions"] = {
			},
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["shadowYOffset"] = -1,
			["borderOffset"] = 5,
			["model_x"] = 0,
			["cooldownSwipe"] = true,
			["cooldownEdge"] = true,
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["advance"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "33715",
						["spellId"] = "56272",
						["auranames"] = {
							"66228", -- [1]
						},
						["duration"] = "1.5",
						["message_operator"] = "find('%s')",
						["destUnit"] = "player",
						["group_count"] = "0",
						["use_attackable"] = true,
						["group_countOperator"] = ">",
						["use_namerealm"] = false,
						["namerealm"] = "Crypt Guard",
						["subeventSuffix"] = "_CAST_START",
						["percenthealth"] = "0",
						["event"] = "Chat Message",
						["message"] = "",
						["use_spellId"] = true,
						["use_destUnit"] = false,
						["use_track"] = true,
						["use_hostility"] = false,
						["use_messageType"] = false,
						["use_aggro"] = true,
						["useGroup_count"] = true,
						["combinePerUnit"] = false,
						["unit"] = "nameplate",
						["genericShowOn"] = "showOnCooldown",
						["subeventPrefix"] = "SPELL",
						["showClones"] = false,
						["use_genericShowOn"] = true,
						["use_unit"] = true,
						["use_npcId"] = true,
						["use_threatUnit"] = true,
						["type"] = "aura2",
						["use_cloneId"] = false,
						["debuffType"] = "HELPFUL",
						["use_sourceName"] = false,
						["useName"] = true,
						["unevent"] = "timed",
						["auraspellids"] = {
						},
						["use_status"] = false,
						["useExactSpellId"] = false,
						["threatUnit"] = "target",
						["sourceName"] = "Crypt Guard",
						["realSpellName"] = "Summon Corpse Scarabs",
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["names"] = {
						},
						["use_message"] = false,
						["use_percenthealth"] = true,
						["percenthealth_operator"] = "~=",
						["spellName"] = "Summon Corpse Scarabs",
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "target",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["displayText_format_p_format"] = "timed",
			["displayText_format_p_time_legacy_floor"] = false,
			["model_fileId"] = "122968",
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["preset"] = "alphaPulse",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["model_st_ty"] = 0,
			["alpha"] = 1,
			["version"] = 18,
			["width"] = 125,
			["discrete_rotation"] = 0,
			["frameStrata"] = 5,
			["model_st_tx"] = 0,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_text_format_n_format"] = "none",
					["text_text_format_s_format"] = "none",
					["text_text"] = "**%s**",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "CENTER",
					["text_shadowXOffset"] = 1,
					["text_anchorYOffset"] = 10,
					["text_fontSize"] = 14,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [2]
				{
					["text_text_format_n_format"] = "none",
					["text_text"] = "SPELLSTEAL",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "CENTER",
					["text_shadowXOffset"] = 1,
					["text_anchorYOffset"] = -10,
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [3]
			},
			["height"] = 125,
			["rotate"] = true,
			["config"] = {
			},
			["displayText_format_p_time_dynamic_threshold"] = 60,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["fontSize"] = 26,
			["source"] = "import",
			["blendMode"] = "BLEND",
			["justify"] = "LEFT",
			["borderInset"] = 11,
			["mirror"] = false,
			["borderEdge"] = "None",
			["cooldownTextDisabled"] = false,
			["borderSize"] = 16,
			["border"] = false,
			["icon"] = true,
			["model_st_rz"] = 0,
			["model_z"] = 0,
			["displayText_format_p_time_precision"] = 1,
			["wordWrap"] = "WordWrap",
			["selfPoint"] = "CENTER",
			["displayText_format_p_time_format"] = 0,
			["semver"] = "2.2.2",
			["zoom"] = 0,
			["id"] = "Jaraxxus - Nether Power Nameplate",
			["model_y"] = 0,
			["useCooldownModRate"] = true,
			["anchorFrameType"] = "NAMEPLATE",
			["internalVersion"] = 66,
			["displayIcon"] = 135731,
			["inverse"] = false,
			["scale"] = 1,
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["preferToUpdate"] = false,
		},
		["Tems ToGC - Casts"] = {
			["grow"] = "UP",
			["controlledChildren"] = {
				"Tems - Pull TImer", -- [1]
				"Beasts - Pre Pot", -- [2]
				"ToGC - Combat Timer", -- [3]
				"Beasts - Debuffs", -- [4]
				"Beasts - Slime Pool Texture", -- [5]
				"Beasts - Slime Pool Cast", -- [6]
				"Beasts - Spew Cast", -- [7]
				"Beasts - Spray Cast", -- [8]
				"Beasts - Staggered Daze", -- [9]
				"Beasts - Arctic Breath Cast", -- [10]
				"Beasts - Charge Cast", -- [11]
				"Jaraxxus - Buff", -- [12]
				"Jaraxxus - Fel Fireball", -- [13]
				"Jaraxxus - Incinerate Flesh Cast", -- [14]
				"Jaraxxus - Burning Inferno", -- [15]
				"Champions - Grip Target", -- [16]
				"Champions - Bladestorm Cast", -- [17]
				"Champions - Casts", -- [18]
				"Twins - Missing Buff", -- [19]
				"Twins - Light Vortex", -- [20]
				"Twins - Dark Vortex", -- [21]
				"Twins - Shield of Darkness", -- [22]
				"Twins - Shield of Lights", -- [23]
				"Anubarak - Burrow Soon", -- [24]
				"Anubarak - Pursue", -- [25]
				"Anubarak - Leeching Swarm", -- [26]
				"Anubarak - Shadow Strike Cast", -- [27]
				"Anubarak - Frost Spheres", -- [28]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["wagoID"] = "A5ytftEJV",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["groupIcon"] = "298643",
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["rowSpace"] = 1,
			["url"] = "https://wago.io/TemsToGC/18",
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
						["names"] = {
						},
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["event"] = "Health",
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["columnSpace"] = 1,
			["internalVersion"] = 66,
			["selfPoint"] = "BOTTOM",
			["align"] = "CENTER",
			["source"] = "import",
			["frameStrata"] = 1,
			["space"] = 3,
			["rotation"] = 0,
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
			["version"] = 18,
			["subRegions"] = {
			},
			["stagger"] = 0,
			["useLimit"] = false,
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
			},
			["yOffset"] = 180,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["radius"] = 200,
			["animate"] = false,
			["uid"] = "WHMiWf4N(BG",
			["scale"] = 1,
			["centerType"] = "LR",
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "dynamicgroup",
			["borderSize"] = 2,
			["limit"] = 5,
			["gridType"] = "RD",
			["fullCircle"] = true,
			["constantFactor"] = "RADIUS",
			["sort"] = "none",
			["borderOffset"] = 4,
			["semver"] = "2.2.2",
			["tocversion"] = 30402,
			["id"] = "Tems ToGC - Casts",
			["borderInset"] = 1,
			["gridWidth"] = 5,
			["anchorFrameType"] = "SCREEN",
			["arcLength"] = 360,
			["config"] = {
			},
			["xOffset"] = 0,
			["parent"] = "ToGC",
			["conditions"] = {
			},
			["information"] = {
			},
			["sortHybridTable"] = {
				["Beasts - Debuffs"] = false,
				["Anubarak - Pursue"] = false,
				["Twins - Dark Vortex"] = false,
				["Jaraxxus - Burning Inferno"] = false,
				["Beasts - Spray Cast"] = false,
				["Champions - Bladestorm Cast"] = false,
				["Champions - Casts"] = false,
				["Tems - Pull TImer"] = false,
				["Beasts - Pre Pot"] = false,
				["ToGC - Combat Timer"] = false,
				["Anubarak - Leeching Swarm"] = false,
				["Jaraxxus - Buff"] = false,
				["Jaraxxus - Fel Fireball"] = false,
				["Anubarak - Frost Spheres"] = false,
				["Twins - Shield of Lights"] = false,
				["Beasts - Arctic Breath Cast"] = false,
				["Twins - Missing Buff"] = false,
				["Beasts - Slime Pool Cast"] = false,
				["Beasts - Spew Cast"] = false,
				["Twins - Shield of Darkness"] = false,
				["Champions - Grip Target"] = false,
				["Beasts - Staggered Daze"] = false,
				["Twins - Light Vortex"] = false,
				["Beasts - Charge Cast"] = false,
				["Beasts - Slime Pool Texture"] = false,
				["Anubarak - Shadow Strike Cast"] = false,
				["Anubarak - Burrow Soon"] = false,
				["Jaraxxus - Incinerate Flesh Cast"] = false,
			},
		},
		["Beasts - Whirl Range"] = {
			["user_y"] = 0,
			["user_x"] = 0,
			["authorOptions"] = {
			},
			["displayText_format_p_time_dynamic_threshold"] = 60,
			["yOffset"] = -50,
			["foregroundColor"] = {
				0.40392160415649, -- [1]
				0.76470595598221, -- [2]
				0.44313728809357, -- [3]
				1, -- [4]
			},
			["displayText_format_p_time_format"] = 0,
			["sameTexture"] = true,
			["url"] = "https://wago.io/TemsToGC/18",
			["backgroundColor"] = {
				0.50196081399918, -- [1]
				0.50196081399918, -- [2]
				0.50196081399918, -- [3]
				0, -- [4]
			},
			["displayText_format_p_time_mod_rate"] = true,
			["selfPoint"] = "CENTER",
			["rotation"] = 0,
			["font"] = "KMT-GothamXN_Ultra",
			["crop_y"] = 0.41,
			["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
			["foregroundTexture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Ring_20px.tga",
			["shadowXOffset"] = 1,
			["useAdjustededMin"] = false,
			["regionType"] = "text",
			["blendMode"] = "BLEND",
			["slantMode"] = "INSIDE",
			["compress"] = false,
			["alpha"] = 1,
			["auraRotation"] = 0,
			["fixedWidth"] = 200,
			["backgroundOffset"] = 2,
			["outline"] = "OUTLINE",
			["wagoID"] = "A5ytftEJV",
			["color"] = {
				1, -- [1]
				0.37647062540054, -- [2]
				0.37647062540054, -- [3]
				1, -- [4]
			},
			["shadowYOffset"] = -1,
			["desaturateBackground"] = false,
			["customTextUpdate"] = "event",
			["automaticWidth"] = "Auto",
			["desaturateForeground"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["duration"] = "36",
						["range"] = "3",
						["names"] = {
						},
						["range_operator"] = "<=",
						["debuffType"] = "HELPFUL",
						["type"] = "unit",
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["event"] = "Range Check",
						["use_unit"] = true,
						["message"] = "Welcome, champions!",
						["message_operator"] = "find('%s')",
						["spellIds"] = {
						},
						["use_range"] = true,
						["use_message"] = true,
						["unit"] = "target",
						["use_messageType"] = true,
						["messageType"] = "CHAT_MSG_MONSTER_YELL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["npcId"] = "34797",
						["duration"] = "9",
						["message_operator"] = "find('%s')",
						["subeventPrefix"] = "SPELL",
						["use_attackable"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "unit",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Unit Characteristics",
						["use_npcId"] = true,
						["message"] = "Hailing from the deepest",
						["use_unit"] = true,
						["spellIds"] = {
						},
						["names"] = {
						},
						["use_message"] = true,
						["unit"] = "target",
						["use_messageType"] = true,
						["messageType"] = "CHAT_MSG_MONSTER_YELL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "all",
				["customTriggerLogic"] = "",
				["activeTriggerMode"] = -10,
			},
			["endAngle"] = 360,
			["displayText_format_p_time_legacy_floor"] = false,
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
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 140,
			["useAdjustededMax"] = false,
			["fontSize"] = 16,
			["source"] = "import",
			["parent"] = "Tems ToGC - Central Textures",
			["backgroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura3",
			["crop_x"] = 0.41,
			["mirror"] = false,
			["orientation"] = "ANTICLOCKWISE",
			["uid"] = "IgxAxyLA3Fj",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["startAngle"] = 0,
			["load"] = {
				["use_encounterid"] = true,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "629, 1088",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["width"] = 140,
			["displayText_format_p_format"] = "timed",
			["displayText_format_p_time_precision"] = 1,
			["config"] = {
			},
			["displayText"] = "Too Close",
			["justify"] = "LEFT",
			["semver"] = "2.2.2",
			["xOffset"] = 0,
			["id"] = "Beasts - Whirl Range",
			["anchorPoint"] = "CENTER",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["tocversion"] = 30402,
			["internalVersion"] = 66,
			["inverse"] = false,
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
			["preferToUpdate"] = false,
		},
		["Haste Trinket Indicator"] = {
			["iconSource"] = 0,
			["authorOptions"] = {
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
						["itemName"] = 46088,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["type"] = "item",
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["use_itemName"] = true,
						["event"] = "Cooldown Progress (Item)",
						["use_exact_spellName"] = true,
						["realSpellName"] = 7744,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_remaining"] = false,
						["subeventPrefix"] = "SPELL",
						["spellName"] = 7744,
						["use_track"] = true,
						["use_unit"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 66,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_size"] = 10,
					["type"] = "subborder",
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Gladdy Tooltip round",
					["border_offset"] = 1,
				}, -- [2]
				{
					["api"] = false,
					["model_x"] = 0,
					["model_st_us"] = 40,
					["model_st_rz"] = 0,
					["model_st_ry"] = 0,
					["model_fileId"] = "235338",
					["model_path"] = "spells/arcanepower_state_chest.m2",
					["model_st_ty"] = 0,
					["model_y"] = 0,
					["model_st_rx"] = 270,
					["rotation"] = 0,
					["bar_model_clip"] = true,
					["model_st_tx"] = 0,
					["model_alpha"] = 1,
					["model_z"] = 0,
					["model_visible"] = true,
					["model_st_tz"] = 0,
					["type"] = "submodel",
				}, -- [3]
			},
			["height"] = 50,
			["load"] = {
				["use_never"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["race"] = {
					["single"] = "Scourge",
					["multi"] = {
						["Scourge"] = true,
					},
				},
				["use_itemequiped"] = true,
				["itemequiped"] = 46088,
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["regionType"] = "icon",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = false,
							["property"] = "sub.3.model_visible",
						}, -- [2]
					},
				}, -- [1]
			},
			["information"] = {
				["forceEvents"] = true,
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["xOffset"] = -621.2334365844727,
			["desc"] = "Displays |cffa335ee|Hitem:46088::::::::80:::::::::|h[Platinum Disks of Swiftness]|h|r cooldown icon.",
			["cooldownTextDisabled"] = false,
			["zoom"] = 0,
			["uid"] = "PQtJeDYa(nN",
			["alpha"] = 1,
			["id"] = "Haste Trinket Indicator",
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["width"] = 50,
			["useCooldownModRate"] = true,
			["config"] = {
			},
			["inverse"] = true,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["displayIcon"] = "134375",
			["cooldown"] = true,
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
		["Twins - Light Vortex Texture"] = {
			["user_y"] = 0,
			["user_x"] = 0,
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["foregroundColor"] = {
				0.25098040699959, -- [1]
				0.61176472902298, -- [2]
				0.4627451300621, -- [3]
				1, -- [4]
			},
			["desaturateBackground"] = false,
			["startAngle"] = 0,
			["sameTexture"] = true,
			["url"] = "https://wago.io/TemsToGC/18",
			["actions"] = {
				["start"] = {
					["message_format_unitName_realm_name"] = "never",
					["message_type"] = "SAY",
					["message_format_unitName_abbreviate_max"] = 8,
					["message"] = "",
					["do_sound"] = false,
					["message_format_unitName_abbreviate"] = false,
					["message_format_unitName_format"] = "none",
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Glass.mp3",
					["do_message"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "combatlog",
						["spellId"] = "66046",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "11",
						["event"] = "Combat Log",
						["use_unit"] = true,
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["unit"] = "nameplate",
						["use_exact_spellId"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"65686", -- [1]
						},
						["debuffType"] = "HARMFUL",
						["useName"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(trigger)\n    return trigger[1]\nend",
				["activeTriggerMode"] = -10,
			},
			["endAngle"] = 360,
			["internalVersion"] = 66,
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
			["desaturateForeground"] = false,
			["authorOptions"] = {
			},
			["crop_x"] = 0.41,
			["rotation"] = 0,
			["font"] = "Friz Quadrata TT",
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "Safe",
					["text_text_format_p_time_mod_rate"] = true,
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["anchorYOffset"] = 0,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["type"] = "subtext",
					["text_text_format_p_time_precision"] = 1,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_shadowYOffset"] = -1,
					["text_visible"] = true,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_time_format"] = 0,
					["text_text_format_n_format"] = "none",
					["text_fontSize"] = 14,
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
				}, -- [2]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "GO LIGHT",
					["text_text_format_p_time_mod_rate"] = true,
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["anchorYOffset"] = 0,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["type"] = "subtext",
					["text_text_format_p_time_precision"] = 1,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_shadowYOffset"] = -1,
					["text_visible"] = false,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_time_format"] = 0,
					["text_text_format_n_format"] = "none",
					["text_fontSize"] = 14,
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
				}, -- [3]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%p",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_n_format"] = "none",
					["anchorXOffset"] = 0,
					["text_text_format_p_time_precision"] = 1,
					["type"] = "subtext",
					["anchorYOffset"] = 0,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_anchorYOffset"] = -15,
					["text_shadowYOffset"] = -1,
					["text_fontType"] = "None",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_time_format"] = 0,
					["text_text_format_p_time_mod_rate"] = true,
					["text_fontSize"] = 14,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_text_format_p_format"] = "timed",
				}, -- [4]
			},
			["height"] = 140,
			["parent"] = "Tems ToGC - Central Textures",
			["load"] = {
				["use_encounterid"] = true,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "641, 1089",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["wagoID"] = "A5ytftEJV",
			["useAdjustededMax"] = false,
			["fontSize"] = 12,
			["source"] = "import",
			["foregroundTexture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Ring_20px.tga",
			["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
			["config"] = {
			},
			["mirror"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "progresstexture",
			["backgroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura3",
			["blendMode"] = "BLEND",
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["slantMode"] = "INSIDE",
			["selfPoint"] = "CENTER",
			["tocversion"] = 30402,
			["anchorPoint"] = "CENTER",
			["semver"] = "2.2.2",
			["compress"] = false,
			["id"] = "Twins - Light Vortex Texture",
			["backgroundColor"] = {
				0.50196081399918, -- [1]
				0.50196081399918, -- [2]
				0.50196081399918, -- [3]
				0, -- [4]
			},
			["frameStrata"] = 1,
			["width"] = 140,
			["auraRotation"] = 0,
			["uid"] = "wSvpUt36j6p",
			["inverse"] = false,
			["crop_y"] = 0.41,
			["orientation"] = "ANTICLOCKWISE",
			["conditions"] = {
				{
					["check"] = {
						["op"] = "==",
						["checks"] = {
							{
								["trigger"] = -2,
								["variable"] = "AND",
								["checks"] = {
									{
										["trigger"] = 1,
										["variable"] = "show",
										["value"] = 1,
									}, -- [1]
									{
										["trigger"] = 2,
										["op"] = "==",
										["value"] = "66001",
										["variable"] = "spellId",
									}, -- [2]
								},
							}, -- [1]
							{
								["trigger"] = -2,
								["op"] = "==",
								["variable"] = "AND",
								["checks"] = {
									{
										["value"] = 1,
										["variable"] = "show",
									}, -- [1]
									{
										["trigger"] = 2,
										["op"] = "==",
										["value"] = "65686",
										["variable"] = "spellId",
									}, -- [2]
								},
							}, -- [2]
						},
						["value"] = 0,
						["variable"] = "show",
						["trigger"] = 2,
					},
					["changes"] = {
						{
							["property"] = "sub.2.text_visible",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "sub.3.text_visible",
						}, -- [2]
						{
							["value"] = {
								0.55686277151108, -- [1]
								0.10196079313755, -- [2]
								0.035294119268656, -- [3]
								1, -- [4]
							},
							["property"] = "foregroundColor",
						}, -- [3]
						{
							["value"] = {
								["sound_type"] = "Play",
								["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Glass.mp3",
								["sound_channel"] = "Master",
							},
							["property"] = "sound",
						}, -- [4]
					},
				}, -- [1]
			},
			["information"] = {
			},
			["backgroundOffset"] = 2,
		},
		["Tems ToGC - Timers"] = {
			["grow"] = "DOWN",
			["controlledChildren"] = {
				"Beasts - Staggering Stomp", -- [1]
				"Beasts - Impale", -- [2]
				"Beasts - Rising Anger Timer", -- [3]
				"Beasts - Submerge", -- [4]
				"Beasts - Spew", -- [5]
				"Beasts - Spray", -- [6]
				"Beasts - Massive Crash", -- [7]
				"Beasts - Enrage", -- [8]
				"Beasts - Next Boss", -- [9]
				"Jaraxxus - Nether Power", -- [10]
				"Jaraxxus - Incinerate Flesh", -- [11]
				"Jaraxxus - Nether Portal", -- [12]
				"Jaraxxus - Legion Flame", -- [13]
				"Jaraxxus - Enrage", -- [14]
				"Champions - Bladestorm", -- [15]
				"Champions - BL/Hero", -- [16]
				"Champions - Death Grip", -- [17]
				"Champions - Shadowstep", -- [18]
				"Twins - Touch", -- [19]
				"Twins - Enrage", -- [20]
				"Anubarak - Burrow", -- [21]
				"Anubarak - Adds", -- [22]
				"Anubarak - Shadow Strike", -- [23]
				"Anubarak - Enrage", -- [24]
				"Tems - Break Timer", -- [25]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["wagoID"] = "A5ytftEJV",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["groupIcon"] = "298674",
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["rowSpace"] = 1,
			["url"] = "https://wago.io/TemsToGC/18",
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
						["names"] = {
						},
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["event"] = "Health",
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["columnSpace"] = 1,
			["internalVersion"] = 66,
			["selfPoint"] = "TOP",
			["align"] = "CENTER",
			["source"] = "import",
			["frameStrata"] = 1,
			["space"] = 2,
			["rotation"] = 0,
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
			["version"] = 18,
			["subRegions"] = {
			},
			["stagger"] = 0,
			["useLimit"] = false,
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
			},
			["yOffset"] = 170,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["radius"] = 200,
			["animate"] = false,
			["uid"] = "DLkav4y7pxL",
			["scale"] = 1,
			["centerType"] = "LR",
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "dynamicgroup",
			["borderSize"] = 2,
			["limit"] = 5,
			["gridType"] = "RD",
			["fullCircle"] = true,
			["constantFactor"] = "RADIUS",
			["sort"] = "none",
			["borderOffset"] = 4,
			["semver"] = "2.2.2",
			["tocversion"] = 30402,
			["id"] = "Tems ToGC - Timers",
			["borderInset"] = 1,
			["gridWidth"] = 5,
			["anchorFrameType"] = "SCREEN",
			["arcLength"] = 360,
			["config"] = {
			},
			["xOffset"] = 295,
			["parent"] = "ToGC",
			["conditions"] = {
			},
			["information"] = {
			},
			["sortHybridTable"] = {
				["Champions - Bladestorm"] = false,
				["Anubarak - Shadow Strike"] = false,
				["Champions - Shadowstep"] = false,
				["Beasts - Spew"] = false,
				["Beasts - Rising Anger Timer"] = false,
				["Beasts - Next Boss"] = false,
				["Jaraxxus - Incinerate Flesh"] = false,
				["Twins - Touch"] = false,
				["Anubarak - Burrow"] = false,
				["Beasts - Impale"] = false,
				["Jaraxxus - Legion Flame"] = false,
				["Beasts - Massive Crash"] = false,
				["Jaraxxus - Nether Power"] = false,
				["Anubarak - Enrage"] = false,
				["Jaraxxus - Nether Portal"] = false,
				["Beasts - Staggering Stomp"] = false,
				["Champions - Death Grip"] = false,
				["Beasts - Spray"] = false,
				["Beasts - Submerge"] = false,
				["Beasts - Enrage"] = false,
				["Champions - BL/Hero"] = false,
				["Jaraxxus - Enrage"] = false,
				["Anubarak - Adds"] = false,
				["Tems - Break Timer"] = false,
				["Twins - Enrage"] = false,
			},
		},
		["Champions - Bladestorm"] = {
			["sparkWidth"] = 10,
			["iconSource"] = 0,
			["wagoID"] = "A5ytftEJV",
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["url"] = "https://wago.io/TemsToGC/18",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "combatlog",
						["spellId"] = "65947",
						["subeventSuffix"] = "_CAST_SUCCESS",
						["duration"] = "90",
						["event"] = "Combat Log",
						["use_sourceFlags2"] = true,
						["names"] = {
						},
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["sourceFlags2"] = "Hostile",
						["use_sourceFlags"] = false,
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_type"] = "event",
						["duration"] = "8",
						["event"] = "Health",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["spellIds"] = {
						},
						["custom"] = "function(event)\n    return true\nend",
						["names"] = {
						},
						["events"] = "ENCOUNTER_START",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "combatlog",
						["spellId"] = "65947",
						["subeventSuffix"] = "_CAST_SUCCESS",
						["duration"] = "120",
						["event"] = "Combat Log",
						["use_sourceFlags2"] = true,
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["sourceFlags2"] = "Hostile",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [3]
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_type"] = "event",
						["duration"] = "99",
						["event"] = "Health",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["spellIds"] = {
						},
						["custom"] = "function(event)\n    return true\nend",
						["names"] = {
						},
						["events"] = "ENCOUNTER_START",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [4]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 66,
			["zoom"] = 0.3,
			["selfPoint"] = "CENTER",
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
			["barColor"] = {
				0.80392163991928, -- [1]
				0.36078432202339, -- [2]
				0.17647059261799, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["barColor2"] = {
				1, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 0,
							}, -- [1]
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 0,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = {
								0.80392163991928, -- [1]
								0.36078432202339, -- [2]
								0.17647059261799, -- [3]
								1, -- [4]
							},
							["property"] = "backgroundColor",
						}, -- [1]
						{
							["property"] = "sub.4.text_visible",
						}, -- [2]
						{
							["property"] = "sub.6.text_visible",
						}, -- [3]
						{
							["value"] = true,
							["property"] = "sub.5.text_visible",
						}, -- [4]
					},
				}, -- [1]
			},
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["type"] = "subforeground",
				}, -- [2]
				{
					["border_size"] = 1,
					["border_anchor"] = "bar",
					["type"] = "subborder",
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_offset"] = 0,
				}, -- [3]
				{
					["text_text_format_n_format"] = "none",
					["text_text"] = "Next Bladestorm",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_LEFT",
					["text_shadowXOffset"] = 1,
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [4]
				{
					["text_text_format_n_format"] = "none",
					["text_text"] = "Bladestorm Soon",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_LEFT",
					["text_shadowXOffset"] = 1,
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_visible"] = false,
				}, -- [5]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%p",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_time_format"] = 0,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["type"] = "subtext",
					["text_anchorXOffset"] = -2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_text_format_p_time_precision"] = 1,
					["text_shadowYOffset"] = -1,
					["anchorYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_RIGHT",
					["text_visible"] = true,
					["text_text_format_p_format"] = "timed",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_mod_rate"] = true,
				}, -- [6]
			},
			["height"] = 20,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["load"] = {
				["use_encounterid"] = true,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "637, 1086",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["parent"] = "Tems ToGC - Timers",
			["source"] = "import",
			["gradientOrientation"] = "HORIZONTAL",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["enableGradient"] = false,
			["anchorFrameType"] = "SCREEN",
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["alpha"] = 1,
			["config"] = {
			},
			["icon_side"] = "LEFT",
			["id"] = "Champions - Bladestorm",
			["sparkHeight"] = 30,
			["texture"] = "Melli",
			["spark"] = false,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["semver"] = "2.2.2",
			["tocversion"] = 30402,
			["sparkHidden"] = "NEVER",
			["icon"] = true,
			["frameStrata"] = 1,
			["width"] = 200,
			["sparkOffsetX"] = 0,
			["uid"] = "hP8novWrYFa",
			["inverse"] = false,
			["sparkOffsetY"] = 0,
			["orientation"] = "HORIZONTAL",
			["displayIcon"] = 236303,
			["information"] = {
			},
			["authorOptions"] = {
			},
		},
		["Champions - Totems"] = {
			["modelIsUnit"] = false,
			["iconSource"] = 0,
			["api"] = false,
			["xOffset"] = 0,
			["displayText"] = "SPARK SPAWNED\n",
			["yOffset"] = -30,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["url"] = "https://wago.io/TemsToGC/18",
			["actions"] = {
				["start"] = {
					["message"] = "",
					["message_format_unitName_format"] = "none",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = false,
					["message_format_c_format"] = "none",
					["do_message"] = false,
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\sonar.ogg",
					["message_type"] = "SAY",
				},
				["finish"] = {
					["do_custom"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_message"] = false,
					["do_sound"] = false,
				},
				["init"] = {
				},
			},
			["displayText_format_p_time_mod_rate"] = true,
			["keepAspectRatio"] = false,
			["model_path"] = "spells/arcanepower_state_chest.m2",
			["desaturate"] = false,
			["rotation"] = 0,
			["font"] = "Accidental Presidency",
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
						["HUNTER"] = true,
						["WARLOCK"] = true,
						["SHAMAN"] = true,
						["MAGE"] = true,
						["DRUID"] = true,
						["PALADIN"] = true,
						["PRIEST"] = true,
					},
				},
				["use_encounterid"] = true,
				["use_zone"] = false,
				["zoneIds"] = "",
				["encounterid"] = "637, 1086",
				["use_zoneIds"] = false,
				["zone"] = "",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
			["sequence"] = 1,
			["shadowXOffset"] = 1,
			["regionType"] = "texture",
			["model_st_us"] = 40,
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Circle_AlphaGradient_In.tga",
			["model_st_ry"] = 0,
			["auto"] = false,
			["tocversion"] = 30402,
			["model_st_rx"] = 270,
			["uid"] = "HpO(rC6gWWG",
			["fixedWidth"] = 200,
			["model_st_tz"] = 0,
			["parent"] = "Tems ToGC - Nameplates [DO NOT MOVE]",
			["outline"] = "OUTLINE",
			["cooldown"] = true,
			["borderBackdrop"] = "Blizzard Tooltip",
			["wagoID"] = "A5ytftEJV",
			["color"] = {
				1, -- [1]
				0.58431375026703, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["authorOptions"] = {
			},
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["shadowYOffset"] = -1,
			["borderOffset"] = 5,
			["model_x"] = 0,
			["cooldownSwipe"] = true,
			["cooldownEdge"] = true,
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["advance"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "6112",
						["spellId"] = "56272",
						["auranames"] = {
							"6112", -- [1]
							"63785", -- [2]
							"9633", -- [3]
						},
						["duration"] = "1.5",
						["message_operator"] = "find('%s')",
						["destUnit"] = "player",
						["group_count"] = "0",
						["use_attackable"] = true,
						["group_countOperator"] = ">",
						["use_namerealm"] = false,
						["namerealm"] = "Crypt Guard",
						["subeventSuffix"] = "_CAST_START",
						["percenthealth"] = "0",
						["event"] = "Unit Characteristics",
						["message"] = "",
						["use_spellId"] = true,
						["use_destUnit"] = false,
						["use_track"] = true,
						["useExactSpellId"] = false,
						["use_hostility"] = false,
						["useGroup_count"] = false,
						["percenthealth_operator"] = "~=",
						["subeventPrefix"] = "SPELL",
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["showClones"] = true,
						["use_genericShowOn"] = true,
						["unit"] = "nameplate",
						["use_npcId"] = true,
						["use_threatUnit"] = true,
						["type"] = "unit",
						["use_cloneId"] = false,
						["debuffType"] = "HELPFUL",
						["use_sourceName"] = false,
						["sourceName"] = "Crypt Guard",
						["unevent"] = "timed",
						["auraspellids"] = {
						},
						["useName"] = true,
						["names"] = {
						},
						["threatUnit"] = "target",
						["use_status"] = false,
						["realSpellName"] = "Summon Corpse Scarabs",
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["spellName"] = "Summon Corpse Scarabs",
						["use_message"] = false,
						["use_percenthealth"] = true,
						["use_messageType"] = false,
						["use_aggro"] = true,
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "target",
					},
				}, -- [1]
				{
					["trigger"] = {
						["npcId"] = "34686",
						["spellId"] = "56272",
						["auranames"] = {
							"6112", -- [1]
							"63785", -- [2]
							"9633", -- [3]
						},
						["duration"] = "1.5",
						["message_operator"] = "find('%s')",
						["destUnit"] = "player",
						["group_count"] = "0",
						["use_attackable"] = true,
						["group_countOperator"] = ">",
						["use_namerealm"] = false,
						["namerealm"] = "Crypt Guard",
						["subeventSuffix"] = "_CAST_START",
						["percenthealth"] = "0",
						["event"] = "Unit Characteristics",
						["message"] = "",
						["use_spellId"] = true,
						["use_destUnit"] = false,
						["use_track"] = true,
						["useExactSpellId"] = false,
						["use_hostility"] = false,
						["useGroup_count"] = false,
						["percenthealth_operator"] = "~=",
						["subeventPrefix"] = "SPELL",
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["showClones"] = true,
						["use_genericShowOn"] = true,
						["unit"] = "nameplate",
						["use_npcId"] = true,
						["use_threatUnit"] = true,
						["type"] = "unit",
						["use_cloneId"] = false,
						["debuffType"] = "HELPFUL",
						["use_sourceName"] = false,
						["sourceName"] = "Crypt Guard",
						["unevent"] = "timed",
						["auraspellids"] = {
						},
						["useName"] = true,
						["names"] = {
						},
						["threatUnit"] = "target",
						["use_status"] = false,
						["realSpellName"] = "Summon Corpse Scarabs",
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["spellName"] = "Summon Corpse Scarabs",
						["use_message"] = false,
						["use_percenthealth"] = true,
						["use_messageType"] = false,
						["use_aggro"] = true,
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "target",
					},
				}, -- [2]
				{
					["trigger"] = {
						["npcId"] = "5913",
						["spellId"] = "56272",
						["auranames"] = {
							"6112", -- [1]
							"63785", -- [2]
							"9633", -- [3]
						},
						["duration"] = "1.5",
						["message_operator"] = "find('%s')",
						["destUnit"] = "player",
						["group_count"] = "0",
						["use_attackable"] = true,
						["group_countOperator"] = ">",
						["use_namerealm"] = false,
						["namerealm"] = "Crypt Guard",
						["subeventSuffix"] = "_CAST_START",
						["percenthealth"] = "0",
						["event"] = "Unit Characteristics",
						["message"] = "",
						["use_spellId"] = true,
						["use_destUnit"] = false,
						["use_track"] = true,
						["useExactSpellId"] = false,
						["use_hostility"] = false,
						["useGroup_count"] = false,
						["percenthealth_operator"] = "~=",
						["subeventPrefix"] = "SPELL",
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["showClones"] = true,
						["use_genericShowOn"] = true,
						["unit"] = "nameplate",
						["use_npcId"] = true,
						["use_threatUnit"] = true,
						["type"] = "unit",
						["use_cloneId"] = false,
						["debuffType"] = "HELPFUL",
						["use_sourceName"] = false,
						["sourceName"] = "Crypt Guard",
						["unevent"] = "timed",
						["auraspellids"] = {
						},
						["useName"] = true,
						["names"] = {
						},
						["threatUnit"] = "target",
						["use_status"] = false,
						["realSpellName"] = "Summon Corpse Scarabs",
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["spellName"] = "Summon Corpse Scarabs",
						["use_message"] = false,
						["use_percenthealth"] = true,
						["use_messageType"] = false,
						["use_aggro"] = true,
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "target",
					},
				}, -- [3]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["displayText_format_p_format"] = "timed",
			["displayText_format_p_time_legacy_floor"] = false,
			["model_fileId"] = "122968",
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["preset"] = "alphaPulse",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["model_st_ty"] = 0,
			["alpha"] = 1,
			["version"] = 18,
			["width"] = 60,
			["discrete_rotation"] = 0,
			["frameStrata"] = 5,
			["model_st_tx"] = 0,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_text_format_n_format"] = "none",
					["text_text"] = "TOTEM",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "CENTER",
					["text_shadowXOffset"] = 1,
					["text_anchorYOffset"] = 0,
					["text_fontSize"] = 11,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [2]
			},
			["height"] = 60,
			["rotate"] = true,
			["config"] = {
			},
			["displayText_format_p_time_dynamic_threshold"] = 60,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["fontSize"] = 26,
			["source"] = "import",
			["blendMode"] = "BLEND",
			["justify"] = "LEFT",
			["borderInset"] = 11,
			["mirror"] = false,
			["borderEdge"] = "None",
			["cooldownTextDisabled"] = false,
			["borderSize"] = 16,
			["border"] = false,
			["icon"] = true,
			["model_st_rz"] = 0,
			["model_z"] = 0,
			["displayText_format_p_time_precision"] = 1,
			["wordWrap"] = "WordWrap",
			["selfPoint"] = "CENTER",
			["displayText_format_p_time_format"] = 0,
			["semver"] = "2.2.2",
			["zoom"] = 0,
			["id"] = "Champions - Totems",
			["model_y"] = 0,
			["useCooldownModRate"] = true,
			["anchorFrameType"] = "NAMEPLATE",
			["internalVersion"] = 66,
			["displayIcon"] = 135731,
			["inverse"] = false,
			["scale"] = 1,
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["preferToUpdate"] = false,
		},
		["Sleeps"] = {
			["iconSource"] = 0,
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"Sleep", -- [1]
							"Deep Slumber", -- [2]
							"Deep Sleep", -- [3]
							"15822", -- [4]
							"8040", -- [5]
							"Hibernate", -- [6]
						},
						["event"] = "Health",
						["names"] = {
						},
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["useName"] = true,
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["unevent"] = "auto",
						["subeventSuffix"] = "_CAST_START",
						["use_genericShowOn"] = true,
						["duration"] = "1",
						["event"] = "Action Usable",
						["unit"] = "player",
						["realSpellName"] = 7744,
						["use_spellName"] = true,
						["genericShowOn"] = "showOnReady",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["use_exact_spellName"] = true,
						["use_track"] = true,
						["spellName"] = 7744,
					},
					["untrigger"] = {
						["genericShowOn"] = "showOnReady",
					},
				}, -- [2]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 66,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 2,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["glowFrequency"] = 0.25,
					["glow"] = true,
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						0, -- [2]
						0.00784313725490196, -- [3]
						1, -- [4]
					},
					["glowDuration"] = 1,
					["type"] = "subglow",
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
			},
			["height"] = 65,
			["load"] = {
				["use_race"] = true,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["race"] = {
					["single"] = "Scourge",
					["multi"] = {
						["Scourge"] = true,
					},
				},
				["faction"] = {
				},
				["zoneIds"] = "",
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["width"] = 65,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["parent"] = "WOTF BORDER",
			["color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0, -- [4]
			},
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = false,
			},
			["regionType"] = "icon",
			["conditions"] = {
			},
			["selfPoint"] = "CENTER",
			["cooldownEdge"] = false,
			["uid"] = "VEJL8e54fE0",
			["alpha"] = 1,
			["useCooldownModRate"] = true,
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 11304,
			["id"] = "Sleeps",
			["semver"] = "1.0.1",
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["cooldownTextDisabled"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["useTooltip"] = false,
			["displayIcon"] = 136187,
			["cooldown"] = false,
			["authorOptions"] = {
			},
		},
		["Tems - Twins Special Abilities [Silas WA]"] = {
			["grow"] = "DOWN",
			["controlledChildren"] = {
				"Dark Vortex", -- [1]
				"Light Shield", -- [2]
				"Dark Shield", -- [3]
				"Light Vortex", -- [4]
				"Special Abilities Countdown", -- [5]
				"Special Abilities Counter", -- [6]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["wagoID"] = "A5ytftEJV",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["groupIcon"] = "298674",
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["rowSpace"] = 1,
			["url"] = "https://wago.io/TemsToGC/18",
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
						["names"] = {
						},
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["event"] = "Health",
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["columnSpace"] = 1,
			["internalVersion"] = 66,
			["selfPoint"] = "TOP",
			["align"] = "CENTER",
			["source"] = "import",
			["frameStrata"] = 1,
			["space"] = 1,
			["rotation"] = 0,
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
			["version"] = 18,
			["subRegions"] = {
			},
			["stagger"] = 0,
			["useLimit"] = false,
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
			},
			["yOffset"] = 257.38627268473,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["radius"] = 200,
			["animate"] = false,
			["uid"] = "foyZLSXmh3S",
			["scale"] = 1,
			["centerType"] = "LR",
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "dynamicgroup",
			["borderSize"] = 2,
			["limit"] = 5,
			["gridType"] = "RD",
			["fullCircle"] = true,
			["constantFactor"] = "RADIUS",
			["sort"] = "none",
			["borderOffset"] = 4,
			["semver"] = "2.2.2",
			["tocversion"] = 30402,
			["id"] = "Tems - Twins Special Abilities [Silas WA]",
			["borderInset"] = 1,
			["gridWidth"] = 5,
			["anchorFrameType"] = "SCREEN",
			["arcLength"] = 360,
			["config"] = {
			},
			["xOffset"] = 295.2343890667,
			["parent"] = "ToGC",
			["conditions"] = {
			},
			["information"] = {
			},
			["sortHybridTable"] = {
				["Light Vortex"] = false,
				["Dark Vortex"] = false,
				["Special Abilities Counter"] = false,
				["Special Abilities Countdown"] = false,
				["Light Shield"] = false,
				["Dark Shield"] = false,
			},
		},
		["Renew Indicator (P1)"] = {
			["iconSource"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["yOffset"] = 22,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = false,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["auranames"] = {
							"48068", -- [1]
						},
						["spellIds"] = {
						},
						["specificUnit"] = "party1",
						["unit"] = "member",
						["names"] = {
						},
						["useName"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 66,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 16,
			["load"] = {
				["use_class"] = true,
				["talent2"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
						[103] = true,
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["use_spellknown"] = false,
				["use_talent"] = false,
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["anchorFrameFrame"] = "PartyMemberFrame1",
			["regionType"] = "icon",
			["xOffset"] = -58,
			["desc"] = "Shows up whenever P1 has a renew active (cuz dogshit blizzard UI doesnt display buffs on party frames)...",
			["information"] = {
			},
			["conditions"] = {
			},
			["anchorFrameParent"] = true,
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
			["uid"] = "8yJIkqN(oyW",
			["cooldownTextDisabled"] = true,
			["zoom"] = 0,
			["anchorFrameType"] = "SELECTFRAME",
			["id"] = "Renew Indicator (P1)",
			["alpha"] = 1,
			["useCooldownModRate"] = false,
			["width"] = 16,
			["frameStrata"] = 1,
			["config"] = {
			},
			["inverse"] = false,
			["useTooltip"] = false,
			["displayIcon"] = "135953",
			["cooldown"] = false,
			["authorOptions"] = {
			},
		},
		["Anubarak - Acid Mandibles"] = {
			["outline"] = "OUTLINE",
			["iconSource"] = 0,
			["wagoID"] = "A5ytftEJV",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["shadowYOffset"] = -1,
			["anchorPoint"] = "CENTER",
			["frameStrata"] = 1,
			["cooldownSwipe"] = true,
			["displayText_format_p_time_format"] = 0,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/TemsToGC/18",
			["actions"] = {
				["start"] = {
					["glow_color"] = {
						0.6745098233223, -- [1]
						0.678431391716, -- [2]
						0.41176474094391, -- [3]
						1, -- [4]
					},
					["glow_thickness"] = 3,
					["glow_action"] = "show",
					["glow_frequency"] = 0.2,
					["glow_lines"] = 8,
					["glow_length"] = 15,
					["do_glow"] = true,
					["use_glow_color"] = true,
					["glow_type"] = "Pixel",
					["glow_frame_type"] = "UNITFRAME",
				},
				["finish"] = {
					["hide_all_glows"] = true,
				},
				["init"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "16063",
						["spellId"] = "29685",
						["auranames"] = {
							"65775", -- [1]
						},
						["use_genericShowOn"] = true,
						["destUnit"] = "player",
						["group_count"] = "0",
						["group_countOperator"] = ">",
						["showClones"] = true,
						["use_health"] = true,
						["use_eventtype"] = true,
						["event"] = "Combat Log",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["use_name"] = false,
						["use_spellId"] = true,
						["name"] = "Obsidian Eradicator",
						["check"] = "update",
						["use_destUnit"] = false,
						["use_track"] = true,
						["spellName"] = 871,
						["sourceNpcId"] = "15932",
						["useStacks"] = false,
						["useGroup_count"] = false,
						["use_sourceNpcId"] = true,
						["duration"] = "20",
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["stacks"] = "4",
						["powertype"] = 0,
						["spellIds"] = {
						},
						["health_operator"] = ">",
						["realSpellName"] = "Shield Wall",
						["useName"] = true,
						["use_powertype"] = true,
						["debuffType"] = "HARMFUL",
						["type"] = "aura2",
						["use_sourceName"] = false,
						["unevent"] = "timed",
						["auraspellids"] = {
						},
						["names"] = {
						},
						["stacksOperator"] = ">",
						["subeventPrefix"] = "SPELL",
						["unit"] = "raid",
						["use_npcId"] = true,
						["use_spellName"] = false,
						["health"] = "0",
						["use_incombat"] = true,
						["useExactSpellId"] = false,
						["custom_type"] = "status",
						["useAffected"] = false,
						["subeventSuffix"] = "_CAST_SUCCESS",
					},
					["untrigger"] = {
						["unit"] = "target",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
					},
				}, -- [1]
				{
					["trigger"] = {
						["npcId"] = "16063",
						["spellId"] = "29685",
						["auranames"] = {
							"66013", -- [1]
						},
						["use_genericShowOn"] = true,
						["destUnit"] = "player",
						["group_count"] = "0",
						["group_countOperator"] = ">",
						["showClones"] = true,
						["use_health"] = true,
						["use_eventtype"] = true,
						["event"] = "Combat Log",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["use_name"] = false,
						["use_spellId"] = true,
						["name"] = "Obsidian Eradicator",
						["check"] = "update",
						["use_destUnit"] = false,
						["use_track"] = true,
						["spellName"] = 871,
						["sourceNpcId"] = "15932",
						["useStacks"] = false,
						["useGroup_count"] = false,
						["use_sourceNpcId"] = true,
						["duration"] = "20",
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["stacks"] = "4",
						["powertype"] = 0,
						["spellIds"] = {
						},
						["health_operator"] = ">",
						["realSpellName"] = "Shield Wall",
						["useName"] = true,
						["use_powertype"] = true,
						["debuffType"] = "HARMFUL",
						["type"] = "aura2",
						["use_sourceName"] = false,
						["unevent"] = "timed",
						["auraspellids"] = {
						},
						["names"] = {
						},
						["stacksOperator"] = ">",
						["subeventPrefix"] = "SPELL",
						["unit"] = "raid",
						["use_npcId"] = true,
						["use_spellName"] = false,
						["health"] = "0",
						["use_incombat"] = true,
						["useExactSpellId"] = false,
						["custom_type"] = "status",
						["useAffected"] = false,
						["subeventSuffix"] = "_CAST_SUCCESS",
					},
					["untrigger"] = {
						["unit"] = "target",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
					},
				}, -- [2]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(trigger)\n    return trigger[1] and not trigger[2]\nend",
				["activeTriggerMode"] = -10,
			},
			["displayText_format_p_time_mod_rate"] = true,
			["internalVersion"] = 66,
			["keepAspectRatio"] = false,
			["wordWrap"] = "WordWrap",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayText"] = "",
			["yOffset"] = 0,
			["desaturate"] = false,
			["parent"] = "Tems ToGC - Glow [DO NOT MOVE]",
			["font"] = "Accidental Presidency",
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 64,
			["cooldownEdge"] = true,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
						["PRIEST"] = true,
					},
				},
				["use_encounterid"] = true,
				["use_zone"] = false,
				["zoneIds"] = "150",
				["encounterid"] = "645, 1085",
				["use_zoneIds"] = false,
				["zone"] = "",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["icon"] = true,
			["displayText_format_p_format"] = "timed",
			["fontSize"] = 18,
			["source"] = "import",
			["displayText_format_p_time_legacy_floor"] = false,
			["shadowXOffset"] = 1,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["preset"] = "spiralandpulse",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["displayText_format_p_time_dynamic_threshold"] = 60,
			["auto"] = false,
			["regionType"] = "text",
			["automaticWidth"] = "Auto",
			["selfPoint"] = "CENTER",
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["fixedWidth"] = 200,
			["xOffset"] = 0,
			["displayText_format_p_time_precision"] = 1,
			["zoom"] = 0,
			["config"] = {
			},
			["cooldownTextDisabled"] = false,
			["semver"] = "2.2.2",
			["tocversion"] = 30402,
			["id"] = "Anubarak - Acid Mandibles",
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["width"] = 64,
			["justify"] = "LEFT",
			["uid"] = "cPXU7zPacAY",
			["inverse"] = false,
			["useCooldownModRate"] = true,
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["displayIcon"] = 136160,
		},
		["Twins - Surge of Speed Buff"] = {
			["iconSource"] = 0,
			["wagoID"] = "A5ytftEJV",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "https://wago.io/TemsToGC/18",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"65828", -- [1]
						},
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["useName"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "function(trigger)\n    return trigger[1]\nend",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 66,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_size"] = 1,
					["type"] = "subborder",
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_offset"] = 1,
				}, -- [2]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_time_mod_rate"] = true,
					["type"] = "subtext",
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_text_format_p_time_format"] = 0,
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "BOTTOM",
					["anchorYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_precision"] = 1,
				}, -- [3]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "SPEED",
					["text_text_format_p_time_mod_rate"] = true,
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_format"] = "timed",
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["type"] = "subtext",
					["text_text_format_n_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["anchorYOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "TOP",
					["text_visible"] = true,
					["text_text_format_p_time_format"] = 0,
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_precision"] = 1,
				}, -- [4]
			},
			["height"] = 41,
			["load"] = {
				["use_encounterid"] = true,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "641, 1089",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["config"] = {
			},
			["cooldownEdge"] = false,
			["xOffset"] = 0,
			["regionType"] = "icon",
			["actions"] = {
				["start"] = {
					["message"] = "",
					["do_message"] = false,
					["message_type"] = "SAY",
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["cooldown"] = true,
			["conditions"] = {
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["zoom"] = 0.3,
			["anchorFrameType"] = "SCREEN",
			["cooldownTextDisabled"] = true,
			["semver"] = "2.2.2",
			["tocversion"] = 30402,
			["id"] = "Twins - Surge of Speed Buff",
			["useCooldownModRate"] = true,
			["frameStrata"] = 1,
			["width"] = 41,
			["alpha"] = 1,
			["uid"] = "7cfjOqkvxKW",
			["inverse"] = false,
			["parent"] = "Tems ToGC - Icons",
			["displayIcon"] = 132307,
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
		["Beasts - Combat"] = {
			["user_y"] = 0,
			["user_x"] = 0,
			["authorOptions"] = {
			},
			["displayText_format_p_time_dynamic_threshold"] = 60,
			["yOffset"] = 0,
			["foregroundColor"] = {
				0.40392160415649, -- [1]
				0.76470595598221, -- [2]
				0.44313728809357, -- [3]
				1, -- [4]
			},
			["displayText_format_p_time_format"] = 0,
			["sameTexture"] = true,
			["url"] = "https://wago.io/TemsToGC/18",
			["backgroundColor"] = {
				0.50196081399918, -- [1]
				0.50196081399918, -- [2]
				0.50196081399918, -- [3]
				0, -- [4]
			},
			["displayText_format_p_time_mod_rate"] = true,
			["selfPoint"] = "CENTER",
			["rotation"] = 0,
			["font"] = "KMT-GothamXN_Ultra",
			["crop_y"] = 0.41,
			["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
			["foregroundTexture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Ring_20px.tga",
			["shadowXOffset"] = 1,
			["useAdjustededMin"] = false,
			["regionType"] = "text",
			["blendMode"] = "BLEND",
			["slantMode"] = "INSIDE",
			["compress"] = false,
			["alpha"] = 1,
			["auraRotation"] = 0,
			["fixedWidth"] = 200,
			["backgroundOffset"] = 2,
			["outline"] = "OUTLINE",
			["wagoID"] = "A5ytftEJV",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["shadowYOffset"] = -1,
			["desaturateBackground"] = false,
			["customTextUpdate"] = "event",
			["automaticWidth"] = "Auto",
			["desaturateForeground"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "event",
						["subeventSuffix"] = "_CAST_START",
						["messageType"] = "CHAT_MSG_MONSTER_YELL",
						["duration"] = "36",
						["message_operator"] = "find('%s')",
						["unit"] = "player",
						["message"] = "Welcome, champions!",
						["names"] = {
						},
						["spellIds"] = {
						},
						["event"] = "Chat Message",
						["use_message"] = true,
						["subeventPrefix"] = "SPELL",
						["use_messageType"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "event",
						["subeventSuffix"] = "_CAST_START",
						["messageType"] = "CHAT_MSG_MONSTER_YELL",
						["duration"] = "9",
						["message_operator"] = "find('%s')",
						["unit"] = "player",
						["message"] = "Hailing from the deepest",
						["names"] = {
						},
						["spellIds"] = {
						},
						["event"] = "Chat Message",
						["use_message"] = true,
						["subeventPrefix"] = "SPELL",
						["use_messageType"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "",
				["activeTriggerMode"] = -10,
			},
			["endAngle"] = 360,
			["displayText_format_p_time_legacy_floor"] = false,
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
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 140,
			["useAdjustededMax"] = false,
			["fontSize"] = 16,
			["source"] = "import",
			["parent"] = "Tems ToGC - Central Textures",
			["backgroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura3",
			["crop_x"] = 0.41,
			["mirror"] = false,
			["orientation"] = "ANTICLOCKWISE",
			["uid"] = "Dgir280xo8x",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["startAngle"] = 0,
			["load"] = {
				["use_encounterid"] = true,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "629, 1088",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["width"] = 140,
			["displayText_format_p_format"] = "timed",
			["displayText_format_p_time_precision"] = 1,
			["config"] = {
			},
			["displayText"] = "Pre-pot in %p",
			["justify"] = "LEFT",
			["semver"] = "2.2.2",
			["xOffset"] = 0,
			["id"] = "Beasts - Combat",
			["anchorPoint"] = "CENTER",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["tocversion"] = 30402,
			["internalVersion"] = 66,
			["inverse"] = false,
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
			["preferToUpdate"] = false,
		},
		["QuestDecline WG"] = {
			["outline"] = "OUTLINE",
			["authorOptions"] = {
			},
			["displayText"] = "",
			["shadowYOffset"] = -1,
			["anchorPoint"] = "CENTER",
			["displayText_format_p_time_format"] = 0,
			["customTextUpdate"] = "event",
			["automaticWidth"] = "Auto",
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
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["custom"] = "function(state, event)\n    if event == \"QUEST_DETAIL\" then\n        local questID = GetQuestID()\n        if questID == 13181 then\n            print(\"|cFF00FFFFAccepted |cFFFFFF00|Hquest:13181:80|h[Victory in Wintergrasp]|r\")\n            AcceptQuest()\n        else\n            DeclineQuest()\n        end\n    end\nend\n\n\n",
						["spellIds"] = {
						},
						["custom_type"] = "stateupdate",
						["check"] = "event",
						["names"] = {
						},
						["events"] = "QUEST_DETAIL",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["displayText_format_p_time_mod_rate"] = true,
			["internalVersion"] = 66,
			["wordWrap"] = "WordWrap",
			["font"] = "Friz Quadrata TT",
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["load"] = {
				["use_zoneIds"] = true,
				["zone"] = "Wintergrasp",
				["spec"] = {
					["multi"] = {
					},
				},
				["use_zone"] = false,
				["zoneIds"] = "2104",
				["class"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 12,
			["source"] = "import",
			["shadowXOffset"] = 1,
			["regionType"] = "text",
			["fixedWidth"] = 200,
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
			["preferToUpdate"] = false,
			["displayText_format_p_time_precision"] = 1,
			["selfPoint"] = "BOTTOM",
			["displayText_format_p_time_dynamic_threshold"] = 60,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["justify"] = "LEFT",
			["tocversion"] = 30400,
			["id"] = "QuestDecline WG",
			["uid"] = "AZjlwOE4Q4U",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["yOffset"] = 0,
			["config"] = {
			},
			["displayText_format_p_format"] = "timed",
			["xOffset"] = 0,
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["information"] = {
				["forceEvents"] = true,
			},
			["displayText_format_p_time_legacy_floor"] = false,
		},
		["Anubarak - Burrow"] = {
			["sparkWidth"] = 10,
			["iconSource"] = 0,
			["wagoID"] = "A5ytftEJV",
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["url"] = "https://wago.io/TemsToGC/18",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["triggers"] = {
				{
					["trigger"] = {
						["sourceFlags2"] = "Hostile",
						["type"] = "event",
						["spellId"] = "66001",
						["subeventSuffix"] = "_CAST_SUCCESS",
						["subeventPrefix"] = "SPELL",
						["duration"] = "65",
						["message_operator"] = "find('%s')",
						["use_sourceFlags2"] = false,
						["message"] = "burrows into the ground",
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["event"] = "Chat Message",
						["use_message"] = true,
						["unit"] = "player",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["spellId"] = "66001",
						["duration"] = "80",
						["message_operator"] = "find('%s')",
						["unit"] = "player",
						["use_delay"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "event",
						["subeventSuffix"] = "_CAST_SUCCESS",
						["event"] = "Chat Message",
						["sourceFlags2"] = "Hostile",
						["message"] = "emerges from the ground",
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["use_message"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["use_sourceFlags2"] = false,
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_type"] = "event",
						["duration"] = "80",
						["event"] = "Health",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["spellIds"] = {
						},
						["custom"] = "function(event)\n    return true\nend",
						["names"] = {
						},
						["events"] = "ENCOUNTER_START",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [3]
				{
					["trigger"] = {
						["sourceFlags2"] = "Hostile",
						["type"] = "event",
						["spellId"] = "66001",
						["subeventSuffix"] = "_CAST_SUCCESS",
						["subeventPrefix"] = "SPELL",
						["duration"] = "99",
						["message_operator"] = "find('%s')",
						["use_sourceFlags2"] = false,
						["message"] = "burrows into the ground",
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["event"] = "Chat Message",
						["use_message"] = true,
						["unit"] = "player",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [4]
				{
					["trigger"] = {
						["spellId"] = "66001",
						["duration"] = "99",
						["message_operator"] = "find('%s')",
						["unit"] = "player",
						["use_delay"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "event",
						["subeventSuffix"] = "_CAST_SUCCESS",
						["event"] = "Chat Message",
						["sourceFlags2"] = "Hostile",
						["message"] = "emerges from the ground",
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["use_message"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["use_sourceFlags2"] = false,
					},
					["untrigger"] = {
					},
				}, -- [5]
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_type"] = "event",
						["duration"] = "99",
						["event"] = "Health",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["spellIds"] = {
						},
						["custom"] = "function(event)\n    return true\nend",
						["names"] = {
						},
						["events"] = "ENCOUNTER_START",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [6]
				{
					["trigger"] = {
						["type"] = "combatlog",
						["spellId"] = "66118",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "600",
						["event"] = "Combat Log",
						["unit"] = "player",
						["use_spellId"] = true,
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [7]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(trigger)\n    return (trigger[1] or trigger[2] or trigger[3] or trigger[4] or trigger[5] or trigger[6]) and not trigger[7]\nend",
				["activeTriggerMode"] = -10,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 66,
			["zoom"] = 0.3,
			["selfPoint"] = "CENTER",
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
			["barColor"] = {
				0.54901963472366, -- [1]
				0.70196080207825, -- [2]
				0.78039222955704, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["barColor2"] = {
				1, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
						["checks"] = {
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 0,
							}, -- [1]
							{
								["trigger"] = 3,
								["variable"] = "show",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.4.text_visible",
						}, -- [1]
						{
							["property"] = "sub.5.text_visible",
						}, -- [2]
						{
							["value"] = "252180",
							["property"] = "displayIcon",
						}, -- [3]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 0,
							}, -- [1]
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 0,
							}, -- [2]
							{
								["trigger"] = 3,
								["variable"] = "show",
								["value"] = 0,
							}, -- [3]
						},
					},
					["changes"] = {
						{
							["value"] = {
								0.54901963472366, -- [1]
								0.70196080207825, -- [2]
								0.78039222955704, -- [3]
								1, -- [4]
							},
							["property"] = "backgroundColor",
						}, -- [1]
						{
							["property"] = "sub.4.text_visible",
						}, -- [2]
						{
							["property"] = "sub.7.text_visible",
						}, -- [3]
						{
							["value"] = true,
							["property"] = "sub.6.text_visible",
						}, -- [4]
						{
							["property"] = "sub.5.text_visible",
						}, -- [5]
					},
				}, -- [2]
			},
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["type"] = "subforeground",
				}, -- [2]
				{
					["border_size"] = 1,
					["border_anchor"] = "bar",
					["type"] = "subborder",
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_offset"] = 0,
				}, -- [3]
				{
					["text_text_format_n_format"] = "none",
					["text_text"] = "Emerge In",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_LEFT",
					["text_shadowXOffset"] = 1,
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_visible"] = false,
				}, -- [4]
				{
					["text_text_format_n_format"] = "none",
					["text_text"] = "Next Submerge",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_LEFT",
					["text_shadowXOffset"] = 1,
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [5]
				{
					["text_text_format_n_format"] = "none",
					["text_text"] = "Submerge Soon",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_LEFT",
					["text_shadowXOffset"] = 1,
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_visible"] = false,
				}, -- [6]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%p",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_time_format"] = 0,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["type"] = "subtext",
					["text_anchorXOffset"] = -2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_text_format_p_time_precision"] = 1,
					["text_shadowYOffset"] = -1,
					["anchorYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_RIGHT",
					["text_visible"] = true,
					["text_text_format_p_format"] = "timed",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_mod_rate"] = true,
				}, -- [7]
			},
			["height"] = 20,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["load"] = {
				["use_encounterid"] = true,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "645, 1085",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["parent"] = "Tems ToGC - Timers",
			["source"] = "import",
			["gradientOrientation"] = "HORIZONTAL",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["enableGradient"] = false,
			["anchorFrameType"] = "SCREEN",
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["alpha"] = 1,
			["config"] = {
			},
			["icon_side"] = "LEFT",
			["id"] = "Anubarak - Burrow",
			["sparkHeight"] = 30,
			["texture"] = "Melli",
			["spark"] = false,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["semver"] = "2.2.2",
			["tocversion"] = 30402,
			["sparkHidden"] = "NEVER",
			["icon"] = true,
			["frameStrata"] = 1,
			["width"] = 200,
			["sparkOffsetX"] = 0,
			["uid"] = "RQjjAirLP9R",
			["inverse"] = false,
			["sparkOffsetY"] = 0,
			["orientation"] = "HORIZONTAL",
			["displayIcon"] = 252177,
			["information"] = {
			},
			["authorOptions"] = {
			},
		},
		["Sacred Cancer (Focus)"] = {
			["user_y"] = 0,
			["user_x"] = 0,
			["xOffset"] = 41,
			["yOffset"] = 5.57,
			["foregroundColor"] = {
				0.9764706492424011, -- [1]
				1, -- [2]
				0.9921569228172302, -- [3]
				1, -- [4]
			},
			["desaturateBackground"] = false,
			["sameTexture"] = true,
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
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["auranames"] = {
							"53659", -- [1]
						},
						["spellIds"] = {
						},
						["specificUnit"] = "focus",
						["unit"] = "member",
						["names"] = {
						},
						["useName"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["endAngle"] = 360,
			["internalVersion"] = 66,
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
			["frameStrata"] = 1,
			["desc"] = "Sacred Cancer FOCUS indicator",
			["rotation"] = 0,
			["font"] = "Friz Quadrata TT",
			["backgroundOffset"] = 2,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 66,
			["backgroundColor"] = {
				0.5, -- [1]
				0.5, -- [2]
				0.5, -- [3]
				0.5, -- [4]
			},
			["crop_y"] = 0.41,
			["conditions"] = {
			},
			["useAdjustededMax"] = false,
			["fontSize"] = 12,
			["anchorPoint"] = "CENTER",
			["foregroundTexture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\UI-Sacred Cancer",
			["authorOptions"] = {
			},
			["uid"] = "MPxEDWLvDPS",
			["smoothProgress"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "progresstexture",
			["config"] = {
			},
			["blendMode"] = "BLEND",
			["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
			["anchorFrameType"] = "SELECTFRAME",
			["slantMode"] = "INSIDE",
			["mirror"] = false,
			["anchorFrameFrame"] = "FocusFrame",
			["selfPoint"] = "CENTER",
			["load"] = {
				["use_class"] = true,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
						[103] = true,
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["use_talent"] = false,
			},
			["compress"] = false,
			["id"] = "Sacred Cancer (Focus)",
			["backgroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura3",
			["alpha"] = 1,
			["width"] = 66,
			["startAngle"] = 0,
			["auraRotation"] = 0,
			["inverse"] = false,
			["desaturateForeground"] = false,
			["orientation"] = "ANTICLOCKWISE",
			["crop_x"] = 0.41,
			["information"] = {
				["forceEvents"] = true,
			},
			["slanted"] = false,
		},
		["Beasts - Charge Cast"] = {
			["sparkWidth"] = 10,
			["iconSource"] = 0,
			["wagoID"] = "A5ytftEJV",
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["url"] = "https://wago.io/TemsToGC/18",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.51000002026558, -- [4]
			},
			["triggers"] = {
				{
					["trigger"] = {
						["subeventSuffix"] = "_CAST_START",
						["useName"] = true,
						["spellId"] = "66902",
						["auranames"] = {
							"66758", -- [1]
						},
						["unit"] = "target",
						["duration"] = "7",
						["message_operator"] = "find('%s')",
						["subeventPrefix"] = "SPELL",
						["message"] = "glares at",
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["event"] = "Chat Message",
						["use_message"] = true,
						["type"] = "event",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 66,
			["zoom"] = 0.3,
			["selfPoint"] = "CENTER",
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
			["barColor"] = {
				1, -- [1]
				0.20784315466881, -- [2]
				0.13725490868092, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["barColor2"] = {
				0.9764706492424, -- [1]
				1, -- [2]
				0.97254908084869, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["type"] = "subforeground",
				}, -- [2]
				{
					["border_size"] = 1,
					["border_anchor"] = "bar",
					["type"] = "subborder",
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_offset"] = 1,
				}, -- [3]
				{
					["text_text_format_n_format"] = "none",
					["text_text"] = "Charge on %1.destName",
					["text_text_format_1.destName_abbreviate_max"] = 8,
					["text_text_format_1.destName_color"] = "class",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_1.destName_abbreviate"] = false,
					["text_text_format_1.destName_format"] = "Unit",
					["rotateText"] = "NONE",
					["text_text_format_1.destName_realm_name"] = "never",
					["type"] = "subtext",
					["text_anchorXOffset"] = 2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_justify"] = "CENTER",
					["text_shadowYOffset"] = -1,
					["text_fontType"] = "None",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "INNER_LEFT",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["anchorYOffset"] = 0,
					["text_fontSize"] = 14,
					["anchorXOffset"] = 0,
					["text_shadowXOffset"] = 1,
				}, -- [4]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%p",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_time_format"] = 0,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["type"] = "subtext",
					["text_anchorXOffset"] = -2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_text_format_p_time_precision"] = 1,
					["text_shadowYOffset"] = -1,
					["anchorYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_RIGHT",
					["text_visible"] = true,
					["text_text_format_p_format"] = "timed",
					["text_fontSize"] = 14,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_mod_rate"] = true,
				}, -- [5]
			},
			["height"] = 22,
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Glass.mp3",
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["load"] = {
				["use_encounterid"] = true,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "629, 1088",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["parent"] = "Tems ToGC - Casts",
			["source"] = "import",
			["gradientOrientation"] = "HORIZONTAL",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["enableGradient"] = true,
			["anchorFrameType"] = "SCREEN",
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["alpha"] = 1,
			["config"] = {
			},
			["icon_side"] = "LEFT",
			["id"] = "Beasts - Charge Cast",
			["sparkHeight"] = 30,
			["texture"] = "Clean",
			["spark"] = false,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["semver"] = "2.2.2",
			["tocversion"] = 30402,
			["sparkHidden"] = "NEVER",
			["icon"] = true,
			["frameStrata"] = 1,
			["width"] = 290,
			["sparkOffsetX"] = 0,
			["uid"] = "NW0F28AjCB9",
			["inverse"] = true,
			["sparkOffsetY"] = 0,
			["orientation"] = "HORIZONTAL",
			["displayIcon"] = 132337,
			["information"] = {
			},
			["authorOptions"] = {
			},
		},
		["Fears"] = {
			["iconSource"] = 0,
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"Fear", -- [1]
							"Death Coil", -- [2]
							"18431", -- [3]
							"23023", -- [4]
							"21330", -- [5]
							"23275", -- [6]
							"20019", -- [7]
							"13488", -- [8]
							"Howl of Terror", -- [9]
							"Psychic Scream", -- [10]
							"Intimidating Shout", -- [11]
							"19408", -- [12]
							"Scare Beast", -- [13]
							"7399", -- [14]
							"8715", -- [15]
							"14100", -- [16]
							"6605", -- [17]
						},
						["event"] = "Health",
						["names"] = {
						},
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["useName"] = true,
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["unevent"] = "auto",
						["subeventSuffix"] = "_CAST_START",
						["use_genericShowOn"] = true,
						["duration"] = "1",
						["event"] = "Action Usable",
						["unit"] = "player",
						["realSpellName"] = 7744,
						["use_spellName"] = true,
						["genericShowOn"] = "showOnReady",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["use_exact_spellName"] = true,
						["use_track"] = true,
						["spellName"] = 7744,
					},
					["untrigger"] = {
						["genericShowOn"] = "showOnReady",
					},
				}, -- [2]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 66,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 2,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["glowFrequency"] = 0.25,
					["glow"] = true,
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						0, -- [2]
						0.00784313725490196, -- [3]
						1, -- [4]
					},
					["glowDuration"] = 1,
					["type"] = "subglow",
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
			},
			["height"] = 65,
			["load"] = {
				["use_race"] = true,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["race"] = {
					["single"] = "Scourge",
					["multi"] = {
						["Scourge"] = true,
					},
				},
				["faction"] = {
				},
				["zoneIds"] = "",
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["width"] = 65,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["parent"] = "WOTF BORDER",
			["color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0, -- [4]
			},
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = false,
			},
			["regionType"] = "icon",
			["conditions"] = {
			},
			["selfPoint"] = "CENTER",
			["cooldownEdge"] = false,
			["uid"] = "cpsOq)tZstX",
			["alpha"] = 1,
			["useCooldownModRate"] = true,
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 11304,
			["id"] = "Fears",
			["semver"] = "1.0.1",
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["cooldownTextDisabled"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["useTooltip"] = false,
			["displayIcon"] = 136187,
			["cooldown"] = false,
			["authorOptions"] = {
			},
		},
		["Beasts - Paralysis"] = {
			["iconSource"] = 0,
			["wagoID"] = "A5ytftEJV",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "https://wago.io/TemsToGC/18",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"66830", -- [1]
						},
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["useName"] = true,
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "function(trigger)\n    return trigger[1]\nend",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 66,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_size"] = 1,
					["type"] = "subborder",
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_offset"] = 1,
				}, -- [2]
				{
					["glowFrequency"] = 0.2,
					["type"] = "subglow",
					["glowXOffset"] = 0,
					["glowType"] = "Pixel",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowDuration"] = 1,
					["useGlowColor"] = false,
					["glowScale"] = 1,
					["glowThickness"] = 1.5,
					["glow"] = true,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_time_mod_rate"] = true,
					["type"] = "subtext",
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_text_format_p_time_format"] = 0,
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "BOTTOM",
					["anchorYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_precision"] = 1,
				}, -- [4]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "TOXIN",
					["text_text_format_p_time_mod_rate"] = true,
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_format"] = "timed",
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["type"] = "subtext",
					["text_text_format_n_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["anchorYOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "TOP",
					["text_visible"] = true,
					["text_text_format_p_time_format"] = 0,
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_precision"] = 1,
				}, -- [5]
			},
			["height"] = 41,
			["load"] = {
				["use_encounterid"] = true,
				["encounterid"] = "629, 1088",
				["use_zoneIds"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["config"] = {
			},
			["cooldownEdge"] = false,
			["xOffset"] = 0,
			["regionType"] = "icon",
			["actions"] = {
				["start"] = {
					["message"] = "{rt4}",
					["do_message"] = true,
					["message_type"] = "SAY",
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["cooldown"] = true,
			["conditions"] = {
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["zoom"] = 0.3,
			["anchorFrameType"] = "SCREEN",
			["cooldownTextDisabled"] = true,
			["semver"] = "2.2.2",
			["tocversion"] = 30402,
			["id"] = "Beasts - Paralysis",
			["useCooldownModRate"] = true,
			["frameStrata"] = 1,
			["width"] = 41,
			["alpha"] = 1,
			["uid"] = "dNJnbqJIhFK",
			["inverse"] = false,
			["parent"] = "Tems ToGC - Icons",
			["displayIcon"] = 136203,
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
		["Anubarak - Adds"] = {
			["sparkWidth"] = 10,
			["iconSource"] = 0,
			["wagoID"] = "A5ytftEJV",
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["url"] = "https://wago.io/TemsToGC/18",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "event",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "5",
						["message_operator"] = "find('%s')",
						["names"] = {
						},
						["message"] = "emerges from the ground",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["use_delay"] = false,
						["use_message"] = true,
						["event"] = "Chat Message",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["duration"] = "10",
						["message_operator"] = "find('%s')",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["event"] = "Health",
						["use_unit"] = true,
						["message"] = "burrows into the ground",
						["custom_hide"] = "timed",
						["custom"] = "function(event)\n    return true\nend",
						["custom_type"] = "event",
						["use_message"] = true,
						["spellIds"] = {
						},
						["events"] = "ENCOUNTER_START",
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_type"] = "event",
						["duration"] = "45",
						["event"] = "Health",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["spellIds"] = {
						},
						["custom"] = "function()\n    return true\nend",
						["names"] = {
						},
						["events"] = "TemsAnubBurrowerEvent",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [3]
				{
					["trigger"] = {
						["type"] = "event",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "65",
						["message_operator"] = "find('%s')",
						["names"] = {
						},
						["message"] = "burrows into the ground",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["use_delay"] = false,
						["use_message"] = true,
						["event"] = "Chat Message",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [4]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(trigger)\n    return (trigger[1] or trigger[2] or trigger[3]) and not trigger[4]\nend",
				["activeTriggerMode"] = -10,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 66,
			["zoom"] = 0.3,
			["selfPoint"] = "CENTER",
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
			["barColor"] = {
				0.78039222955704, -- [1]
				0.35686275362968, -- [2]
				0.34901961684227, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["barColor2"] = {
				1, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["type"] = "subforeground",
				}, -- [2]
				{
					["border_size"] = 1,
					["border_anchor"] = "bar",
					["type"] = "subborder",
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_offset"] = 0,
				}, -- [3]
				{
					["text_text_format_n_format"] = "none",
					["text_text"] = "Next Adds",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_LEFT",
					["text_shadowXOffset"] = 1,
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [4]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%p",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_time_format"] = 0,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["type"] = "subtext",
					["text_anchorXOffset"] = -2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_text_format_p_time_precision"] = 1,
					["text_shadowYOffset"] = -1,
					["anchorYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_RIGHT",
					["text_visible"] = true,
					["text_text_format_p_format"] = "timed",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_mod_rate"] = true,
				}, -- [5]
			},
			["height"] = 20,
			["actions"] = {
				["start"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
				["finish"] = {
					["custom"] = "C_Timer.After(0, function()\n        WeakAuras.ScanEvents(\"TemsAnubBurrowerEvent\")\nend)",
					["do_custom"] = true,
				},
				["init"] = {
				},
			},
			["load"] = {
				["use_encounterid"] = true,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "645, 1085",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["parent"] = "Tems ToGC - Timers",
			["source"] = "import",
			["gradientOrientation"] = "HORIZONTAL",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["enableGradient"] = false,
			["anchorFrameType"] = "SCREEN",
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["alpha"] = 1,
			["config"] = {
			},
			["icon_side"] = "LEFT",
			["id"] = "Anubarak - Adds",
			["sparkHeight"] = 30,
			["texture"] = "Melli",
			["spark"] = false,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["semver"] = "2.2.2",
			["tocversion"] = 30402,
			["sparkHidden"] = "NEVER",
			["icon"] = true,
			["frameStrata"] = 1,
			["width"] = 200,
			["sparkOffsetX"] = 0,
			["uid"] = "5tTUTl93EHT",
			["inverse"] = false,
			["sparkOffsetY"] = 0,
			["orientation"] = "HORIZONTAL",
			["displayIcon"] = "237373",
			["information"] = {
			},
			["authorOptions"] = {
			},
		},
		["Beasts - Spew Cast"] = {
			["sparkWidth"] = 10,
			["iconSource"] = 0,
			["wagoID"] = "A5ytftEJV",
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["url"] = "https://wago.io/TemsToGC/18",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.51000002026558, -- [4]
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "combatlog",
						["spellId"] = "66821",
						["subeventSuffix"] = "_CAST_SUCCESS",
						["duration"] = "2.5",
						["event"] = "Combat Log",
						["unit"] = "player",
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "combatlog",
						["spellId"] = "66818",
						["subeventSuffix"] = "_CAST_SUCCESS",
						["duration"] = "2.5",
						["event"] = "Combat Log",
						["unit"] = "player",
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "combatlog",
						["spellId"] = "66821",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "1",
						["event"] = "Combat Log",
						["unit"] = "player",
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [3]
				{
					["trigger"] = {
						["type"] = "combatlog",
						["spellId"] = "66818",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "1",
						["event"] = "Combat Log",
						["unit"] = "player",
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [4]
				{
					["trigger"] = {
						["message"] = "The air itself freezes with the introduction of our next combatant, Icehowl! Kill or be killed, champions",
						["type"] = "event",
						["unit"] = "player",
						["event"] = "Chat Message",
						["use_message"] = true,
						["duration"] = "224",
						["message_operator"] = "find('%s')",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [5]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(trigger)\n    return (trigger[1] or trigger[2] or trigger[3] or trigger[4]) and not trigger[5]\n    end",
				["activeTriggerMode"] = -10,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 66,
			["zoom"] = 0.3,
			["selfPoint"] = "CENTER",
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
			["barColor"] = {
				1, -- [1]
				0.32941177487373, -- [2]
				0.33725491166115, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["barColor2"] = {
				1, -- [1]
				0.81960791349411, -- [2]
				0.3098039329052, -- [3]
				1, -- [4]
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "inverse",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 4,
								["variable"] = "show",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = 136007,
							["property"] = "displayIcon",
						}, -- [1]
						{
							["value"] = {
								0.33725491166115, -- [1]
								0.66274511814117, -- [2]
								0.75686281919479, -- [3]
								1, -- [4]
							},
							["property"] = "barColor",
						}, -- [2]
						{
							["value"] = {
								0.80784320831299, -- [1]
								0.86274516582489, -- [2]
								0.88235300779343, -- [3]
								1, -- [4]
							},
							["property"] = "barColor2",
						}, -- [3]
					},
				}, -- [2]
			},
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["type"] = "subforeground",
				}, -- [2]
				{
					["border_size"] = 1,
					["border_anchor"] = "bg",
					["type"] = "subborder",
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_offset"] = 1,
				}, -- [3]
				{
					["text_text_format_n_format"] = "none",
					["text_text"] = "FRONTAL",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_LEFT",
					["text_shadowXOffset"] = 1,
					["text_fontSize"] = 14,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [4]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%p",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_time_format"] = 0,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["type"] = "subtext",
					["text_anchorXOffset"] = -2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_text_format_p_time_precision"] = 1,
					["text_shadowYOffset"] = -1,
					["anchorYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_RIGHT",
					["text_visible"] = true,
					["text_text_format_p_format"] = "timed",
					["text_fontSize"] = 14,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_mod_rate"] = true,
				}, -- [5]
			},
			["height"] = 22,
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\sonar.ogg",
					["do_sound"] = true,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["load"] = {
				["use_encounterid"] = true,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "629, 1088",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["parent"] = "Tems ToGC - Casts",
			["source"] = "import",
			["gradientOrientation"] = "HORIZONTAL",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["enableGradient"] = true,
			["anchorFrameType"] = "SCREEN",
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["alpha"] = 1,
			["config"] = {
			},
			["icon_side"] = "LEFT",
			["id"] = "Beasts - Spew Cast",
			["sparkHeight"] = 30,
			["texture"] = "Clean",
			["spark"] = false,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["semver"] = "2.2.2",
			["tocversion"] = 30402,
			["sparkHidden"] = "NEVER",
			["icon"] = true,
			["frameStrata"] = 1,
			["width"] = 290,
			["sparkOffsetX"] = 0,
			["uid"] = "9XmUtIn5Zrf",
			["inverse"] = false,
			["sparkOffsetY"] = 0,
			["orientation"] = "HORIZONTAL",
			["displayIcon"] = 135789,
			["information"] = {
			},
			["authorOptions"] = {
			},
		},
		["Trinket ICD Tracker"] = {
			["controlledChildren"] = {
				"Pendulum", -- [1]
				"Death", -- [2]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["wagoID"] = "lkrS6uIit",
			["xOffset"] = 739.6765531263231,
			["preferToUpdate"] = false,
			["yOffset"] = -144.2030996798797,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["url"] = "",
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
						["unit"] = "player",
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["event"] = "Health",
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["internalVersion"] = 66,
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
			["version"] = 1,
			["subRegions"] = {
			},
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["source"] = "import",
			["scale"] = 1.1,
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "group",
			["borderSize"] = 2,
			["borderOffset"] = 4,
			["semver"] = "1.0.0",
			["tocversion"] = 30400,
			["id"] = "Trinket ICD Tracker",
			["uid"] = "2D1zjeQc1Q6",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["groupIcon"] = "136035",
			["config"] = {
			},
			["borderInset"] = 1,
			["authorOptions"] = {
			},
			["conditions"] = {
			},
			["information"] = {
				["forceEvents"] = true,
			},
			["selfPoint"] = "CENTER",
		},
		["PW: Shield (P2)"] = {
			["user_y"] = 0,
			["user_x"] = 0,
			["authorOptions"] = {
			},
			["yOffset"] = 0.57,
			["foregroundColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturateBackground"] = false,
			["sameTexture"] = true,
			["backgroundColor"] = {
				0.5, -- [1]
				0.5, -- [2]
				0.5, -- [3]
				0.5, -- [4]
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"6788", -- [1]
						},
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
						},
						["specificUnit"] = "party2",
						["useName"] = true,
						["names"] = {
						},
						["unit"] = "member",
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["endAngle"] = 360,
			["internalVersion"] = 66,
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
			["alpha"] = 1,
			["desc"] = "Shield CD on Party2 indicator...",
			["rotation"] = 0,
			["font"] = "Friz Quadrata TT",
			["slanted"] = false,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 43,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["load"] = {
				["use_class"] = true,
				["talent"] = {
					["multi"] = {
						[103] = true,
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["use_talent"] = false,
			},
			["crop_x"] = 0.41,
			["useAdjustededMax"] = false,
			["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
			["xOffset"] = -39,
			["startAngle"] = 0,
			["desaturateForeground"] = false,
			["useAdjustededMin"] = false,
			["mirror"] = false,
			["anchorFrameFrame"] = "PartyMemberFrame2",
			["regionType"] = "progresstexture",
			["config"] = {
			},
			["blendMode"] = "BLEND",
			["smoothProgress"] = false,
			["anchorFrameType"] = "SELECTFRAME",
			["slantMode"] = "INSIDE",
			["crop_y"] = 0.41,
			["fontSize"] = 12,
			["anchorPoint"] = "CENTER",
			["selfPoint"] = "CENTER",
			["compress"] = false,
			["id"] = "PW: Shield (P2)",
			["foregroundTexture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\UI-PartyFlash-Highlight_Shield",
			["frameStrata"] = 1,
			["width"] = 43,
			["uid"] = "zDMEhE)lXyO",
			["auraRotation"] = 0,
			["inverse"] = false,
			["backgroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura3",
			["orientation"] = "ANTICLOCKWISE",
			["conditions"] = {
			},
			["information"] = {
				["forceEvents"] = true,
			},
			["backgroundOffset"] = 2,
		},
		["ToGC - Combat Timer"] = {
			["outline"] = "None",
			["wagoID"] = "A5ytftEJV",
			["authorOptions"] = {
			},
			["displayText_format_p_time_dynamic_threshold"] = 10,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["displayText_format_p_time_format"] = 0,
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/TemsToGC/18",
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
						["type"] = "event",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "22.5",
						["message_operator"] = "find('%s')",
						["names"] = {
						},
						["message"] = "Hailing from the deepest, darkest caverns of the Storm Peaks, Gormok the Impaler! Battle on, heroes",
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["use_message"] = true,
						["event"] = "Chat Message",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "event",
						["use_destNpcId"] = true,
						["subeventSuffix"] = "",
						["event"] = "Chat Message",
						["duration"] = "14.5",
						["message_operator"] = "find('%s')",
						["unit"] = "player",
						["message"] = "Steel yourselves, heroes, for the twin terrors, Acidmaw and Dreadscale, enter the arena",
						["subeventPrefix"] = "UNIT_DIED",
						["spellIds"] = {
						},
						["names"] = {
						},
						["use_message"] = true,
						["use_destUnit"] = false,
						["destNpcId"] = "34786",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "event",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "10",
						["message_operator"] = "find('%s')",
						["names"] = {
						},
						["message"] = "The air itself freezes with the introduction of our next combatant, Icehowl! Kill or be killed, champions",
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["use_message"] = true,
						["event"] = "Chat Message",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [3]
				{
					["trigger"] = {
						["type"] = "event",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "88",
						["message_operator"] = "find('%s')",
						["names"] = {
						},
						["message"] = "Grand Warlock Wilfred Fizzlebang will summon forth your next challenge. Stand by for his entry",
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["use_message"] = true,
						["event"] = "Chat Message",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [4]
				{
					["trigger"] = {
						["type"] = "event",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "35.5",
						["message_operator"] = "find('%s')",
						["names"] = {
						},
						["message"] = "The next battle will be against the Argent Crusade's most powerful knights! Only by defeating them will you be deemed worthy...",
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["use_message"] = true,
						["event"] = "Chat Message",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [5]
				{
					["trigger"] = {
						["type"] = "event",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "30",
						["message_operator"] = "find('%s')",
						["names"] = {
						},
						["message"] = "Only by working together will you overcome the final challenge. From the depths of Icecrown come two of the Scourge's most powerful lieutenants: fearsome val'kyr, winged harbingers of the Lich King!",
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["use_message"] = true,
						["event"] = "Chat Message",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [6]
				{
					["trigger"] = {
						["type"] = "event",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "15",
						["message_operator"] = "find('%s')",
						["names"] = {
						},
						["message"] = "Let the games begin!",
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["use_message"] = true,
						["event"] = "Chat Message",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [7]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["displayText_format_p_time_mod_rate"] = true,
			["displayText_format_p_time_legacy_floor"] = false,
			["selfPoint"] = "BOTTOM",
			["font"] = "KMT-GothamXN_Ultra",
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["load"] = {
				["use_zoneIds"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "629, 1088",
				["use_encounterid"] = false,
				["zoneIds"] = "172",
				["class"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 24,
			["source"] = "import",
			["shadowXOffset"] = 1,
			["wordWrap"] = "WordWrap",
			["automaticWidth"] = "Auto",
			["regionType"] = "text",
			["parent"] = "Tems ToGC - Casts",
			["fixedWidth"] = 200,
			["internalVersion"] = 66,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayText_format_p_time_precision"] = 1,
			["config"] = {
			},
			["xOffset"] = 0,
			["semver"] = "2.2.2",
			["justify"] = "LEFT",
			["tocversion"] = 30402,
			["id"] = "ToGC - Combat Timer",
			["shadowYOffset"] = -1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
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
			["uid"] = "qivxAsJq7Sq",
			["displayText"] = "BOSS SPAWN\n       **%p**",
			["displayText_format_p_format"] = "timed",
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
			["preferToUpdate"] = false,
		},
		["Anubarak - Shadow Strike Nameplate"] = {
			["modelIsUnit"] = false,
			["iconSource"] = -1,
			["api"] = false,
			["xOffset"] = 5,
			["displayText"] = "SPARK SPAWNED\n",
			["yOffset"] = 0,
			["anchorPoint"] = "RIGHT",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["url"] = "https://wago.io/TemsToGC/18",
			["actions"] = {
				["start"] = {
					["message"] = "",
					["message_format_unitName_format"] = "none",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = true,
					["message_format_c_format"] = "none",
					["do_message"] = false,
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\sonar.ogg",
					["message_type"] = "SAY",
				},
				["finish"] = {
					["do_custom"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_message"] = false,
					["do_sound"] = false,
				},
				["init"] = {
				},
			},
			["displayText_format_p_time_mod_rate"] = true,
			["keepAspectRatio"] = false,
			["model_path"] = "spells/arcanepower_state_chest.m2",
			["desaturate"] = false,
			["rotation"] = 0,
			["font"] = "Accidental Presidency",
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
						["HUNTER"] = true,
						["WARLOCK"] = true,
						["SHAMAN"] = true,
						["MAGE"] = true,
						["DRUID"] = true,
						["PALADIN"] = true,
						["PRIEST"] = true,
					},
				},
				["use_encounterid"] = true,
				["use_zone"] = false,
				["zoneIds"] = "",
				["encounterid"] = "645, 1085",
				["use_zoneIds"] = false,
				["zone"] = "",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
			["sequence"] = 1,
			["shadowXOffset"] = 1,
			["regionType"] = "icon",
			["model_st_us"] = 40,
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Circle_AlphaGradient_In.tga",
			["model_st_ry"] = 0,
			["auto"] = false,
			["tocversion"] = 30402,
			["model_st_rx"] = 270,
			["uid"] = "l2t)NVhVx2B",
			["fixedWidth"] = 200,
			["model_st_tz"] = 0,
			["parent"] = "Tems ToGC - Nameplates [DO NOT MOVE]",
			["outline"] = "OUTLINE",
			["cooldown"] = true,
			["borderBackdrop"] = "Blizzard Tooltip",
			["wagoID"] = "A5ytftEJV",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorOptions"] = {
			},
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["shadowYOffset"] = -1,
			["borderOffset"] = 5,
			["model_x"] = 0,
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["advance"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "",
						["useMatch_count"] = false,
						["spellId"] = 66134,
						["auranames"] = {
							"66193", -- [1]
						},
						["use_genericShowOn"] = true,
						["message_operator"] = "find('%s')",
						["destUnit"] = "player",
						["group_count"] = "0",
						["use_attackable"] = true,
						["group_countOperator"] = ">",
						["use_namerealm"] = false,
						["namerealm"] = "Crypt Guard",
						["subeventSuffix"] = "_CAST_START",
						["perUnitMode"] = "unaffected",
						["percenthealth"] = "0",
						["event"] = "Cast",
						["message"] = "",
						["use_spellId"] = true,
						["use_destUnit"] = false,
						["use_track"] = true,
						["useExactSpellId"] = false,
						["use_messageType"] = false,
						["spellName"] = "Summon Corpse Scarabs",
						["use_hostility"] = false,
						["useGroup_count"] = false,
						["combinePerUnit"] = true,
						["subeventPrefix"] = "SPELL",
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "nameplate",
						["duration"] = "1.5",
						["showClones"] = true,
						["use_threatUnit"] = true,
						["realSpellName"] = "Summon Corpse Scarabs",
						["names"] = {
						},
						["use_status"] = false,
						["use_cloneId"] = false,
						["debuffType"] = "HELPFUL",
						["type"] = "unit",
						["useName"] = true,
						["unevent"] = "timed",
						["auraspellids"] = {
						},
						["use_sourceName"] = false,
						["sourceName"] = "Crypt Guard",
						["threatUnit"] = "target",
						["use_unit"] = true,
						["use_npcId"] = false,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["use_aggro"] = true,
						["use_message"] = false,
						["use_percenthealth"] = true,
						["percenthealth_operator"] = "~=",
						["useRem"] = false,
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "target",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "function(trigger)\n    return trigger[1] and not trigger[2]\nend",
				["activeTriggerMode"] = -10,
			},
			["displayText_format_p_format"] = "timed",
			["displayText_format_p_time_legacy_floor"] = false,
			["model_fileId"] = "122968",
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["preset"] = "alphaPulse",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["model_st_ty"] = 0,
			["alpha"] = 1,
			["version"] = 18,
			["width"] = 30,
			["discrete_rotation"] = 0,
			["frameStrata"] = 1,
			["model_st_tx"] = 0,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["glowXOffset"] = 0,
					["glowType"] = "Pixel",
					["glowLength"] = 8,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowDuration"] = 1,
					["useGlowColor"] = false,
					["glowScale"] = 1,
					["glowThickness"] = 2,
					["glow"] = true,
					["glowLines"] = 6,
					["glowBorder"] = false,
				}, -- [2]
			},
			["height"] = 30,
			["rotate"] = true,
			["config"] = {
			},
			["displayText_format_p_time_dynamic_threshold"] = 60,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["fontSize"] = 26,
			["source"] = "import",
			["blendMode"] = "BLEND",
			["justify"] = "LEFT",
			["borderInset"] = 11,
			["mirror"] = false,
			["borderEdge"] = "None",
			["cooldownTextDisabled"] = false,
			["borderSize"] = 16,
			["border"] = false,
			["icon"] = true,
			["model_st_rz"] = 0,
			["model_z"] = 0,
			["displayText_format_p_time_precision"] = 1,
			["wordWrap"] = "WordWrap",
			["selfPoint"] = "LEFT",
			["displayText_format_p_time_format"] = 0,
			["semver"] = "2.2.2",
			["zoom"] = 0,
			["id"] = "Anubarak - Shadow Strike Nameplate",
			["model_y"] = 0,
			["useCooldownModRate"] = true,
			["anchorFrameType"] = "NAMEPLATE",
			["internalVersion"] = 66,
			["displayIcon"] = 136189,
			["inverse"] = false,
			["scale"] = 1,
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
			["preferToUpdate"] = false,
		},
		["WOTF BORDER"] = {
			["controlledChildren"] = {
				"Fears", -- [1]
				"Charms", -- [2]
				"Sleeps", -- [3]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["groupIcon"] = 136187,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["url"] = "",
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
						["unit"] = "player",
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["event"] = "Health",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["internalVersion"] = 66,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["desc"] = "Border around WOTF when under sleep/charm/fear and WOTF isnt on CD.",
			["version"] = 2,
			["subRegions"] = {
			},
			["load"] = {
				["use_class"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["zoneIds"] = "",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["source"] = "import",
			["scale"] = 1,
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "group",
			["borderSize"] = 2,
			["borderOffset"] = 4,
			["semver"] = "1.0.1",
			["tocversion"] = 11304,
			["id"] = "WOTF BORDER",
			["yOffset"] = -337.7799999999996,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["xOffset"] = -555.2299999999996,
			["uid"] = "8B2oZr(3rax",
			["borderInset"] = 1,
			["config"] = {
			},
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
				["forceEvents"] = true,
				["groupOffset"] = false,
			},
			["selfPoint"] = "CENTER",
		},
		["Light Shield"] = {
			["sparkWidth"] = 10,
			["sparkOffsetX"] = 0,
			["wagoID"] = "A5ytftEJV",
			["parent"] = "Tems - Twins Special Abilities [Silas WA]",
			["preferToUpdate"] = false,
			["customText"] = "function()\n    return tostring(aura_env.CanBeUsed)\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["semver"] = "2.2.2",
			["sparkRotation"] = 0,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/TemsToGC/18",
			["actions"] = {
				["start"] = {
					["custom"] = "\n\n",
					["do_custom"] = false,
				},
				["finish"] = {
					["custom"] = "\n\n",
					["do_custom"] = false,
				},
				["init"] = {
					["custom"] = "aura_env.CanBeUsed = true",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "34497",
						["spellId"] = "65876",
						["duration"] = "15",
						["unit"] = "nameplate",
						["use_class"] = false,
						["debuffType"] = "HELPFUL",
						["type"] = "unit",
						["useNpcId"] = false,
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["event"] = "Cast",
						["useExactSpellId"] = false,
						["use_npcId"] = false,
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["use_sourceUnit"] = false,
						["auraspellids"] = {
						},
						["use_exact_spellId"] = true,
						["sourceUnit"] = "player",
						["use_unit"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "custom",
						["custom"] = "function(event)\n    aura_env.CanBeUsed = true\n    return true\nend",
						["custom_type"] = "event",
						["events"] = "ENCOUNTER_START, TOGC_VALKYR_SPECIAL_ABILITIES_RESET",
						["duration"] = "1",
						["custom_hide"] = "timed",
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "combatlog",
						["spellId"] = "65858",
						["subeventSuffix"] = "_AURA_REMOVED",
						["duration"] = "15",
						["event"] = "Combat Log",
						["unit"] = "player",
						["use_spellName"] = false,
						["spellName"] = "Shield of Lights",
						["use_spellId"] = true,
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [3]
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
				}, -- [4]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t)\n    return t[4]\nend",
				["activeTriggerMode"] = 1,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 66,
			["selfPoint"] = "CENTER",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["barColor2"] = {
				1, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["barColor"] = {
				1, -- [1]
				1, -- [2]
				0.78431379795074, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
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
							["property"] = "sub.3.border_visible",
						}, -- [1]
						{
							["value"] = {
								0, -- [1]
								0, -- [2]
								0, -- [3]
								0.5, -- [4]
							},
							["property"] = "backgroundColor",
						}, -- [2]
						{
							["value"] = {
								["custom"] = "WeakAuras.ScanEvents(\"TOGC_VALKYR_SPECIAL_ABILITY_USED\")\naura_env.CanBeUsed = false",
							},
							["property"] = "customcode",
						}, -- [3]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "customcheck",
						["value"] = "function()\n    return not aura_env.CanBeUsed\nend",
					},
					["linked"] = true,
					["changes"] = {
						{
							["value"] = {
								0.55294120311737, -- [1]
								0.55294120311737, -- [2]
								0.55294120311737, -- [3]
								1, -- [4]
							},
							["property"] = "sub.4.text_color",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [2]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 3,
								["variable"] = "show",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["property"] = "sub.4.text_visible",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "sub.5.text_visible",
						}, -- [2]
						{
							["value"] = {
								0.68235296010971, -- [1]
								0.34509804844856, -- [2]
								0.36862745881081, -- [3]
								1, -- [4]
							},
							["property"] = "barColor",
						}, -- [3]
					},
				}, -- [3]
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
			["sparkOffsetY"] = 0,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["type"] = "subforeground",
				}, -- [2]
				{
					["border_size"] = 1,
					["border_anchor"] = "bar",
					["type"] = "subborder",
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = false,
					["border_edge"] = "Square Full White",
					["border_offset"] = 0,
				}, -- [3]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "Light Shield",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_n_format"] = "none",
					["anchorXOffset"] = 0,
					["text_text_format_p_time_precision"] = 1,
					["type"] = "subtext",
					["text_anchorXOffset"] = 2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						0.69019609689713, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["anchorYOffset"] = 0,
					["text_shadowYOffset"] = -1,
					["text_text_format_p_time_format"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_LEFT",
					["text_visible"] = true,
					["text_text_format_p_time_mod_rate"] = true,
					["text_fontSize"] = 12,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_text_format_p_format"] = "timed",
				}, -- [4]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "INTERRUPT",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_n_format"] = "none",
					["anchorXOffset"] = 0,
					["text_text_format_p_time_precision"] = 1,
					["type"] = "subtext",
					["text_anchorXOffset"] = 0,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["anchorYOffset"] = 0,
					["text_shadowYOffset"] = -1,
					["text_text_format_p_time_format"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_CENTER",
					["text_visible"] = false,
					["text_text_format_p_time_mod_rate"] = true,
					["text_fontSize"] = 12,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_text_format_p_format"] = "timed",
				}, -- [5]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%p",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_n_format"] = "none",
					["anchorXOffset"] = 0,
					["text_text_format_p_time_precision"] = 1,
					["type"] = "subtext",
					["text_anchorXOffset"] = -2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						0.69019609689713, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["anchorYOffset"] = 0,
					["text_shadowYOffset"] = -1,
					["text_text_format_p_time_format"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_RIGHT",
					["text_visible"] = true,
					["text_text_format_p_time_mod_rate"] = true,
					["text_fontSize"] = 12,
					["text_text_format_p_time_dynamic_threshold"] = 3,
					["text_text_format_p_format"] = "timed",
				}, -- [6]
			},
			["gradientOrientation"] = "HORIZONTAL",
			["sparkRotationMode"] = "AUTO",
			["load"] = {
				["use_encounterid"] = true,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "1089, 641",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["uid"] = "YWcw5FLZk(C",
			["source"] = "import",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["icon"] = true,
			["width"] = 200,
			["frameStrata"] = 1,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["height"] = 20,
			["id"] = "Light Shield",
			["icon_side"] = "LEFT",
			["xOffset"] = 0,
			["sparkHeight"] = 30,
			["texture"] = "Solid",
			["zoom"] = 0.3,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["spark"] = false,
			["tocversion"] = 30402,
			["sparkHidden"] = "NEVER",
			["version"] = 18,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["authorOptions"] = {
			},
			["config"] = {
			},
			["inverse"] = false,
			["enableGradient"] = false,
			["orientation"] = "HORIZONTAL",
			["displayIcon"] = 135940,
			["information"] = {
			},
			["iconSource"] = 0,
		},
		["Champions - Focus Target Glow"] = {
			["outline"] = "OUTLINE",
			["iconSource"] = 0,
			["wagoID"] = "A5ytftEJV",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["shadowYOffset"] = -1,
			["anchorPoint"] = "CENTER",
			["frameStrata"] = 1,
			["cooldownSwipe"] = true,
			["displayText_format_p_time_format"] = 0,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/TemsToGC/18",
			["actions"] = {
				["start"] = {
					["glow_color"] = {
						0.67843137254902, -- [1]
						0.16470588235294, -- [2]
						0.082352941176471, -- [3]
						1, -- [4]
					},
					["glow_thickness"] = 4,
					["glow_action"] = "show",
					["glow_frequency"] = 0.2,
					["glow_lines"] = 8,
					["glow_length"] = 15,
					["do_glow"] = true,
					["use_glow_color"] = true,
					["glow_type"] = "Pixel",
					["glow_frame_type"] = "UNITFRAME",
				},
				["finish"] = {
					["hide_all_glows"] = true,
				},
				["init"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "16063",
						["spellId"] = "29685",
						["auranames"] = {
							"62614", -- [1]
							"61094", -- [2]
							"67540", -- [3]
						},
						["use_genericShowOn"] = true,
						["destUnit"] = "player",
						["group_count"] = "0",
						["group_countOperator"] = ">",
						["showClones"] = true,
						["use_health"] = true,
						["custom_type"] = "status",
						["event"] = "Combat Log",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["use_name"] = false,
						["use_spellId"] = true,
						["name"] = "Obsidian Eradicator",
						["check"] = "update",
						["use_destUnit"] = true,
						["use_track"] = true,
						["spellName"] = 871,
						["sourceNpcId"] = "15932",
						["use_alwaystrue"] = true,
						["useGroup_count"] = false,
						["stacksOperator"] = ">",
						["use_sourceNpcId"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["stacks"] = "4",
						["powertype"] = 0,
						["spellIds"] = {
						},
						["duration"] = "20",
						["use_npcId"] = true,
						["names"] = {
						},
						["use_powertype"] = true,
						["debuffType"] = "HARMFUL",
						["type"] = "aura2",
						["use_sourceName"] = false,
						["unevent"] = "timed",
						["auraspellids"] = {
						},
						["useStacks"] = false,
						["useName"] = true,
						["useExactSpellId"] = false,
						["unit"] = "raid",
						["realSpellName"] = "Shield Wall",
						["use_spellName"] = false,
						["health"] = "0",
						["health_operator"] = ">",
						["subeventPrefix"] = "SPELL",
						["use_eventtype"] = true,
						["useAffected"] = false,
						["subeventSuffix"] = "_CAST_SUCCESS",
					},
					["untrigger"] = {
						["unit"] = "target",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["displayText_format_p_time_mod_rate"] = true,
			["internalVersion"] = 66,
			["keepAspectRatio"] = false,
			["wordWrap"] = "WordWrap",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayText"] = "",
			["yOffset"] = 0,
			["desaturate"] = false,
			["parent"] = "Tems ToGC - Glow [DO NOT MOVE]",
			["font"] = "Accidental Presidency",
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 64,
			["cooldownEdge"] = true,
			["load"] = {
				["use_encounterid"] = true,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "637, 1086",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["icon"] = true,
			["displayText_format_p_format"] = "timed",
			["fontSize"] = 18,
			["source"] = "import",
			["displayText_format_p_time_legacy_floor"] = false,
			["shadowXOffset"] = 1,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["preset"] = "spiralandpulse",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["displayText_format_p_time_dynamic_threshold"] = 60,
			["auto"] = false,
			["regionType"] = "text",
			["automaticWidth"] = "Auto",
			["selfPoint"] = "CENTER",
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["fixedWidth"] = 200,
			["xOffset"] = 0,
			["displayText_format_p_time_precision"] = 1,
			["zoom"] = 0,
			["config"] = {
			},
			["cooldownTextDisabled"] = false,
			["semver"] = "2.2.2",
			["tocversion"] = 30402,
			["id"] = "Champions - Focus Target Glow",
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["width"] = 64,
			["justify"] = "LEFT",
			["uid"] = "wWi16LiPzjT",
			["inverse"] = false,
			["useCooldownModRate"] = true,
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["displayIcon"] = 136160,
		},
		["Beasts - Massive Crash"] = {
			["sparkWidth"] = 10,
			["iconSource"] = 0,
			["wagoID"] = "A5ytftEJV",
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["url"] = "https://wago.io/TemsToGC/18",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["triggers"] = {
				{
					["trigger"] = {
						["messageType"] = "CHAT_MSG_RAID_BOSS_EMOTE",
						["type"] = "combatlog",
						["spellId"] = "66683",
						["subeventSuffix"] = "_CAST_SUCCESS",
						["unit"] = "player",
						["duration"] = "55",
						["message_operator"] = "find('%s')",
						["names"] = {
						},
						["message"] = "glares at",
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["event"] = "Combat Log",
						["use_message"] = true,
						["subeventPrefix"] = "SPELL",
						["use_messageType"] = false,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["spellId"] = "66330",
						["duration"] = "45",
						["message_operator"] = "find('%s')",
						["subeventPrefix"] = "UNIT_DIED",
						["debuffType"] = "HELPFUL",
						["type"] = "event",
						["use_destNpcId"] = true,
						["subeventSuffix"] = "",
						["event"] = "Chat Message",
						["message"] = "The air itself freezes with the introduction of our next combatant, Icehowl! Kill or be killed, champions",
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["unit"] = "player",
						["use_message"] = true,
						["use_destUnit"] = false,
						["destNpcId"] = "34796",
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["messageType"] = "CHAT_MSG_RAID_BOSS_EMOTE",
						["type"] = "combatlog",
						["spellId"] = "66683",
						["subeventSuffix"] = "_CAST_SUCCESS",
						["unit"] = "player",
						["duration"] = "99",
						["message_operator"] = "find('%s')",
						["names"] = {
						},
						["message"] = "glares at",
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["event"] = "Combat Log",
						["use_message"] = true,
						["subeventPrefix"] = "SPELL",
						["use_messageType"] = false,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [3]
				{
					["trigger"] = {
						["spellId"] = "66330",
						["duration"] = "99",
						["message_operator"] = "find('%s')",
						["subeventPrefix"] = "UNIT_DIED",
						["debuffType"] = "HELPFUL",
						["type"] = "event",
						["use_destNpcId"] = true,
						["subeventSuffix"] = "",
						["event"] = "Chat Message",
						["message"] = "The air itself freezes with the introduction of our next combatant, Icehowl! Kill or be killed, champions",
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["unit"] = "player",
						["use_message"] = true,
						["use_destUnit"] = false,
						["destNpcId"] = "34796",
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [4]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 66,
			["zoom"] = 0.3,
			["selfPoint"] = "CENTER",
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
			["barColor"] = {
				0.61568629741669, -- [1]
				0.40000003576279, -- [2]
				0.75686281919479, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["barColor2"] = {
				1, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 0,
							}, -- [1]
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 0,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = {
								0.61568629741669, -- [1]
								0.40000003576279, -- [2]
								0.75686281919479, -- [3]
								1, -- [4]
							},
							["property"] = "backgroundColor",
						}, -- [1]
						{
							["property"] = "sub.4.text_visible",
						}, -- [2]
						{
							["property"] = "sub.6.text_visible",
						}, -- [3]
						{
							["value"] = true,
							["property"] = "sub.5.text_visible",
						}, -- [4]
					},
				}, -- [1]
			},
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["type"] = "subforeground",
				}, -- [2]
				{
					["border_size"] = 1,
					["border_anchor"] = "bar",
					["type"] = "subborder",
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_offset"] = 0,
				}, -- [3]
				{
					["text_text_format_n_format"] = "none",
					["text_text"] = "Next Crash",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_LEFT",
					["text_shadowXOffset"] = 1,
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [4]
				{
					["text_text_format_n_format"] = "none",
					["text_text"] = "Crash Soon",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_LEFT",
					["text_shadowXOffset"] = 1,
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_visible"] = false,
				}, -- [5]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%p",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_time_format"] = 0,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["type"] = "subtext",
					["text_anchorXOffset"] = -2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_text_format_p_time_precision"] = 1,
					["text_shadowYOffset"] = -1,
					["anchorYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_RIGHT",
					["text_visible"] = true,
					["text_text_format_p_format"] = "timed",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_mod_rate"] = true,
				}, -- [6]
			},
			["height"] = 20,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["load"] = {
				["use_encounterid"] = true,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "629, 1088",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["parent"] = "Tems ToGC - Timers",
			["source"] = "import",
			["gradientOrientation"] = "HORIZONTAL",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["enableGradient"] = false,
			["anchorFrameType"] = "SCREEN",
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["alpha"] = 1,
			["config"] = {
			},
			["icon_side"] = "LEFT",
			["id"] = "Beasts - Massive Crash",
			["sparkHeight"] = 30,
			["texture"] = "Melli",
			["spark"] = false,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["semver"] = "2.2.2",
			["tocversion"] = 30402,
			["sparkHidden"] = "NEVER",
			["icon"] = true,
			["frameStrata"] = 1,
			["width"] = 200,
			["sparkOffsetX"] = 0,
			["uid"] = "1chHMYI0IA7",
			["inverse"] = false,
			["sparkOffsetY"] = 0,
			["orientation"] = "HORIZONTAL",
			["displayIcon"] = 132154,
			["information"] = {
			},
			["authorOptions"] = {
			},
		},
		["Beasts - Arctic Breath"] = {
			["iconSource"] = 0,
			["wagoID"] = "A5ytftEJV",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "https://wago.io/TemsToGC/18",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"66689", -- [1]
						},
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["useName"] = true,
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 66,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_size"] = 1,
					["type"] = "subborder",
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_offset"] = 1,
				}, -- [2]
				{
					["glowFrequency"] = 0.2,
					["type"] = "subglow",
					["glowXOffset"] = 0,
					["glowType"] = "Pixel",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowDuration"] = 1,
					["useGlowColor"] = false,
					["glowScale"] = 1,
					["glowThickness"] = 1.5,
					["glow"] = true,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_time_mod_rate"] = true,
					["type"] = "subtext",
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_text_format_p_time_format"] = 0,
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "BOTTOM",
					["anchorYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_precision"] = 1,
				}, -- [4]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "STUNNED",
					["text_text_format_p_time_mod_rate"] = true,
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_format"] = "timed",
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["type"] = "subtext",
					["text_text_format_n_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["anchorYOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "TOP",
					["text_visible"] = true,
					["text_text_format_p_time_format"] = 0,
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_precision"] = 1,
				}, -- [5]
			},
			["height"] = 41,
			["load"] = {
				["use_encounterid"] = true,
				["encounterid"] = "629, 1088",
				["use_zoneIds"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["config"] = {
			},
			["cooldownEdge"] = false,
			["xOffset"] = 0,
			["regionType"] = "icon",
			["actions"] = {
				["start"] = {
					["message"] = "",
					["do_message"] = false,
					["message_type"] = "SAY",
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["cooldown"] = true,
			["conditions"] = {
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["zoom"] = 0.3,
			["anchorFrameType"] = "SCREEN",
			["cooldownTextDisabled"] = true,
			["semver"] = "2.2.2",
			["tocversion"] = 30402,
			["id"] = "Beasts - Arctic Breath",
			["useCooldownModRate"] = true,
			["frameStrata"] = 1,
			["width"] = 41,
			["alpha"] = 1,
			["uid"] = "H(ipn6mdWlY",
			["inverse"] = false,
			["parent"] = "Tems ToGC - Icons",
			["displayIcon"] = 135848,
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
		["Champions - Shadowstep"] = {
			["sparkWidth"] = 10,
			["iconSource"] = 0,
			["wagoID"] = "A5ytftEJV",
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["url"] = "https://wago.io/TemsToGC/18",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "combatlog",
						["spellId"] = "66178",
						["subeventSuffix"] = "_CAST_SUCCESS",
						["duration"] = "30",
						["event"] = "Combat Log",
						["use_sourceFlags2"] = true,
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["sourceFlags2"] = "Hostile",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_type"] = "event",
						["duration"] = "8",
						["event"] = "Health",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["spellIds"] = {
						},
						["custom"] = "function(event)\n    return true\nend",
						["names"] = {
						},
						["events"] = "ENCOUNTER_START",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "combatlog",
						["spellId"] = "66178",
						["subeventSuffix"] = "_CAST_SUCCESS",
						["duration"] = "99",
						["event"] = "Combat Log",
						["use_sourceFlags2"] = true,
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["sourceFlags2"] = "Hostile",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [3]
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_type"] = "event",
						["duration"] = "99",
						["event"] = "Health",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["spellIds"] = {
						},
						["custom"] = "function(event)\n    return true\nend",
						["names"] = {
						},
						["events"] = "ENCOUNTER_START",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [4]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 66,
			["zoom"] = 0.3,
			["selfPoint"] = "CENTER",
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
			["barColor"] = {
				0.80392163991928, -- [1]
				0.27843138575554, -- [2]
				0.34117648005486, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["barColor2"] = {
				1, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 0,
							}, -- [1]
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 0,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = {
								0.80392163991928, -- [1]
								0.27843138575554, -- [2]
								0.34117648005486, -- [3]
								1, -- [4]
							},
							["property"] = "backgroundColor",
						}, -- [1]
						{
							["property"] = "sub.4.text_visible",
						}, -- [2]
						{
							["property"] = "sub.6.text_visible",
						}, -- [3]
						{
							["value"] = true,
							["property"] = "sub.5.text_visible",
						}, -- [4]
					},
				}, -- [1]
			},
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["type"] = "subforeground",
				}, -- [2]
				{
					["border_size"] = 1,
					["border_anchor"] = "bar",
					["type"] = "subborder",
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_offset"] = 0,
				}, -- [3]
				{
					["text_text_format_n_format"] = "none",
					["text_text"] = "Next Shadowstep",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_LEFT",
					["text_shadowXOffset"] = 1,
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [4]
				{
					["text_text_format_n_format"] = "none",
					["text_text"] = "Shadowstep Soon",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_LEFT",
					["text_shadowXOffset"] = 1,
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_visible"] = false,
				}, -- [5]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%p",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_time_format"] = 0,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["type"] = "subtext",
					["text_anchorXOffset"] = -2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_text_format_p_time_precision"] = 1,
					["text_shadowYOffset"] = -1,
					["anchorYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_RIGHT",
					["text_visible"] = true,
					["text_text_format_p_format"] = "timed",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_mod_rate"] = true,
				}, -- [6]
			},
			["height"] = 20,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["load"] = {
				["use_encounterid"] = true,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "637, 1086",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["parent"] = "Tems ToGC - Timers",
			["source"] = "import",
			["gradientOrientation"] = "HORIZONTAL",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["enableGradient"] = false,
			["anchorFrameType"] = "SCREEN",
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["alpha"] = 1,
			["config"] = {
			},
			["icon_side"] = "LEFT",
			["id"] = "Champions - Shadowstep",
			["sparkHeight"] = 30,
			["texture"] = "Melli",
			["spark"] = false,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["semver"] = "2.2.2",
			["tocversion"] = 30402,
			["sparkHidden"] = "NEVER",
			["icon"] = true,
			["frameStrata"] = 1,
			["width"] = 200,
			["sparkOffsetX"] = 0,
			["uid"] = "FJ2UiUpj(fJ",
			["inverse"] = false,
			["sparkOffsetY"] = 0,
			["orientation"] = "HORIZONTAL",
			["displayIcon"] = 132303,
			["information"] = {
			},
			["authorOptions"] = {
			},
		},
		["Beasts - Charge Texture"] = {
			["user_y"] = 0,
			["user_x"] = 0,
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["foregroundColor"] = {
				0.76470595598221, -- [1]
				0.27450981736183, -- [2]
				0.21176472306252, -- [3]
				1, -- [4]
			},
			["desaturateBackground"] = false,
			["startAngle"] = 0,
			["sameTexture"] = true,
			["url"] = "https://wago.io/TemsToGC/18",
			["actions"] = {
				["start"] = {
					["message"] = "{rt7} Charge on Me! {rt7}",
					["do_sound"] = true,
					["message_type"] = "SAY",
					["message_format_unitName_format"] = "none",
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\sonar.ogg",
					["do_message"] = true,
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "\n\n",
					["do_custom"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["use_amount"] = true,
						["spellId"] = "66881",
						["duration"] = "7",
						["message_operator"] = "find('%s')",
						["names"] = {
						},
						["destUnit"] = "player",
						["amount"] = "0",
						["debuffType"] = "HELPFUL",
						["type"] = "custom",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_DAMAGE",
						["unit"] = "player",
						["events"] = "CHAT_MSG_RAID_BOSS_EMOTE",
						["event"] = "Chat Message",
						["amount_operator"] = "~=",
						["message"] = "glares at",
						["use_spellId"] = true,
						["custom"] = "function(event, ...)\n    if event == \"CHAT_MSG_RAID_BOSS_EMOTE\" then\n        local text, bossName,_,_, name =  ...\n        if bossName == \"Icehowl\" then\n            if name == WeakAuras.me then\n                return true\n            end\n        end\n    end\nend",
						["spellIds"] = {
						},
						["use_message"] = true,
						["use_destUnit"] = true,
						["custom_type"] = "event",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["endAngle"] = 360,
			["internalVersion"] = 66,
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
			["desaturateForeground"] = false,
			["authorOptions"] = {
			},
			["crop_x"] = 0.41,
			["rotation"] = 0,
			["font"] = "Friz Quadrata TT",
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "CHARGE ON YOU",
					["text_text_format_p_time_mod_rate"] = true,
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["anchorYOffset"] = 0,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["type"] = "subtext",
					["text_text_format_p_time_precision"] = 1,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_shadowYOffset"] = -1,
					["text_visible"] = true,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_time_format"] = 0,
					["text_text_format_n_format"] = "none",
					["text_fontSize"] = 14,
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
				}, -- [2]
			},
			["height"] = 140,
			["parent"] = "Tems ToGC - Central Textures",
			["load"] = {
				["use_encounterid"] = true,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "629, 1088",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["wagoID"] = "A5ytftEJV",
			["useAdjustededMax"] = false,
			["fontSize"] = 12,
			["source"] = "import",
			["foregroundTexture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Ring_20px.tga",
			["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
			["config"] = {
			},
			["mirror"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "progresstexture",
			["backgroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura3",
			["blendMode"] = "BLEND",
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["slantMode"] = "INSIDE",
			["selfPoint"] = "CENTER",
			["tocversion"] = 30402,
			["anchorPoint"] = "CENTER",
			["semver"] = "2.2.2",
			["compress"] = false,
			["id"] = "Beasts - Charge Texture",
			["backgroundColor"] = {
				0.50196081399918, -- [1]
				0.50196081399918, -- [2]
				0.50196081399918, -- [3]
				0, -- [4]
			},
			["frameStrata"] = 1,
			["width"] = 140,
			["auraRotation"] = 0,
			["uid"] = "bMfydYe51h8",
			["inverse"] = false,
			["crop_y"] = 0.41,
			["orientation"] = "ANTICLOCKWISE",
			["conditions"] = {
			},
			["information"] = {
			},
			["backgroundOffset"] = 2,
		},
		["Beasts - Rising Anger Timer"] = {
			["sparkWidth"] = 10,
			["iconSource"] = 0,
			["wagoID"] = "A5ytftEJV",
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["url"] = "https://wago.io/TemsToGC/18",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "1604",
						["auranames"] = {
							"66636", -- [1]
						},
						["duration"] = "4",
						["names"] = {
						},
						["destUnit"] = "player",
						["group_count"] = "0",
						["debuffType"] = "HELPFUL",
						["useName"] = true,
						["subeventSuffix"] = "_AURA_APPLIED",
						["event"] = "Combat Log",
						["group_countOperator"] = ">",
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["type"] = "aura2",
						["unit"] = "nameplate",
						["use_destUnit"] = true,
						["useGroup_count"] = true,
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 66,
			["zoom"] = 0.3,
			["selfPoint"] = "CENTER",
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
			["barColor"] = {
				0.75686281919479, -- [1]
				0.258823543787, -- [2]
				0.27450981736183, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["barColor2"] = {
				1, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["type"] = "subforeground",
				}, -- [2]
				{
					["border_size"] = 1,
					["border_anchor"] = "bar",
					["type"] = "subborder",
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_offset"] = 0,
				}, -- [3]
				{
					["text_shadowXOffset"] = 1,
					["text_text_format_s_format"] = "none",
					["text_text"] = "[%s] Rising Anger",
					["text_text_format_1.unitName_color"] = "class",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_unitName_format"] = "none",
					["text_text_format_1.unitName_abbreviate_max"] = 8,
					["type"] = "subtext",
					["text_anchorXOffset"] = 2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_text_format_1.unitName_format"] = "Unit",
					["text_shadowYOffset"] = -1,
					["text_text_format_1.unitName_realm_name"] = "never",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "INNER_LEFT",
					["text_text_format_n_format"] = "none",
					["text_fontType"] = "None",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_text_format_1.unitName_abbreviate"] = true,
				}, -- [4]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%p",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_time_format"] = 0,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["type"] = "subtext",
					["text_anchorXOffset"] = -2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_text_format_p_time_precision"] = 1,
					["text_shadowYOffset"] = -1,
					["anchorYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_RIGHT",
					["text_visible"] = true,
					["text_text_format_p_format"] = "timed",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_mod_rate"] = true,
				}, -- [5]
			},
			["height"] = 20,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["load"] = {
				["use_encounterid"] = true,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "629, 1088",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["parent"] = "Tems ToGC - Timers",
			["source"] = "import",
			["gradientOrientation"] = "HORIZONTAL",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["enableGradient"] = false,
			["anchorFrameType"] = "SCREEN",
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["alpha"] = 1,
			["config"] = {
			},
			["icon_side"] = "LEFT",
			["id"] = "Beasts - Rising Anger Timer",
			["sparkHeight"] = 30,
			["texture"] = "Melli",
			["spark"] = false,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["semver"] = "2.2.2",
			["tocversion"] = 30402,
			["sparkHidden"] = "NEVER",
			["icon"] = true,
			["frameStrata"] = 1,
			["width"] = 200,
			["sparkOffsetX"] = 0,
			["uid"] = "Ko9i1l1jSFV",
			["inverse"] = false,
			["sparkOffsetY"] = 0,
			["orientation"] = "HORIZONTAL",
			["displayIcon"] = 136088,
			["information"] = {
			},
			["authorOptions"] = {
			},
		},
		["Gear Score"] = {
			["outline"] = "OUTLINE",
			["wagoID"] = "9l-mHuVk3",
			["xOffset"] = 25,
			["displayText"] = "%c",
			["customText"] = "function()     \n    local str = \"\";\n    str =  \"GearScore: \"..aura_env.MyGearScore\n    --print (aura_env.MyGearScore)\n    return str         \n    \nend\n\n\n\n\n",
			["shadowYOffset"] = -1,
			["anchorPoint"] = "BOTTOMLEFT",
			["customTextUpdate"] = "event",
			["url"] = "",
			["actions"] = {
				["start"] = {
					["glow_lines"] = 8,
					["glow_action"] = "show",
					["glow_frame_type"] = "FRAMESELECTOR",
					["glow_frequency"] = 0.5,
					["custom"] = "\n\n",
					["glow_border"] = true,
					["glow_frame"] = "BT4Button1",
					["use_glow_color"] = true,
					["glow_type"] = "Pixel",
					["do_custom"] = false,
					["do_glow"] = false,
				},
				["init"] = {
					["custom"] = "aura_env.MyGearScore = \"\"\n\naura_env.GS_ItemTypes = {\n    [\"INVTYPE_RELIC\"] = { [\"SlotMOD\"] = 0.3164, [\"ItemSlot\"] = 18, [\"Enchantable\"] = false},\n    [\"INVTYPE_TRINKET\"] = { [\"SlotMOD\"] = 0.5625, [\"ItemSlot\"] = 33, [\"Enchantable\"] = false },\n    [\"INVTYPE_2HWEAPON\"] = { [\"SlotMOD\"] = 2.000, [\"ItemSlot\"] = 16, [\"Enchantable\"] = true },\n    [\"INVTYPE_WEAPONMAINHAND\"] = { [\"SlotMOD\"] = 1.0000, [\"ItemSlot\"] = 16, [\"Enchantable\"] = true },\n    [\"INVTYPE_WEAPONOFFHAND\"] = { [\"SlotMOD\"] = 1.0000, [\"ItemSlot\"] = 17, [\"Enchantable\"] = true },\n    [\"INVTYPE_RANGED\"] = { [\"SlotMOD\"] = 0.3164, [\"ItemSlot\"] = 18, [\"Enchantable\"] = true },\n    [\"INVTYPE_THROWN\"] = { [\"SlotMOD\"] = 0.3164, [\"ItemSlot\"] = 18, [\"Enchantable\"] = false },\n    [\"INVTYPE_RANGEDRIGHT\"] = { [\"SlotMOD\"] = 0.3164, [\"ItemSlot\"] = 18, [\"Enchantable\"] = false },\n    [\"INVTYPE_SHIELD\"] = { [\"SlotMOD\"] = 1.0000, [\"ItemSlot\"] = 17, [\"Enchantable\"] = true },\n    [\"INVTYPE_WEAPON\"] = { [\"SlotMOD\"] = 1.0000, [\"ItemSlot\"] = 36, [\"Enchantable\"] = true },\n    [\"INVTYPE_HOLDABLE\"] = { [\"SlotMOD\"] = 1.0000, [\"ItemSlot\"] = 17, [\"Enchantable\"] = false },\n    [\"INVTYPE_HEAD\"] = { [\"SlotMOD\"] = 1.0000, [\"ItemSlot\"] = 1, [\"Enchantable\"] = true },\n    [\"INVTYPE_NECK\"] = { [\"SlotMOD\"] = 0.5625, [\"ItemSlot\"] = 2, [\"Enchantable\"] = false },\n    [\"INVTYPE_SHOULDER\"] = { [\"SlotMOD\"] = 0.7500, [\"ItemSlot\"] = 3, [\"Enchantable\"] = true },\n    [\"INVTYPE_CHEST\"] = { [\"SlotMOD\"] = 1.0000, [\"ItemSlot\"] = 5, [\"Enchantable\"] = true },\n    [\"INVTYPE_ROBE\"] = { [\"SlotMOD\"] = 1.0000, [\"ItemSlot\"] = 5, [\"Enchantable\"] = true },\n    [\"INVTYPE_WAIST\"] = { [\"SlotMOD\"] = 0.7500, [\"ItemSlot\"] = 6, [\"Enchantable\"] = false },\n    [\"INVTYPE_LEGS\"] = { [\"SlotMOD\"] = 1.0000, [\"ItemSlot\"] = 7, [\"Enchantable\"] = true },\n    [\"INVTYPE_FEET\"] = { [\"SlotMOD\"] = 0.75, [\"ItemSlot\"] = 8, [\"Enchantable\"] = true },\n    [\"INVTYPE_WRIST\"] = { [\"SlotMOD\"] = 0.5625, [\"ItemSlot\"] = 9, [\"Enchantable\"] = true },\n    [\"INVTYPE_HAND\"] = { [\"SlotMOD\"] = 0.7500, [\"ItemSlot\"] = 10, [\"Enchantable\"] = true },\n    [\"INVTYPE_FINGER\"] = { [\"SlotMOD\"] = 0.5625, [\"ItemSlot\"] = 31, [\"Enchantable\"] = false },\n    [\"INVTYPE_CLOAK\"] = { [\"SlotMOD\"] = 0.5625, [\"ItemSlot\"] = 15, [\"Enchantable\"] = true },\n    \n    --Lol Shirt\n    [\"INVTYPE_BODY\"] = { [\"SlotMOD\"] = 0, [\"ItemSlot\"] = 4, [\"Enchantable\"] = false },\n}\n\n\naura_env.GS_DefaultSettings = {\n    [\"Player\"] = 1,\n    [\"Item\"] = 1,\n    [\"Show\"] = 1,\n    [\"Special\"] = 1,\n    [\"Compare\"] = -1,\n    [\"Level\"] = -1,\n    [\"Average\"] = -1,\n}\n\n\naura_env.GS_Special = {\n    [\"A\"] = \"Author of GearScore\",\n    [\"Stray\"] = { [\"Realm\"] = \"Everlook\", [\"Type\"] = \"A\" },\n}\n\n\naura_env.GS_Rarity = {\n    [0] = { Red = 0.55,    Green = 0.55, Blue = 0.55 },\n    [1] = {    Red = 1.00,    Green = 1.00, Blue = 1.00 },\n    [2] = {    Red = 0.12,    Green = 1.00, Blue = 0.00 },\n    [3] = {    Red = 0.00,    Green = 0.50, Blue = 1.00 },\n    [4] = {    Red = 0.69, Green = 0.28, Blue = 0.97 },\n    [5] = { Red = 0.94,    Green = 0.09, Blue = 0.00 },\n    [6] = {    Red = 1.00,    Green = 0.00, Blue = 0.00 },\n    [7] = {    Red = 0.90,    Green = 0.80, Blue = 0.50 },\n}\n\naura_env.GS_Formula = {\n    [\"A\"] = {\n        [4] = { [\"A\"] = 91.4500, [\"B\"] = 0.6500 },\n        [3] = { [\"A\"] = 81.3750, [\"B\"] = 0.8125 },\n        [2] = { [\"A\"] = 73.0000, [\"B\"] = 1.0000 }\n    },\n    [\"B\"] = {\n        [4] = { [\"A\"] = 26.0000, [\"B\"] = 1.2000 },\n        [3] = { [\"A\"] = 0.7500, [\"B\"] = 1.8000 },\n        [2] = { [\"A\"] = 8.0000, [\"B\"] = 2.0000 },\n        [1] = { [\"A\"] = 0.0000, [\"B\"] = 2.2500 }\n    }\n}\n\naura_env.GS_Quality = {\n    [6000] = {\n        [\"Red\"] = { [\"A\"] = 0.94, [\"B\"] = 5000, [\"C\"] = 0.00006, [\"D\"] = 1 },\n        [\"Green\"] = { [\"A\"] = 0.47, [\"B\"] = 5000, [\"C\"] = 0.00047, [\"D\"] = -1 },\n        [\"Blue\"] = { [\"A\"] = 0, [\"B\"] = 0, [\"C\"] = 0, [\"D\"] = 0 },\n        [\"Description\"] = \"Legendary\"\n    },\n    [5000] = {\n        [\"Red\"] = { [\"A\"] = 0.69, [\"B\"] = 4000, [\"C\"] = 0.00025, [\"D\"] = 1 },\n        [\"Green\"] = { [\"A\"] = 0.28, [\"B\"] = 4000, [\"C\"] = 0.00019, [\"D\"] = 1 },\n        [\"Blue\"] = { [\"A\"] = 0.97, [\"B\"] = 4000, [\"C\"] = 0.00096, [\"D\"] = -1 },\n        [\"Description\"] = \"Epic\"\n    },\n    [4000] = {\n        [\"Red\"] = { [\"A\"] = 0.0, [\"B\"] = 3000, [\"C\"] = 0.00069, [\"D\"] = 1 },\n        [\"Green\"] = { [\"A\"] = 0.5, [\"B\"] = 3000, [\"C\"] = 0.00022, [\"D\"] = -1 },\n        [\"Blue\"] = { [\"A\"] = 1, [\"B\"] = 3000, [\"C\"] = 0.00003, [\"D\"] = -1 },\n        [\"Description\"] = \"Superior\"\n    },\n    [3000] = {\n        [\"Red\"] = { [\"A\"] = 0.12, [\"B\"] = 2000, [\"C\"] = 0.00012, [\"D\"] = -1 },\n        [\"Green\"] = { [\"A\"] = 1, [\"B\"] = 2000, [\"C\"] = 0.00050, [\"D\"] = -1 },\n        [\"Blue\"] = { [\"A\"] = 0, [\"B\"] = 2000, [\"C\"] = 0.001, [\"D\"] = 1 },\n        [\"Description\"] = \"Uncommon\"\n    },\n    [2000] = {\n        [\"Red\"] = { [\"A\"] = 1, [\"B\"] = 1000, [\"C\"] = 0.00088, [\"D\"] = -1 },\n        [\"Green\"] = { [\"A\"] = 1, [\"B\"] = 000, [\"C\"] = 0.00000, [\"D\"] = 0 },\n        [\"Blue\"] = { [\"A\"] = 1, [\"B\"] = 1000, [\"C\"] = 0.001, [\"D\"] = -1 },\n        [\"Description\"] = \"Common\"\n    },\n    [1000] = {\n        [\"Red\"] = { [\"A\"] = 0.55, [\"B\"] = 0, [\"C\"] = 0.00045, [\"D\"] = 1 },\n        [\"Green\"] = { [\"A\"] = 0.55, [\"B\"] = 0, [\"C\"] = 0.00045, [\"D\"] = 1 },\n        [\"Blue\"] = { [\"A\"] = 0.55, [\"B\"] = 0, [\"C\"] = 0.00045, [\"D\"] = 1 },\n        [\"Description\"] = \"Trash\"\n    },\n}\n\naura_env.GS_ShowSwitch = {[0] = 2,[1] = 3,[2] = 0,[3] = 1}\naura_env.GS_ItemSwitch = {[0] = 3,[1] = 2,[2] = 1,[3] = 0}\n\nif not ( aura_env.GS_Settings ) then    aura_env.GS_Settings = aura_env.GS_DefaultSettings end\n\nfunction aura_env.GearScore_GetScore(Name, Target)\n    if ( UnitIsPlayer(Target) ) then\n        local PlayerClass, PlayerEnglishClass = UnitClass(Target);\n        local TempScore, ItemLevel = nil;\n        local GearScore = 0; local PVPScore = 0; local ItemCount = 0; local LevelTotal = 0; local TitanGrip = 1; local TempEquip = {}; local TempPVPScore = 0\n        \n        if ( GetInventoryItemLink(Target, 16) ) and ( GetInventoryItemLink(Target, 17) ) then\n            local ItemName, ItemLink, ItemRarity, ItemLevel, ItemMinLevel, ItemType, ItemSubType, ItemStackCount, ItemEquipLoc, ItemTexture = GetItemInfo(GetInventoryItemLink(Target, 16))\n            if ( ItemEquipLoc == \"INVTYPE_2HWEAPON\" ) then TitanGrip = 0.5; end\n        end\n        \n        if ( GetInventoryItemLink(Target, 17) ) then\n            local ItemName, ItemLink, ItemRarity, ItemLevel, ItemMinLevel, ItemType, ItemSubType, ItemStackCount, ItemEquipLoc, ItemTexture = GetItemInfo(GetInventoryItemLink(Target, 17))\n            if ( ItemEquipLoc == \"INVTYPE_2HWEAPON\" ) then TitanGrip = 0.5; end\n            local TempScore, ItemLevel = aura_env.GearScore_GetItemScore(GetInventoryItemLink(Target, 17));\n            if ( PlayerEnglishClass == \"HUNTER\" ) then TempScore = TempScore * 0.3164; end\n            GearScore = GearScore + TempScore * TitanGrip;    ItemCount = ItemCount + 1; LevelTotal = LevelTotal + ItemLevel\n        end\n        \n        for i = 1, 18 do\n            if ( i ~= 4 ) and ( i ~= 17 ) then\n                local ItemLink = GetInventoryItemLink(Target, i)\n                local GS_ItemLinkTable = {}\n                if ( ItemLink ) then\n                    local ItemName, ItemLink, ItemRarity, ItemLevel, ItemMinLevel, ItemType, ItemSubType, ItemStackCount, ItemEquipLoc, ItemTexture = GetItemInfo(ItemLink)\n                    if ( aura_env.GS_Settings[\"Detail\"] == 1 ) then GS_ItemLinkTable[i] = ItemLink; end\n                    TempScore = aura_env.GearScore_GetItemScore(ItemLink);\n                    if ( i == 16 ) and ( PlayerEnglishClass == \"HUNTER\" ) then TempScore = TempScore * 0.3164; end\n                    if ( i == 18 ) and ( PlayerEnglishClass == \"HUNTER\" ) then TempScore = TempScore * 5.3224; end\n                    if ( i == 16 ) then TempScore = TempScore * TitanGrip; end\n                    GearScore = GearScore + TempScore;    ItemCount = ItemCount + 1; LevelTotal = LevelTotal + ItemLevel\n                end\n            end;\n        end\n        if ( GearScore <= 0 ) and ( Name ~= UnitName(\"player\") ) then\n            GearScore = 0; return 0,0;\n        elseif ( Name == UnitName(\"player\") ) and ( GearScore <= 0 ) then\n        GearScore = 0; end\n        if ( ItemCount == 0 ) then LevelTotal = 0; end            \n        return floor(GearScore), floor(LevelTotal/ItemCount)\n    end\nend\n\nfunction aura_env.GearScore_GetItemScore(ItemLink)\n    local QualityScale = 1; local PVPScale = 1; local PVPScore = 0; local GearScore = 0\n    if not ( ItemLink ) then return 0, 0; end\n    local ItemName, ItemLink, ItemRarity, ItemLevel, ItemMinLevel, ItemType, ItemSubType, ItemStackCount, ItemEquipLoc, ItemTexture = GetItemInfo(ItemLink); local Table = {}; local Scale = 1.8618\n    if ( ItemRarity == 5 ) then QualityScale = 1.3; ItemRarity = 4;\n    elseif ( ItemRarity == 1 ) then QualityScale = 0.005;  ItemRarity = 2\n    elseif ( ItemRarity == 0 ) then QualityScale = 0.005;  ItemRarity = 2 end\n    if ( ItemRarity == 7 ) then ItemRarity = 3; ItemLevel = 187.05; end\n    if ( aura_env.GS_ItemTypes[ItemEquipLoc] ) then\n        if ( ItemLevel > 120 ) then Table = aura_env.GS_Formula[\"A\"]; else Table = aura_env.GS_Formula[\"B\"]; end\n        if ( ItemRarity >= 2 ) and ( ItemRarity <= 4 )then\n            local Red, Green, Blue = aura_env.GearScore_GetQuality((floor(((ItemLevel - Table[ItemRarity].A) / Table[ItemRarity].B) * 1 * Scale)) * 11.25 )\n            GearScore = floor(((ItemLevel - Table[ItemRarity].A) / Table[ItemRarity].B) * aura_env.GS_ItemTypes[ItemEquipLoc].SlotMOD * Scale * QualityScale)\n            if ( ItemLevel == 187.05 ) then ItemLevel = 0; end\n            if ( GearScore < 0 ) then GearScore = 0;   Red, Green, Blue = aura_env.GearScore_GetQuality(1); end\n            if ( PVPScale == 0.75 ) then PVPScore = 1; GearScore = GearScore * 1; \n            else PVPScore = GearScore * 0; end\n            --print (\"checking enchants\")\n            local percent = (aura_env.GearScore_GetEnchantInfo(ItemLink, ItemEquipLoc) or 1)\n            --print(percent)\n            GearScore = floor(GearScore * percent )\n            PVPScore = floor(PVPScore)\n            return GearScore, ItemLevel, aura_env.GS_ItemTypes[ItemEquipLoc].ItemSlot, Red, Green, Blue, PVPScore, ItemEquipLoc, percent ;\n        end\n    end\n    return -1, ItemLevel, 50, 1, 1, 1, PVPScore, ItemEquipLoc, 1\nend\n\n\nfunction aura_env.GearScore_GetEnchantInfo(ItemLink, ItemEquipLoc)\n    local found, _, ItemSubString = string.find(ItemLink, \"^|c%x+|H(.+)|h%[.*%]\");\n    local ItemSubStringTable = {}\n    \n    for v in string.gmatch(ItemSubString, \"[^:]+\") do tinsert(ItemSubStringTable, v); end\n    ItemSubString = ItemSubStringTable[2]..\":\"..ItemSubStringTable[3], ItemSubStringTable[2]\n    local StringStart, StringEnd = string.find(ItemSubString, \":\") \n    ItemSubString = string.sub(ItemSubString, StringStart + 1)\n    if ( ItemSubString == \"0\" ) and ( aura_env.GS_ItemTypes[ItemEquipLoc][\"Enchantable\"] )then\n        --table.insert(MissingEnchantTable, ItemEquipLoc)\n        local percent = ( floor((-2 * ( aura_env.GS_ItemTypes[ItemEquipLoc][\"SlotMOD\"] )) * 100) / 100 );\n        --print(1 + (percent/100))\n        return(1 + (percent/100));\n    else\n        return 1;\n    end\n    \nend    \n\nfunction aura_env.GearScore_GetQuality(ItemScore)\n    if ( ItemScore > 5999 ) then ItemScore = 5999; end\n    local Red = 0.1; local Blue = 0.1; local Green = 0.1; local GS_QualityDescription = \"Legendary\"\n    if not ( ItemScore ) then return 0, 0, 0, \"Trash\"; end\n    for i = 0,6 do\n        if ( ItemScore > i * 1000 ) and ( ItemScore <= ( ( i + 1 ) * 1000 ) ) then\n            local Red = aura_env.GS_Quality[( i + 1 ) * 1000].Red[\"A\"] + (((ItemScore - aura_env.GS_Quality[( i + 1 ) * 1000].Red[\"B\"])*aura_env.GS_Quality[( i + 1 ) * 1000].Red[\"C\"])*aura_env.GS_Quality[( i + 1 ) * 1000].Red[\"D\"])\n            local Blue = aura_env.GS_Quality[( i + 1 ) * 1000].Green[\"A\"] + (((ItemScore - aura_env.GS_Quality[( i + 1 ) * 1000].Green[\"B\"])*aura_env.GS_Quality[( i + 1 ) * 1000].Green[\"C\"])*aura_env.GS_Quality[( i + 1 ) * 1000].Green[\"D\"])\n            local Green = aura_env.GS_Quality[( i + 1 ) * 1000].Blue[\"A\"] + (((ItemScore - aura_env.GS_Quality[( i + 1 ) * 1000].Blue[\"B\"])*aura_env.GS_Quality[( i + 1 ) * 1000].Blue[\"C\"])*aura_env.GS_Quality[( i + 1 ) * 1000].Blue[\"D\"])\n            --if not ( Red ) or not ( Blue ) or not ( Green ) then return 0.1, 0.1, 0.1, nil; end\n            return Red, Green, Blue, aura_env.GS_Quality[( i + 1 ) * 1000].Description\n        end\n    end\n    return 0.1, 0.1, 0.1\nend\n\n\n--aura_env.MyGearScore = aura_env.GearScore_GetScore(UnitName(\"player\"), \"player\");\n\n\nif not aura_env.region.strayscorehooked then\n    CharacterFrame:HookScript(\"OnShow\", function() \n            WeakAuras.ScanEvents(\"STRAYSCORE_CHARFRAME_SHOW\", true) \n    end)\n    \n    CharacterFrame:HookScript(\"OnHide\", function() \n            WeakAuras.ScanEvents(\"STRAYSCORE_CHARFRAME_HIDE\", true) \n    end)\n    \n    aura_env.region.strayscorehooked = true\nend",
					["do_custom"] = true,
				},
				["finish"] = {
					["glow_frame_type"] = "FRAMESELECTOR",
					["hide_all_glows"] = false,
					["custom"] = "\n\n",
					["glow_action"] = "hide",
					["glow_frame"] = "BT4Button1",
					["glow_type"] = "buttonOverlay",
					["do_custom"] = false,
					["do_glow"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["duration"] = "1",
						["genericShowOn"] = "showOnCooldown",
						["dynamicDuration"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["spellName"] = 0,
						["debuffType"] = "HELPFUL",
						["use_genericShowOn"] = true,
						["type"] = "custom",
						["custom_hide"] = "custom",
						["custom_type"] = "event",
						["custom"] = "function(event, e, x)\n    if (event == \"PLAYER_EQUIPMENT_CHANGED\" and CharacterFrame:IsShown()) or event == \"STRAYSCORE_CHARFRAME_SHOW\" then\n        aura_env.MyGearScore = aura_env.GearScore_GetScore(UnitName(\"player\"), \"player\");\n        return true\n    end\nend",
						["unit"] = "player",
						["event"] = "Health",
						["spellIds"] = {
						},
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["events"] = "STRAYSCORE_CHARFRAME_SHOW, STRAYSCORE_CHARFRAME_HIDE, PLAYER_EQUIPMENT_CHANGED",
						["subeventSuffix"] = "_CAST_START",
						["check"] = "event",
						["use_unit"] = true,
						["use_track"] = true,
						["customVariables"] = "\n\n",
					},
					["untrigger"] = {
						["custom"] = "",
					},
				}, -- [1]
				{
					["trigger"] = {
						["unit"] = "player",
						["type"] = "custom",
						["custom"] = "function()\n    return true\nend",
						["custom_type"] = "event",
						["custom_hide"] = "timed",
						["duration"] = "0.01",
						["events"] = "PLAYER_EQUIPMENT_CHANGED",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t)\n    return t[1]\nend",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 66,
			["selfPoint"] = "BOTTOMLEFT",
			["desc"] = "",
			["font"] = "Arial Narrow",
			["version"] = 9,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["load"] = {
				["zoneIds"] = "",
				["use_never"] = false,
				["use_encounter"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_combat"] = false,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 12,
			["source"] = "import",
			["displayText_format_n_format"] = "none",
			["shadowXOffset"] = 1,
			["customAnchor"] = "function()    \n    return \"BT4Button1\"\nend",
			["conditions"] = {
			},
			["anchorFrameFrame"] = "PaperDollFrame",
			["regionType"] = "text",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayText_format_aura_format"] = "none",
			["displayText_format_c_format"] = "none",
			["preferToUpdate"] = false,
			["yOffset"] = 89,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "slideright",
					["duration_type"] = "seconds",
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
			["semver"] = "1.3.0",
			["tocversion"] = 30401,
			["id"] = "Gear Score",
			["config"] = {
				["rank_option"] = "Rang",
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SELECTFRAME",
			["justify"] = "LEFT",
			["uid"] = "XzSuiJQ(H3X",
			["authorOptions"] = {
				{
					["type"] = "input",
					["useDesc"] = true,
					["width"] = 1,
					["name"] = "\"Rank\" in your client language:",
					["default"] = "rank",
					["desc"] = "Enter the translation for \"rank\" (DE: Rang, FR: Rang, RU: Уровень, ...)",
					["key"] = "rank_option",
					["length"] = 10,
					["multiline"] = false,
					["useLength"] = false,
				}, -- [1]
			},
			["wordWrap"] = "WordWrap",
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["fixedWidth"] = 327,
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["automaticWidth"] = "Auto",
		},
		["Beasts - Spray Cast"] = {
			["sparkWidth"] = 10,
			["iconSource"] = 0,
			["wagoID"] = "A5ytftEJV",
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["url"] = "https://wago.io/TemsToGC/18",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.51000002026558, -- [4]
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "combatlog",
						["spellId"] = "66902",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "1.1",
						["event"] = "Combat Log",
						["unit"] = "player",
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "combatlog",
						["spellId"] = "66901",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "1.1",
						["event"] = "Combat Log",
						["unit"] = "player",
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["message"] = "The air itself freezes with the introduction of our next combatant, Icehowl! Kill or be killed, champions",
						["type"] = "event",
						["unit"] = "player",
						["event"] = "Chat Message",
						["use_message"] = true,
						["duration"] = "224",
						["message_operator"] = "find('%s')",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [3]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(trigger)\n    return (trigger[1] or trigger[2]) and not trigger[3]\n    end",
				["activeTriggerMode"] = -10,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 66,
			["zoom"] = 0.3,
			["selfPoint"] = "CENTER",
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
			["barColor"] = {
				0.71764707565308, -- [1]
				0.04313725605607, -- [2]
				0.086274512112141, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["barColor2"] = {
				0.27058824896812, -- [1]
				0.42352944612503, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "show",
						["value"] = 1,
						["checks"] = {
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 1,
							}, -- [1]
							{
								["value"] = 1,
								["variable"] = "show",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = 132104,
							["property"] = "displayIcon",
						}, -- [1]
						{
							["property"] = "sub.4.text_visible",
						}, -- [2]
						{
							["value"] = true,
							["property"] = "sub.5.text_visible",
						}, -- [3]
						{
							["value"] = {
								0.35686275362968, -- [1]
								0.77647066116333, -- [2]
								0.3137255012989, -- [3]
								1, -- [4]
							},
							["property"] = "barColor",
						}, -- [4]
						{
							["value"] = {
								1, -- [1]
								0.98823535442352, -- [2]
								0.24313727021217, -- [3]
								1, -- [4]
							},
							["property"] = "barColor2",
						}, -- [5]
					},
				}, -- [1]
			},
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["type"] = "subforeground",
				}, -- [2]
				{
					["border_size"] = 1,
					["border_anchor"] = "bg",
					["type"] = "subborder",
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_offset"] = 1,
				}, -- [3]
				{
					["text_text_format_n_format"] = "none",
					["text_text"] = "Burning Spray",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_LEFT",
					["text_shadowXOffset"] = 1,
					["text_fontSize"] = 14,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [4]
				{
					["text_text_format_n_format"] = "none",
					["text_text"] = "Paralytic Spray",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_LEFT",
					["text_shadowXOffset"] = 1,
					["text_fontSize"] = 14,
					["anchorXOffset"] = 0,
					["text_visible"] = false,
				}, -- [5]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%p",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_time_format"] = 0,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["type"] = "subtext",
					["text_anchorXOffset"] = -2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_text_format_p_time_precision"] = 1,
					["text_shadowYOffset"] = -1,
					["anchorYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_RIGHT",
					["text_visible"] = true,
					["text_text_format_p_format"] = "timed",
					["text_fontSize"] = 14,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_mod_rate"] = true,
				}, -- [6]
			},
			["height"] = 22,
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Glass.mp3",
					["do_sound"] = true,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["load"] = {
				["use_encounterid"] = true,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "629, 1088",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["parent"] = "Tems ToGC - Casts",
			["source"] = "import",
			["gradientOrientation"] = "HORIZONTAL",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["enableGradient"] = true,
			["anchorFrameType"] = "SCREEN",
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["alpha"] = 1,
			["config"] = {
			},
			["icon_side"] = "LEFT",
			["id"] = "Beasts - Spray Cast",
			["sparkHeight"] = 30,
			["texture"] = "Clean",
			["spark"] = false,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["semver"] = "2.2.2",
			["tocversion"] = 30402,
			["sparkHidden"] = "NEVER",
			["icon"] = true,
			["frameStrata"] = 1,
			["width"] = 290,
			["sparkOffsetX"] = 0,
			["uid"] = "bWeyrurzVCj",
			["inverse"] = true,
			["sparkOffsetY"] = 0,
			["orientation"] = "HORIZONTAL",
			["displayIcon"] = 135815,
			["information"] = {
			},
			["authorOptions"] = {
			},
		},
		["Anubarak - Penetrating Cold Debuff"] = {
			["iconSource"] = 0,
			["wagoID"] = "A5ytftEJV",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "https://wago.io/TemsToGC/18",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"66013", -- [1]
						},
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["useName"] = true,
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "function(trigger)\n    return trigger[1]\nend",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 66,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_size"] = 1,
					["type"] = "subborder",
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_offset"] = 1,
				}, -- [2]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_time_mod_rate"] = true,
					["type"] = "subtext",
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_text_format_p_time_format"] = 0,
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "BOTTOM",
					["anchorYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_precision"] = 1,
				}, -- [3]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "BIG DOT",
					["text_text_format_p_time_mod_rate"] = true,
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_format"] = "timed",
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["type"] = "subtext",
					["text_text_format_n_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["anchorYOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "TOP",
					["text_visible"] = true,
					["text_text_format_p_time_format"] = 0,
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_precision"] = 1,
				}, -- [4]
			},
			["height"] = 41,
			["load"] = {
				["use_encounterid"] = true,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "645, 1085",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["config"] = {
			},
			["cooldownEdge"] = false,
			["xOffset"] = 0,
			["regionType"] = "icon",
			["actions"] = {
				["start"] = {
					["message"] = "",
					["do_message"] = false,
					["message_type"] = "SAY",
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["cooldown"] = true,
			["conditions"] = {
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["zoom"] = 0.3,
			["anchorFrameType"] = "SCREEN",
			["cooldownTextDisabled"] = true,
			["semver"] = "2.2.2",
			["tocversion"] = 30402,
			["id"] = "Anubarak - Penetrating Cold Debuff",
			["useCooldownModRate"] = true,
			["frameStrata"] = 1,
			["width"] = 41,
			["alpha"] = 1,
			["uid"] = "m(fo53jkXrz",
			["inverse"] = false,
			["parent"] = "Tems ToGC - Icons",
			["displayIcon"] = 135838,
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
		["Beasts - Pre Pot"] = {
			["outline"] = "None",
			["wagoID"] = "A5ytftEJV",
			["authorOptions"] = {
			},
			["displayText_format_p_time_dynamic_threshold"] = 10,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["displayText_format_p_time_format"] = 0,
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/TemsToGC/18",
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
						["messageType"] = "CHAT_MSG_MONSTER_YELL",
						["type"] = "event",
						["use_messageType"] = true,
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["duration"] = "5",
						["message_operator"] = "find('%s')",
						["names"] = {
						},
						["message"] = "Welcome, champions!",
						["event"] = "Chat Message",
						["spellIds"] = {
						},
						["use_delay"] = true,
						["use_message"] = true,
						["subeventPrefix"] = "SPELL",
						["delay"] = 31,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["messageType"] = "CHAT_MSG_MONSTER_YELL",
						["type"] = "event",
						["use_messageType"] = true,
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["duration"] = "5",
						["message_operator"] = "find('%s')",
						["names"] = {
						},
						["message"] = "Hailing from the deepest, darkest caverns of the Storm Peaks, Gormok the Impaler! Battle on, heroes",
						["event"] = "Chat Message",
						["spellIds"] = {
						},
						["use_delay"] = true,
						["use_message"] = true,
						["subeventPrefix"] = "SPELL",
						["delay"] = 4,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["displayText_format_p_time_mod_rate"] = true,
			["displayText_format_p_time_legacy_floor"] = false,
			["selfPoint"] = "BOTTOM",
			["font"] = "KMT-GothamXN_Ultra",
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["load"] = {
				["use_zoneIds"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "629, 1088",
				["use_encounterid"] = false,
				["zoneIds"] = "172",
				["class"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
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
			["wordWrap"] = "WordWrap",
			["automaticWidth"] = "Auto",
			["regionType"] = "text",
			["parent"] = "Tems ToGC - Casts",
			["fixedWidth"] = 200,
			["internalVersion"] = 66,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayText_format_p_time_precision"] = 1,
			["config"] = {
			},
			["xOffset"] = 0,
			["semver"] = "2.2.2",
			["justify"] = "LEFT",
			["tocversion"] = 30402,
			["id"] = "Beasts - Pre Pot",
			["shadowYOffset"] = -1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
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
			["uid"] = "GDFD0jTo5TV",
			["displayText"] = "Combat in %p",
			["displayText_format_p_format"] = "timed",
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 1,
								["op"] = "<",
								["value"] = "2",
								["variable"] = "expirationTime",
							}, -- [1]
							{
								["trigger"] = 2,
								["op"] = "<",
								["value"] = "2",
								["variable"] = "expirationTime",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = 20,
							["property"] = "fontSize",
						}, -- [1]
						{
							["value"] = {
								1, -- [1]
								0.62745100259781, -- [2]
								0.55686277151108, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [2]
					},
				}, -- [1]
			},
			["information"] = {
			},
			["preferToUpdate"] = false,
		},
		["Beasts - Fire Bomb"] = {
			["iconSource"] = 0,
			["wagoID"] = "A5ytftEJV",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "https://wago.io/TemsToGC/18",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["useName"] = true,
						["spellId"] = "1604",
						["auranames"] = {
							"66320", -- [1]
						},
						["names"] = {
						},
						["duration"] = "4",
						["event"] = "Combat Log",
						["unit"] = "player",
						["destUnit"] = "player",
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["subeventSuffix"] = "_AURA_APPLIED",
						["subeventPrefix"] = "SPELL",
						["use_destUnit"] = true,
						["type"] = "aura2",
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 66,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_size"] = 1,
					["type"] = "subborder",
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_offset"] = 1,
				}, -- [2]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_time_mod_rate"] = true,
					["type"] = "subtext",
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_text_format_p_time_format"] = 0,
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "BOTTOM",
					["anchorYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_precision"] = 1,
				}, -- [3]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "MOVE OUT",
					["text_text_format_p_time_mod_rate"] = true,
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_format"] = "timed",
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["type"] = "subtext",
					["text_text_format_n_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["anchorYOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "TOP",
					["text_visible"] = true,
					["text_text_format_p_time_format"] = 0,
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_precision"] = 1,
				}, -- [4]
			},
			["height"] = 41,
			["load"] = {
				["use_encounterid"] = true,
				["encounterid"] = "629, 1088",
				["use_zoneIds"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["config"] = {
			},
			["cooldownEdge"] = false,
			["xOffset"] = 0,
			["regionType"] = "icon",
			["actions"] = {
				["start"] = {
					["message_type"] = "SAY",
					["message"] = "{rt2} Bomb on Me {rt2}",
					["do_message"] = true,
					["message_format_unitName_format"] = "none",
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["cooldown"] = true,
			["conditions"] = {
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["zoom"] = 0.3,
			["anchorFrameType"] = "SCREEN",
			["cooldownTextDisabled"] = true,
			["semver"] = "2.2.2",
			["tocversion"] = 30402,
			["id"] = "Beasts - Fire Bomb",
			["useCooldownModRate"] = true,
			["frameStrata"] = 1,
			["width"] = 41,
			["alpha"] = 1,
			["uid"] = "Dh9shw9OlOf",
			["inverse"] = false,
			["parent"] = "Tems ToGC - Icons",
			["displayIcon"] = 135789,
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
		["Anubarak - Leeching Swarm"] = {
			["sparkWidth"] = 10,
			["iconSource"] = -1,
			["wagoID"] = "A5ytftEJV",
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["url"] = "https://wago.io/TemsToGC/18",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.51000002026558, -- [4]
			},
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "66118",
						["useGroup_count"] = true,
						["duration"] = "2",
						["use_unit"] = true,
						["combineMode"] = "showHighest",
						["debuffType"] = "HARMFUL",
						["group_countOperator"] = "~=",
						["useAffected"] = true,
						["type"] = "combatlog",
						["ignoreDead"] = true,
						["subeventSuffix"] = "_CAST_START",
						["auranames"] = {
							"67574", -- [1]
						},
						["useName"] = true,
						["event"] = "Combat Log",
						["subeventPrefix"] = "SPELL",
						["ignoreDisconnected"] = false,
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["unit"] = "group",
						["group_count"] = "0",
						["use_exact_spellId"] = true,
						["fetchRaidMark"] = false,
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "function(trigger)\n    return trigger[1] or trigger[2]\nend",
				["activeTriggerMode"] = -10,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 66,
			["zoom"] = 0.3,
			["selfPoint"] = "CENTER",
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
			["barColor"] = {
				0.72156864404678, -- [1]
				1, -- [2]
				0.64313727617264, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["barColor2"] = {
				0.69803923368454, -- [1]
				0.54509806632996, -- [2]
				0.50588238239288, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["type"] = "subforeground",
				}, -- [2]
				{
					["border_size"] = 1,
					["border_anchor"] = "bg",
					["type"] = "subborder",
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_offset"] = 1,
				}, -- [3]
				{
					["text_text_format_1.unitName_realm_name"] = "never",
					["text_text"] = "Phase 3",
					["text_text_format_1.unitName_color"] = "class",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_1.unitName_abbreviate"] = true,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["type"] = "subtext",
					["text_anchorXOffset"] = 2,
					["text_text_format_1.spell_format"] = "none",
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_text_format_1.unitName_format"] = "Unit",
					["text_shadowYOffset"] = -1,
					["text_visible"] = true,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_LEFT",
					["text_text_format_1.unitName_abbreviate_max"] = 8,
					["text_text_format_n_format"] = "none",
					["text_fontSize"] = 14,
					["anchorXOffset"] = 0,
					["text_shadowXOffset"] = 1,
				}, -- [4]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%p",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_time_format"] = 0,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["type"] = "subtext",
					["text_anchorXOffset"] = -2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_text_format_p_time_precision"] = 1,
					["text_shadowYOffset"] = -1,
					["anchorYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_RIGHT",
					["text_visible"] = true,
					["text_text_format_p_format"] = "timed",
					["text_fontSize"] = 14,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_mod_rate"] = true,
				}, -- [5]
			},
			["height"] = 22,
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\sonar.ogg",
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["load"] = {
				["use_encounterid"] = true,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "645, 1085",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["parent"] = "Tems ToGC - Casts",
			["source"] = "import",
			["gradientOrientation"] = "HORIZONTAL",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["enableGradient"] = true,
			["anchorFrameType"] = "SCREEN",
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["alpha"] = 1,
			["config"] = {
			},
			["icon_side"] = "LEFT",
			["id"] = "Anubarak - Leeching Swarm",
			["sparkHeight"] = 30,
			["texture"] = "Clean",
			["spark"] = false,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["semver"] = "2.2.2",
			["tocversion"] = 30402,
			["sparkHidden"] = "NEVER",
			["icon"] = true,
			["frameStrata"] = 1,
			["width"] = 290,
			["sparkOffsetX"] = 0,
			["uid"] = "uVNV8vel63M",
			["inverse"] = true,
			["sparkOffsetY"] = 0,
			["orientation"] = "HORIZONTAL",
			["displayIcon"] = 136045,
			["information"] = {
			},
			["authorOptions"] = {
			},
		},
		["Jaraxxus - Burning Inferno"] = {
			["sparkWidth"] = 10,
			["iconSource"] = 0,
			["wagoID"] = "A5ytftEJV",
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["url"] = "https://wago.io/TemsToGC/18",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.51000002026558, -- [4]
			},
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "66242",
						["duration"] = "5",
						["genericShowOn"] = "showOnCooldown",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["type"] = "combatlog",
						["subeventSuffix"] = "_AURA_APPLIED",
						["unit"] = "nameplate",
						["use_genericShowOn"] = true,
						["event"] = "Combat Log",
						["use_spellId"] = true,
						["realSpellName"] = 0,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["spellName"] = 0,
						["use_exact_spellId"] = false,
						["names"] = {
						},
						["use_track"] = true,
						["use_unit"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 66,
			["zoom"] = 0.3,
			["selfPoint"] = "CENTER",
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
			["barColor"] = {
				0.80392163991928, -- [1]
				0.30196079611778, -- [2]
				0.21960785984993, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["barColor2"] = {
				0.79215693473816, -- [1]
				0.57647061347961, -- [2]
				0.26274511218071, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["type"] = "subforeground",
				}, -- [2]
				{
					["border_size"] = 1,
					["border_anchor"] = "bg",
					["type"] = "subborder",
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_offset"] = 1,
				}, -- [3]
				{
					["text_text_format_n_format"] = "none",
					["text_text"] = "USE RAID CDs",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_LEFT",
					["text_shadowXOffset"] = 1,
					["text_fontSize"] = 14,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [4]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%p",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_time_format"] = 0,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["type"] = "subtext",
					["text_anchorXOffset"] = -2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_text_format_p_time_precision"] = 1,
					["text_shadowYOffset"] = -1,
					["anchorYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_RIGHT",
					["text_visible"] = true,
					["text_text_format_p_format"] = "timed",
					["text_fontSize"] = 14,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_mod_rate"] = true,
				}, -- [5]
			},
			["height"] = 22,
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\sonar.ogg",
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["load"] = {
				["use_encounterid"] = true,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "633, 1087",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["parent"] = "Tems ToGC - Casts",
			["source"] = "import",
			["gradientOrientation"] = "HORIZONTAL",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["enableGradient"] = true,
			["anchorFrameType"] = "SCREEN",
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["alpha"] = 1,
			["config"] = {
			},
			["icon_side"] = "LEFT",
			["id"] = "Jaraxxus - Burning Inferno",
			["sparkHeight"] = 30,
			["texture"] = "Clean",
			["spark"] = false,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["semver"] = "2.2.2",
			["tocversion"] = 30402,
			["sparkHidden"] = "NEVER",
			["icon"] = true,
			["frameStrata"] = 1,
			["width"] = 290,
			["sparkOffsetX"] = 0,
			["uid"] = "NWxr6saX(Ko",
			["inverse"] = true,
			["sparkOffsetY"] = 0,
			["orientation"] = "HORIZONTAL",
			["displayIcon"] = 135818,
			["information"] = {
			},
			["authorOptions"] = {
			},
		},
		["Beasts - Rising Anger"] = {
			["iconSource"] = 0,
			["wagoID"] = "A5ytftEJV",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "https://wago.io/TemsToGC/18",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "1604",
						["auranames"] = {
							"66636", -- [1]
						},
						["duration"] = "4",
						["names"] = {
						},
						["destUnit"] = "player",
						["group_count"] = "0",
						["debuffType"] = "HELPFUL",
						["useName"] = true,
						["subeventSuffix"] = "_AURA_APPLIED",
						["event"] = "Combat Log",
						["group_countOperator"] = ">",
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["type"] = "aura2",
						["unit"] = "nameplate",
						["use_destUnit"] = true,
						["useGroup_count"] = true,
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 66,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_size"] = 1,
					["type"] = "subborder",
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_offset"] = 1,
				}, -- [2]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_time_mod_rate"] = true,
					["type"] = "subtext",
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_text_format_p_time_format"] = 0,
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "BOTTOM",
					["anchorYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_precision"] = 1,
				}, -- [3]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_text_format_p_time_mod_rate"] = true,
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_format"] = "timed",
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["type"] = "subtext",
					["text_text_format_n_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["anchorYOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "TOP",
					["text_visible"] = true,
					["text_text_format_p_time_format"] = 0,
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_precision"] = 1,
				}, -- [4]
			},
			["height"] = 41,
			["load"] = {
				["use_encounterid"] = true,
				["encounterid"] = "629, 1088",
				["use_zoneIds"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["config"] = {
			},
			["cooldownEdge"] = false,
			["xOffset"] = 0,
			["regionType"] = "icon",
			["actions"] = {
				["start"] = {
					["message_type"] = "SAY",
					["message"] = "",
					["do_message"] = false,
					["message_format_unitName_format"] = "none",
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["cooldown"] = true,
			["conditions"] = {
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["zoom"] = 0.3,
			["anchorFrameType"] = "SCREEN",
			["cooldownTextDisabled"] = true,
			["semver"] = "2.2.2",
			["tocversion"] = 30402,
			["id"] = "Beasts - Rising Anger",
			["useCooldownModRate"] = true,
			["frameStrata"] = 1,
			["width"] = 41,
			["alpha"] = 1,
			["uid"] = "W78p3fL9fTV",
			["inverse"] = false,
			["parent"] = "Tems ToGC - Icons",
			["displayIcon"] = 136088,
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
		["Onyxia"] = {
			["controlledChildren"] = {
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["wagoID"] = "A5ytftEJV",
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["url"] = "https://wago.io/TemsToGC/18",
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
						["names"] = {
						},
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["event"] = "Health",
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["internalVersion"] = 66,
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
			["version"] = 18,
			["subRegions"] = {
			},
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
			},
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["source"] = "import",
			["scale"] = 1,
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "group",
			["borderSize"] = 2,
			["borderOffset"] = 4,
			["semver"] = "2.2.2",
			["tocversion"] = 30402,
			["id"] = "Onyxia",
			["uid"] = "3DFOH56WpjQ",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["authorOptions"] = {
			},
			["borderInset"] = 1,
			["config"] = {
			},
			["parent"] = "Tems ToGC Pack",
			["conditions"] = {
			},
			["information"] = {
			},
			["selfPoint"] = "CENTER",
		},
		["Tems ToGC - Icons"] = {
			["grow"] = "RIGHT",
			["controlledChildren"] = {
				"Beasts - Fire Bomb", -- [1]
				"Beasts - Vassal Debuff", -- [2]
				"Beasts - Rising Anger", -- [3]
				"Beasts - Burning Bile Debuff", -- [4]
				"Beasts - Paralytic Toxin Debuff", -- [5]
				"Beasts - Paralysis", -- [6]
				"Beasts - Worm Enrage", -- [7]
				"Beasts - Arctic Breath", -- [8]
				"Jaraxxus - Incinerate Flesh Debuff", -- [9]
				"Jaraxxus - Legion Flames", -- [10]
				"Jaraxxus - Mistress' Kiss Debuff", -- [11]
				"Twins - Touch Debuff", -- [12]
				"Twins - Empowered Debuff", -- [13]
				"Twins - Powering Up Debuff", -- [14]
				"Twins - Twin Spike Debuff", -- [15]
				"Twins - Surge of Speed Buff", -- [16]
				"Anubarak - Freezing Slash Debuff", -- [17]
				"Anubarak - Penetrating Cold Debuff", -- [18]
				"Anubarak - Acid Mandibles Debuff", -- [19]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["wagoID"] = "A5ytftEJV",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["groupIcon"] = "132769",
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["rowSpace"] = 1,
			["url"] = "https://wago.io/TemsToGC/18",
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
						["names"] = {
						},
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["event"] = "Health",
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["columnSpace"] = 1,
			["internalVersion"] = 66,
			["selfPoint"] = "LEFT",
			["align"] = "CENTER",
			["source"] = "import",
			["frameStrata"] = 1,
			["space"] = 5,
			["rotation"] = 0,
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
			["version"] = 18,
			["subRegions"] = {
			},
			["stagger"] = 0,
			["useLimit"] = false,
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
			},
			["yOffset"] = 15,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["radius"] = 200,
			["animate"] = true,
			["uid"] = "YOxH0QrftS0",
			["scale"] = 1,
			["centerType"] = "LR",
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "dynamicgroup",
			["borderSize"] = 2,
			["limit"] = 5,
			["gridType"] = "RD",
			["fullCircle"] = true,
			["constantFactor"] = "RADIUS",
			["sort"] = "none",
			["borderOffset"] = 4,
			["semver"] = "2.2.2",
			["tocversion"] = 30402,
			["id"] = "Tems ToGC - Icons",
			["borderInset"] = 1,
			["gridWidth"] = 5,
			["anchorFrameType"] = "SCREEN",
			["arcLength"] = 360,
			["config"] = {
			},
			["xOffset"] = 196,
			["parent"] = "ToGC",
			["conditions"] = {
			},
			["information"] = {
			},
			["sortHybridTable"] = {
				["Beasts - Vassal Debuff"] = false,
				["Jaraxxus - Legion Flames"] = false,
				["Beasts - Burning Bile Debuff"] = false,
				["Anubarak - Penetrating Cold Debuff"] = false,
				["Twins - Powering Up Debuff"] = false,
				["Twins - Surge of Speed Buff"] = false,
				["Twins - Touch Debuff"] = false,
				["Anubarak - Acid Mandibles Debuff"] = false,
				["Beasts - Paralytic Toxin Debuff"] = false,
				["Anubarak - Freezing Slash Debuff"] = false,
				["Beasts - Rising Anger"] = false,
				["Twins - Twin Spike Debuff"] = false,
				["Twins - Empowered Debuff"] = false,
				["Beasts - Fire Bomb"] = false,
				["Beasts - Arctic Breath"] = false,
				["Jaraxxus - Mistress' Kiss Debuff"] = false,
				["Beasts - Paralysis"] = false,
				["Jaraxxus - Incinerate Flesh Debuff"] = false,
				["Beasts - Worm Enrage"] = false,
			},
		},
		["Overpower Tracker"] = {
			["iconSource"] = 0,
			["wagoID"] = "Xb146knOg",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "LEFT",
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
						["custom_hide"] = "timed",
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["unevent"] = "auto",
						["unit"] = "player",
						["duration"] = "1",
						["genericShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["event"] = "Chat Message",
						["spellIds"] = {
						},
						["custom"] = "function(states, event, unit, ...)\n    if event == \"NAME_PLATE_UNIT_ADDED\" then\n        if unit then\n            local guid = UnitGUID(unit)\n            states[guid] = {\n                changed = true,\n                show = false,\n            }\n        end\n    end\n    \n    if event == \"NAME_PLATE_UNIT_REMOVED\" then\n        if unit then\n            local guid = UnitGUID(unit)\n            if states[guid] then\n                states[guid].changed = true\n            end\n        end\n    end\n    \n    if event == \"COMBAT_LOG_EVENT_UNFILTERED\" then\n        local subEvent, _, sourceGUID, _, sourceFlags, _, _, _, destFlags, _, _, spellName = ...\n        local missType = \"\"\n        \n        local isDestPlayer = CombatLog_Object_IsA(destFlags, COMBATLOG_FILTER_ME)\n        local isDestFriend = CombatLog_Object_IsA(destFlags, COMBATLOG_FILTER_FRIENDLY_UNITS)\n        local isSourceEnemy = CombatLog_Object_IsA(sourceFlags, COMBATLOG_FILTER_HOSTILE_PLAYERS)\n        \n        if not (isDestPlayer or isDestFriend) and isSourceEnemy then return end\n        \n        if subEvent == \"SPELL_CAST_SUCCESS\" or subEvent == \"SPELL_CAST_FAILED\" then\n            if spellName == \"Overpower\" and states[sourceGUID] then\n                states[sourceGUID].changed = true\n                states[sourceGUID].show = false\n            end\n        end\n        \n        \n        if subEvent == \"SWING_MISSED\" then\n            missType = select(11,...)\n        elseif subEvent == \"SPELL_MISSED\" then\n            _,_,_,missType = select(11, ...)\n        end\n        \n        if (missType == \"DODGE\" or missType == \"PARRY\") then\n            for i = 1,40 do\n                local u = \"nameplate\"..i\n                if UnitGUID(u) == sourceGUID and select(3,UnitClass(u)) == 1 and UnitIsPlayer(u) then\n                    states[sourceGUID] = {\n                        changed = true,\n                        show = true,\n                        unit = u,\n                        autoHide = true,\n                        progressType = \"timed\",\n                        duration = 5,\n                    }\n                    break\n                    \n                end\n            end\n        end\n    end\n    \n    return true\n    \nend",
						["events"] = " NAME_PLATE_UNIT_ADDED NAME_PLATE_UNIT_REMOVED COMBAT_LOG_EVENT_UNFILTERED",
						["check"] = "event",
						["names"] = {
						},
						["custom_type"] = "stateupdate",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["showClones"] = true,
						["type"] = "aura2",
						["auranames"] = {
							"Taste for Blood", -- [1]
						},
						["combinePerUnit"] = true,
						["useHostility"] = true,
						["unit"] = "nameplate",
						["combineMode"] = "showHighest",
						["useName"] = true,
						["hostility"] = "hostile",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 66,
			["keepAspectRatio"] = true,
			["selfPoint"] = "LEFT",
			["desaturate"] = false,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["type"] = "subborder",
					["border_size"] = 2,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_offset"] = 0,
				}, -- [2]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_time_legacy_floor"] = true,
					["type"] = "subtext",
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_text_format_p_time_format"] = 0,
					["text_shadowYOffset"] = 0,
					["text_shadowXOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_fontType"] = "OUTLINE",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_mod_rate"] = true,
				}, -- [3]
			},
			["height"] = 25,
			["load"] = {
				["use_never"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
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
			["source"] = "import",
			["xOffset"] = -35,
			["regionType"] = "icon",
			["desc"] = "doesnt work anymore - blizzard cucked it",
			["icon"] = true,
			["information"] = {
				["forceEvents"] = true,
			},
			["conditions"] = {
			},
			["anchorFrameParent"] = true,
			["cooldownTextDisabled"] = true,
			["uid"] = "2KXSqBvXR9Z",
			["zoom"] = 0.15,
			["frameStrata"] = 1,
			["tocversion"] = 30400,
			["id"] = "Overpower Tracker",
			["width"] = 25,
			["useCooldownModRate"] = true,
			["anchorFrameType"] = "NAMEPLATE",
			["alpha"] = 1,
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["displayIcon"] = 135275,
			["cooldown"] = true,
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
		["Twins - Missing Buff"] = {
			["outline"] = "None",
			["wagoID"] = "A5ytftEJV",
			["color"] = {
				1, -- [1]
				0.29411765933037, -- [2]
				0.28235295414925, -- [3]
				1, -- [4]
			},
			["displayText_format_p_time_dynamic_threshold"] = 10,
			["shadowYOffset"] = -1,
			["anchorPoint"] = "CENTER",
			["displayText_format_p_time_format"] = 0,
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/TemsToGC/18",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Glass.mp3",
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"65686", -- [1]
							"65684", -- [2]
						},
						["matchesShowOn"] = "showOnMissing",
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
						},
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["useName"] = true,
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["displayText_format_p_format"] = "timed",
			["displayText_format_p_time_legacy_floor"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "preset",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["preset"] = "alphaPulse",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["displayText_format_1.unitName_format"] = "none",
			["displayText_format_1.destName_abbreviate_max"] = 8,
			["font"] = "KMT-GothamXN_Ultra",
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["parent"] = "Tems ToGC - Casts",
			["load"] = {
				["use_encounterid"] = true,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "641, 1089",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["yOffset"] = 0,
			["fontSize"] = 24,
			["source"] = "import",
			["preferToUpdate"] = false,
			["shadowXOffset"] = 1,
			["fixedWidth"] = 200,
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["automaticWidth"] = "Auto",
			["regionType"] = "text",
			["displayText_format_1.destName_realm_name"] = "never",
			["uid"] = ")9UVs93eWrZ",
			["wordWrap"] = "WordWrap",
			["displayText"] = "** MISSING COLOR BUFF **",
			["displayText_format_p_time_precision"] = 1,
			["authorOptions"] = {
			},
			["id"] = "Twins - Missing Buff",
			["semver"] = "2.2.2",
			["justify"] = "LEFT",
			["tocversion"] = 30402,
			["displayText_format_1.destName_abbreviate"] = false,
			["displayText_format_1.destName_format"] = "Unit",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["internalVersion"] = 66,
			["config"] = {
			},
			["displayText_format_p_time_mod_rate"] = true,
			["selfPoint"] = "BOTTOM",
			["displayText_format_1.destName_color"] = "class",
			["conditions"] = {
			},
			["information"] = {
			},
			["xOffset"] = 0,
		},
		["Twins - Touch"] = {
			["sparkWidth"] = 10,
			["iconSource"] = 0,
			["wagoID"] = "A5ytftEJV",
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["url"] = "https://wago.io/TemsToGC/18",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "combatlog",
						["spellId"] = "66001",
						["subeventSuffix"] = "_CAST_SUCCESS",
						["duration"] = "45",
						["event"] = "Combat Log",
						["use_sourceFlags2"] = false,
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["sourceFlags2"] = "Hostile",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "combatlog",
						["spellId"] = "65950",
						["subeventSuffix"] = "_CAST_SUCCESS",
						["duration"] = "45",
						["event"] = "Combat Log",
						["use_sourceFlags2"] = false,
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["sourceFlags2"] = "Hostile",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_type"] = "event",
						["duration"] = "15",
						["event"] = "Health",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["spellIds"] = {
						},
						["custom"] = "function(event)\n    return true\nend",
						["names"] = {
						},
						["events"] = "ENCOUNTER_START",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [3]
				{
					["trigger"] = {
						["type"] = "combatlog",
						["spellId"] = "66001",
						["subeventSuffix"] = "_CAST_SUCCESS",
						["duration"] = "99",
						["event"] = "Combat Log",
						["use_sourceFlags2"] = false,
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["sourceFlags2"] = "Hostile",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [4]
				{
					["trigger"] = {
						["type"] = "combatlog",
						["spellId"] = "65950",
						["subeventSuffix"] = "_CAST_SUCCESS",
						["duration"] = "99",
						["event"] = "Combat Log",
						["use_sourceFlags2"] = false,
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["sourceFlags2"] = "Hostile",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [5]
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_type"] = "event",
						["duration"] = "99",
						["event"] = "Health",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["spellIds"] = {
						},
						["custom"] = "function(event)\n    return true\nend",
						["names"] = {
						},
						["events"] = "ENCOUNTER_START",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [6]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 66,
			["zoom"] = 0.3,
			["selfPoint"] = "CENTER",
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
			["barColor"] = {
				0.55294120311737, -- [1]
				0.35294118523598, -- [2]
				0.80392163991928, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["barColor2"] = {
				1, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 0,
							}, -- [1]
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 0,
							}, -- [2]
							{
								["trigger"] = 3,
								["variable"] = "show",
								["value"] = 0,
							}, -- [3]
						},
					},
					["changes"] = {
						{
							["value"] = {
								0.55294120311737, -- [1]
								0.35294118523598, -- [2]
								0.80392163991928, -- [3]
								1, -- [4]
							},
							["property"] = "backgroundColor",
						}, -- [1]
						{
							["property"] = "sub.4.text_visible",
						}, -- [2]
						{
							["property"] = "sub.6.text_visible",
						}, -- [3]
						{
							["value"] = true,
							["property"] = "sub.5.text_visible",
						}, -- [4]
					},
				}, -- [1]
			},
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["type"] = "subforeground",
				}, -- [2]
				{
					["border_size"] = 1,
					["border_anchor"] = "bar",
					["type"] = "subborder",
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_offset"] = 0,
				}, -- [3]
				{
					["text_text_format_n_format"] = "none",
					["text_text"] = "Next Debuffs",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_LEFT",
					["text_shadowXOffset"] = 1,
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [4]
				{
					["text_text_format_n_format"] = "none",
					["text_text"] = "Debuffs Soon",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_LEFT",
					["text_shadowXOffset"] = 1,
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_visible"] = false,
				}, -- [5]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%p",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_time_format"] = 0,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["type"] = "subtext",
					["text_anchorXOffset"] = -2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_text_format_p_time_precision"] = 1,
					["text_shadowYOffset"] = -1,
					["anchorYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_RIGHT",
					["text_visible"] = true,
					["text_text_format_p_format"] = "timed",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_mod_rate"] = true,
				}, -- [6]
			},
			["height"] = 20,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["load"] = {
				["use_encounterid"] = true,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "641, 1089",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["parent"] = "Tems ToGC - Timers",
			["source"] = "import",
			["gradientOrientation"] = "HORIZONTAL",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["enableGradient"] = false,
			["anchorFrameType"] = "SCREEN",
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["alpha"] = 1,
			["config"] = {
			},
			["icon_side"] = "LEFT",
			["id"] = "Twins - Touch",
			["sparkHeight"] = 30,
			["texture"] = "Melli",
			["spark"] = false,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["semver"] = "2.2.2",
			["tocversion"] = 30402,
			["sparkHidden"] = "NEVER",
			["icon"] = true,
			["frameStrata"] = 1,
			["width"] = 200,
			["sparkOffsetX"] = 0,
			["uid"] = "ZLU(9YgrH9D",
			["inverse"] = false,
			["sparkOffsetY"] = 0,
			["orientation"] = "HORIZONTAL",
			["displayIcon"] = 136130,
			["information"] = {
			},
			["authorOptions"] = {
			},
		},
		["Tems - Pull TImer"] = {
			["sparkWidth"] = 10,
			["iconSource"] = 0,
			["authorOptions"] = {
			},
			["displayText"] = "** Pull in %p **",
			["yOffset"] = -50,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["url"] = "https://wago.io/TemsToGC/18",
			["actions"] = {
				["start"] = {
					["message_type"] = "TTS",
					["do_message"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Glass.mp3",
					["do_sound"] = true,
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "aura_env.duration = 0\nlocal rPF_W = C_ChatInfo.IsAddonMessagePrefixRegistered(\"D5WC\")\nif not rPF_W then C_ChatInfo.RegisterAddonMessagePrefix(\"D5WC\") end",
					["do_custom"] = true,
				},
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["enableGradient"] = false,
			["keepAspectRatio"] = false,
			["selfPoint"] = "BOTTOM",
			["barColor"] = {
				1, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["font"] = "KMT-GothamXN_Ultra",
			["sparkOffsetY"] = 0,
			["gradientOrientation"] = "HORIZONTAL",
			["load"] = {
				["ingroup"] = {
					["multi"] = {
						["group"] = true,
						["raid"] = true,
					},
				},
				["use_zoneIds"] = true,
				["instance_type"] = {
				},
				["group_leader"] = {
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = false,
				["use_zone"] = false,
				["zoneIds"] = "172, 173",
				["use_never"] = false,
				["class"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["shadowXOffset"] = 1,
			["useAdjustededMin"] = false,
			["regionType"] = "icon",
			["texture"] = "Blizzard",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["spark"] = false,
			["tocversion"] = 30402,
			["alpha"] = 1,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayIcon"] = "236871",
			["outline"] = "OUTLINE",
			["sparkOffsetX"] = 0,
			["wagoID"] = "A5ytftEJV",
			["parent"] = "Tems ToGC - Casts",
			["customText"] = "",
			["shadowYOffset"] = -1,
			["cooldownSwipe"] = true,
			["sparkRotationMode"] = "AUTO",
			["cooldownEdge"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_hide"] = "timed",
						["custom_type"] = "event",
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["event"] = "Health",
						["names"] = {
						},
						["customDuration"] = "function()\n  if WeakAuras.IsOptionsOpen() then\n    \n    return 1337, 1337, true\n  else\n    local duration, expirationTime = aura_env.duration, GetTime()+aura_env.duration\n    return duration, expirationTime\n  end\nend\n\n\n",
						["customName"] = "",
						["custom"] = "function(event, pf, content, channel) \n    if pf == \"D5WC\" then\n        local _, _, dbmPrefix, arg1 = strsplit(\"\\t\", content) \n        if dbmPrefix == \"PT\" then\n            aura_env.duration = tonumber(arg1)\n            aura_env.name = \"PULL\"\n            return true      \n        end\n    end\nend",
						["dynamicDuration"] = true,
						["events"] = "CHAT_MSG_ADDON",
						["spellIds"] = {
						},
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["displayText_format_p_format"] = "timed",
			["displayText_format_p_time_legacy_floor"] = false,
			["config"] = {
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
			["cooldown"] = false,
			["fixedWidth"] = 200,
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["zoom"] = 0,
			["automaticWidth"] = "Auto",
			["desc"] = "This WA don't require you have to DBM / Bigwigs to display pull timers. For different versions of the came, look at the \"Actions\" > \"On Init\" > \"Custom Code\" tab for commented out text for all versions of the game. Default for this WA is Wrath of the Lichking Classic.",
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "** Pull in %p **",
					["text_text_format_p_time_mod_rate"] = true,
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_format"] = "timed",
					["type"] = "subtext",
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_text_format_p_time_precision"] = 1,
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "OUTER_TOP",
					["anchorYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_fontSize"] = 22,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_format"] = 0,
				}, -- [2]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "Pre-pot",
					["text_text_format_p_time_mod_rate"] = true,
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_format"] = "timed",
					["type"] = "subtext",
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_text_format_p_time_precision"] = 1,
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = false,
					["text_anchorPoint"] = "OUTER_BOTTOM",
					["anchorYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_format"] = 0,
				}, -- [3]
			},
			["height"] = 45,
			["displayText_format_p_time_mod_rate"] = true,
			["width"] = 45,
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["fontSize"] = 26,
			["source"] = "import",
			["displayText_format_n_format"] = "none",
			["frameStrata"] = 1,
			["displayText_format_p_time_dynamic_threshold"] = 5,
			["id"] = "Tems - Pull TImer",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["justify"] = "LEFT",
			["displayText_format_c_format"] = "none",
			["displayText_format_p_time_format"] = 0,
			["icon_side"] = "RIGHT",
			["icon"] = false,
			["displayText_format_p_time_precision"] = 1,
			["sparkHeight"] = 30,
			["internalVersion"] = 66,
			["xOffset"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["semver"] = "2.2.2",
			["uid"] = "5klWhm8S2V1",
			["sparkHidden"] = "NEVER",
			["customTextUpdate"] = "update",
			["useCooldownModRate"] = true,
			["anchorFrameType"] = "SCREEN",
			["wordWrap"] = "WordWrap",
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["inverse"] = false,
			["cooldownTextDisabled"] = true,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<=",
						["value"] = "5",
						["variable"] = "expirationTime",
					},
					["changes"] = {
						{
							["value"] = 30,
							["property"] = "sub.2.text_fontSize",
						}, -- [1]
						{
							["value"] = {
								1, -- [1]
								0.87450987100601, -- [2]
								0.52549022436142, -- [3]
								1, -- [4]
							},
							["property"] = "sub.2.text_color",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<",
						["value"] = "2",
						["variable"] = "expirationTime",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.3.text_visible",
						}, -- [1]
						{
							["property"] = "color",
						}, -- [2]
					},
				}, -- [2]
			},
			["barColor2"] = {
				1, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
		},
		["Beasts - Paralytic Toxin Debuff"] = {
			["iconSource"] = 0,
			["wagoID"] = "A5ytftEJV",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "https://wago.io/TemsToGC/18",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"66823", -- [1]
						},
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["useName"] = true,
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "combatlog",
						["spellId"] = "66823",
						["subeventSuffix"] = "_AURA_APPLIED",
						["duration"] = "5",
						["event"] = "Combat Log",
						["unit"] = "player",
						["destUnit"] = "player",
						["use_spellId"] = true,
						["use_destUnit"] = true,
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(trigger)\n    return trigger[1]\nend",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 66,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_size"] = 1,
					["type"] = "subborder",
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_offset"] = 1,
				}, -- [2]
				{
					["glowFrequency"] = 0.2,
					["type"] = "subglow",
					["glowXOffset"] = 0,
					["glowType"] = "Pixel",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowDuration"] = 1,
					["useGlowColor"] = false,
					["glowScale"] = 1,
					["glowThickness"] = 1.5,
					["glow"] = true,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_time_mod_rate"] = true,
					["type"] = "subtext",
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_text_format_p_time_format"] = 0,
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "BOTTOM",
					["anchorYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_precision"] = 1,
				}, -- [4]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "TOXIN",
					["text_text_format_p_time_mod_rate"] = true,
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_format"] = "timed",
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["type"] = "subtext",
					["text_text_format_n_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["anchorYOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "TOP",
					["text_visible"] = true,
					["text_text_format_p_time_format"] = 0,
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_precision"] = 1,
				}, -- [5]
			},
			["height"] = 41,
			["load"] = {
				["use_encounterid"] = true,
				["encounterid"] = "629, 1088",
				["use_zoneIds"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["config"] = {
			},
			["cooldownEdge"] = false,
			["xOffset"] = 0,
			["regionType"] = "icon",
			["actions"] = {
				["start"] = {
					["message"] = "{rt4}",
					["do_message"] = true,
					["message_type"] = "SAY",
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["cooldown"] = true,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["op"] = "<",
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 2,
								["op"] = "<",
								["value"] = "4",
								["variable"] = "expirationTime",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "{rt4}",
								["message_type"] = "SAY",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -2,
						["op"] = "<",
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 2,
								["op"] = "<",
								["value"] = "3",
								["variable"] = "expirationTime",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "{rt4}",
								["message_type"] = "SAY",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = -2,
						["op"] = "<",
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 2,
								["op"] = "<",
								["value"] = "2",
								["variable"] = "expirationTime",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "{rt4}",
								["message_type"] = "SAY",
							},
							["property"] = "chat",
						}, -- [1]
					},
				}, -- [3]
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["zoom"] = 0.3,
			["anchorFrameType"] = "SCREEN",
			["cooldownTextDisabled"] = true,
			["semver"] = "2.2.2",
			["tocversion"] = 30402,
			["id"] = "Beasts - Paralytic Toxin Debuff",
			["useCooldownModRate"] = true,
			["frameStrata"] = 1,
			["width"] = 41,
			["alpha"] = 1,
			["uid"] = "ue68OUidinp",
			["inverse"] = false,
			["parent"] = "Tems ToGC - Icons",
			["displayIcon"] = 132105,
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
		["Charms"] = {
			["iconSource"] = 0,
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["useName"] = true,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HARMFUL",
						["type"] = "aura2",
						["spellIds"] = {
						},
						["auranames"] = {
							"Mind Control", -- [1]
							"24261", -- [2]
							"7621", -- [3]
							"24327", -- [4]
							"25806", -- [5]
							"Dominate Mind", -- [6]
							"Domination", -- [7]
							"16053", -- [8]
							"3442", -- [9]
							"25772", -- [10]
							"17244", -- [11]
							"Possessed", -- [12]
						},
						["unit"] = "player",
						["names"] = {
						},
						["custom_type"] = "status",
						["buffShowOn"] = "showOnActive",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "spell",
						["unevent"] = "auto",
						["subeventSuffix"] = "_CAST_START",
						["use_genericShowOn"] = true,
						["duration"] = "1",
						["event"] = "Action Usable",
						["unit"] = "player",
						["realSpellName"] = 7744,
						["use_spellName"] = true,
						["genericShowOn"] = "showOnReady",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["use_exact_spellName"] = true,
						["use_track"] = true,
						["spellName"] = 7744,
					},
					["untrigger"] = {
						["genericShowOn"] = "showOnReady",
					},
				}, -- [2]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 66,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 2,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["glowFrequency"] = 0.25,
					["glow"] = true,
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						0, -- [2]
						0.00784313725490196, -- [3]
						1, -- [4]
					},
					["glowDuration"] = 1,
					["type"] = "subglow",
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
			},
			["height"] = 65,
			["load"] = {
				["use_race"] = true,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["race"] = {
					["single"] = "Scourge",
					["multi"] = {
						["Scourge"] = true,
					},
				},
				["faction"] = {
				},
				["zoneIds"] = "",
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["width"] = 65,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["parent"] = "WOTF BORDER",
			["color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0, -- [4]
			},
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = false,
			},
			["regionType"] = "icon",
			["conditions"] = {
			},
			["selfPoint"] = "CENTER",
			["cooldownEdge"] = false,
			["uid"] = "AcqL()JqkDr",
			["alpha"] = 1,
			["useCooldownModRate"] = true,
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 11304,
			["id"] = "Charms",
			["semver"] = "1.0.1",
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["cooldownTextDisabled"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["useTooltip"] = false,
			["displayIcon"] = 136187,
			["cooldown"] = false,
			["authorOptions"] = {
			},
		},
		["Anubarak - Acid Mandibles Debuff"] = {
			["iconSource"] = 0,
			["wagoID"] = "A5ytftEJV",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "https://wago.io/TemsToGC/18",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"65775", -- [1]
						},
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["useName"] = true,
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "function(trigger)\n    return trigger[1]\nend",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 66,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_size"] = 1,
					["type"] = "subborder",
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_offset"] = 1,
				}, -- [2]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_time_mod_rate"] = true,
					["type"] = "subtext",
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_text_format_p_time_format"] = 0,
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "BOTTOM",
					["anchorYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_precision"] = 1,
				}, -- [3]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_text_format_p_time_mod_rate"] = true,
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_format"] = "timed",
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["type"] = "subtext",
					["text_text_format_n_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["anchorYOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "TOP",
					["text_visible"] = true,
					["text_text_format_p_time_format"] = 0,
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_precision"] = 1,
				}, -- [4]
			},
			["height"] = 41,
			["load"] = {
				["use_encounterid"] = true,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "645, 1085",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["config"] = {
			},
			["cooldownEdge"] = false,
			["xOffset"] = 0,
			["regionType"] = "icon",
			["actions"] = {
				["start"] = {
					["message"] = "",
					["do_message"] = false,
					["message_type"] = "SAY",
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["cooldown"] = true,
			["conditions"] = {
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["zoom"] = 0.3,
			["anchorFrameType"] = "SCREEN",
			["cooldownTextDisabled"] = true,
			["semver"] = "2.2.2",
			["tocversion"] = 30402,
			["id"] = "Anubarak - Acid Mandibles Debuff",
			["useCooldownModRate"] = true,
			["frameStrata"] = 1,
			["width"] = 41,
			["alpha"] = 1,
			["uid"] = "fYEsNsUhkJP",
			["inverse"] = false,
			["parent"] = "Tems ToGC - Icons",
			["displayIcon"] = 132103,
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
		["Twins - Light Vortex"] = {
			["sparkWidth"] = 10,
			["iconSource"] = 0,
			["wagoID"] = "A5ytftEJV",
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["url"] = "https://wago.io/TemsToGC/18",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.51000002026558, -- [4]
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "combatlog",
						["spellId"] = "66046",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "6",
						["event"] = "Combat Log",
						["use_unit"] = true,
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["unit"] = "nameplate",
						["use_exact_spellId"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "combatlog",
						["spellId"] = "66046",
						["subeventSuffix"] = "_CAST_SUCCESS",
						["duration"] = "5",
						["event"] = "Combat Log",
						["use_unit"] = true,
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["unit"] = "nameplate",
						["use_exact_spellId"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "function(trigger)\n    return trigger[1] or trigger[2]\nend",
				["activeTriggerMode"] = -10,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 66,
			["zoom"] = 0.3,
			["selfPoint"] = "CENTER",
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
			["barColor"] = {
				1, -- [1]
				1, -- [2]
				0.96470594406128, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["barColor2"] = {
				0.80000007152557, -- [1]
				0.63529413938522, -- [2]
				0.34509804844856, -- [3]
				1, -- [4]
			},
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
							["property"] = "inverse",
						}, -- [1]
					},
				}, -- [1]
			},
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["type"] = "subforeground",
				}, -- [2]
				{
					["border_size"] = 1,
					["border_anchor"] = "bg",
					["type"] = "subborder",
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_offset"] = 1,
				}, -- [3]
				{
					["text_text_format_n_format"] = "none",
					["text_text"] = "Light Vortex",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 2,
					["text_text_format_1.spell_format"] = "none",
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_LEFT",
					["text_shadowXOffset"] = 1,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_fontSize"] = 14,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [4]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%p",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_time_format"] = 0,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["type"] = "subtext",
					["text_anchorXOffset"] = -2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_text_format_p_time_precision"] = 1,
					["text_shadowYOffset"] = -1,
					["anchorYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_RIGHT",
					["text_visible"] = true,
					["text_text_format_p_format"] = "timed",
					["text_fontSize"] = 14,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_mod_rate"] = true,
				}, -- [5]
			},
			["height"] = 22,
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\sonar.ogg",
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["load"] = {
				["use_encounterid"] = true,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "641, 1089",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["parent"] = "Tems ToGC - Casts",
			["source"] = "import",
			["gradientOrientation"] = "HORIZONTAL",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["enableGradient"] = true,
			["anchorFrameType"] = "SCREEN",
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["alpha"] = 1,
			["config"] = {
			},
			["icon_side"] = "LEFT",
			["id"] = "Twins - Light Vortex",
			["sparkHeight"] = 30,
			["texture"] = "Clean",
			["spark"] = false,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["semver"] = "2.2.2",
			["tocversion"] = 30402,
			["sparkHidden"] = "NEVER",
			["icon"] = true,
			["frameStrata"] = 1,
			["width"] = 290,
			["sparkOffsetX"] = 0,
			["uid"] = "s8hX27BIEAg",
			["inverse"] = false,
			["sparkOffsetY"] = 0,
			["orientation"] = "HORIZONTAL",
			["displayIcon"] = "135894",
			["information"] = {
			},
			["authorOptions"] = {
			},
		},
		["Beasts - Worm Enrage"] = {
			["iconSource"] = 0,
			["wagoID"] = "A5ytftEJV",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "https://wago.io/TemsToGC/18",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "1604",
						["auranames"] = {
							"68335", -- [1]
						},
						["duration"] = "4",
						["names"] = {
						},
						["destUnit"] = "player",
						["group_count"] = "0",
						["debuffType"] = "HELPFUL",
						["useName"] = true,
						["subeventSuffix"] = "_AURA_APPLIED",
						["event"] = "Combat Log",
						["group_countOperator"] = ">",
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["type"] = "aura2",
						["unit"] = "nameplate",
						["use_destUnit"] = true,
						["useGroup_count"] = true,
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 66,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_size"] = 1,
					["type"] = "subborder",
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_offset"] = 1,
				}, -- [2]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_time_mod_rate"] = true,
					["type"] = "subtext",
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_text_format_p_time_format"] = 0,
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "BOTTOM",
					["anchorYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_precision"] = 1,
				}, -- [3]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "ENRAGE",
					["text_text_format_p_time_mod_rate"] = true,
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_format"] = "timed",
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["type"] = "subtext",
					["text_text_format_n_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["anchorYOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "TOP",
					["text_visible"] = true,
					["text_text_format_p_time_format"] = 0,
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_precision"] = 1,
				}, -- [4]
			},
			["height"] = 41,
			["load"] = {
				["use_encounterid"] = true,
				["encounterid"] = "629, 1088",
				["use_zoneIds"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["config"] = {
			},
			["cooldownEdge"] = false,
			["xOffset"] = 0,
			["regionType"] = "icon",
			["actions"] = {
				["start"] = {
					["message"] = "",
					["do_message"] = false,
					["message_type"] = "SAY",
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["cooldown"] = true,
			["conditions"] = {
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["zoom"] = 0.3,
			["anchorFrameType"] = "SCREEN",
			["cooldownTextDisabled"] = true,
			["semver"] = "2.2.2",
			["tocversion"] = 30402,
			["id"] = "Beasts - Worm Enrage",
			["useCooldownModRate"] = true,
			["frameStrata"] = 1,
			["width"] = 41,
			["alpha"] = 1,
			["uid"] = "IzNIZtvi7cE",
			["inverse"] = false,
			["parent"] = "Tems ToGC - Icons",
			["displayIcon"] = 236197,
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
		["Anubarak - Frost Spheres"] = {
			["sparkWidth"] = 10,
			["iconSource"] = 0,
			["wagoID"] = "A5ytftEJV",
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["url"] = "https://wago.io/TemsToGC/18",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.51000002026558, -- [4]
			},
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "66118",
						["auranames"] = {
							"67574", -- [1]
						},
						["duration"] = "6",
						["subeventPrefix"] = "UNIT_DIED",
						["unit"] = "group",
						["useAffected"] = true,
						["combineMode"] = "showHighest",
						["use_exact_spellId"] = true,
						["use_unit"] = true,
						["group_countOperator"] = "~=",
						["destNpcId"] = "34606",
						["useName"] = true,
						["use_destNpcId"] = true,
						["subeventSuffix"] = "",
						["useGroup_count"] = true,
						["type"] = "combatlog",
						["event"] = "Combat Log",
						["ignoreDead"] = true,
						["ignoreDisconnected"] = false,
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["group_count"] = "0",
						["debuffType"] = "HARMFUL",
						["use_destUnit"] = false,
						["fetchRaidMark"] = false,
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "function(trigger)\n    return trigger[1] or trigger[2]\nend",
				["activeTriggerMode"] = -10,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 66,
			["zoom"] = 0.3,
			["selfPoint"] = "CENTER",
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
			["barColor"] = {
				0.19215688109398, -- [1]
				0.63921570777893, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["barColor2"] = {
				0.050980396568775, -- [1]
				0.25098040699959, -- [2]
				0.56078433990479, -- [3]
				1, -- [4]
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["value"] = "6",
						["variable"] = "count",
					},
					["changes"] = {
						{
							["value"] = {
								0.76470595598221, -- [1]
								0.27450981736183, -- [2]
								0.21176472306252, -- [3]
								1, -- [4]
							},
							["property"] = "sub.5.text_color",
						}, -- [1]
					},
				}, -- [1]
			},
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["type"] = "subforeground",
				}, -- [2]
				{
					["border_size"] = 1,
					["border_anchor"] = "bg",
					["type"] = "subborder",
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_offset"] = 1,
				}, -- [3]
				{
					["text_text_format_1.unitName_realm_name"] = "never",
					["text_text"] = "Orbs Killed",
					["text_text_format_1.unitName_color"] = "class",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_1.unitName_abbreviate"] = true,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["type"] = "subtext",
					["text_anchorXOffset"] = 2,
					["text_text_format_1.spell_format"] = "none",
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_text_format_1.unitName_format"] = "Unit",
					["text_shadowYOffset"] = -1,
					["text_visible"] = true,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_LEFT",
					["text_text_format_1.unitName_abbreviate_max"] = 8,
					["text_text_format_n_format"] = "none",
					["text_fontSize"] = 14,
					["anchorXOffset"] = 0,
					["text_shadowXOffset"] = 1,
				}, -- [4]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%1.count/6",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_format"] = "timed",
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["anchorYOffset"] = 0,
					["type"] = "subtext",
					["text_anchorXOffset"] = -2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_text_format_p_time_format"] = 0,
					["text_shadowYOffset"] = -1,
					["text_visible"] = true,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_RIGHT",
					["text_text_format_1.count_format"] = "none",
					["text_text_format_p_time_mod_rate"] = true,
					["text_fontSize"] = 14,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_precision"] = 1,
				}, -- [5]
			},
			["height"] = 22,
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\sonar.ogg",
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "645, 1085",
				["use_encounterid"] = true,
				["use_instance_type"] = false,
				["class"] = {
					["multi"] = {
					},
				},
				["instance_type"] = {
					["multi"] = {
						[5] = true,
						[6] = true,
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
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["parent"] = "Tems ToGC - Casts",
			["source"] = "import",
			["gradientOrientation"] = "HORIZONTAL",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["enableGradient"] = true,
			["anchorFrameType"] = "SCREEN",
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["alpha"] = 1,
			["config"] = {
			},
			["icon_side"] = "LEFT",
			["id"] = "Anubarak - Frost Spheres",
			["sparkHeight"] = 30,
			["texture"] = "Clean",
			["spark"] = false,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["semver"] = "2.2.2",
			["tocversion"] = 30402,
			["sparkHidden"] = "NEVER",
			["icon"] = true,
			["frameStrata"] = 1,
			["width"] = 290,
			["sparkOffsetX"] = 0,
			["uid"] = "RNOQ1AVg2M5",
			["inverse"] = true,
			["sparkOffsetY"] = 0,
			["orientation"] = "HORIZONTAL",
			["displayIcon"] = "135864",
			["information"] = {
			},
			["authorOptions"] = {
			},
		},
		["Anubarak - Shadow Strike Cast"] = {
			["sparkWidth"] = 10,
			["iconSource"] = -1,
			["wagoID"] = "A5ytftEJV",
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["url"] = "https://wago.io/TemsToGC/18",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.51000002026558, -- [4]
			},
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = 66134,
						["auranames"] = {
							"67574", -- [1]
						},
						["use_track"] = true,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["subeventPrefix"] = "SPELL",
						["useAffected"] = true,
						["names"] = {
						},
						["useGroup_count"] = true,
						["unit"] = "nameplate",
						["group_count"] = "0",
						["useName"] = true,
						["use_cloneId"] = true,
						["group_countOperator"] = "~=",
						["use_spellId"] = true,
						["type"] = "unit",
						["realSpellName"] = 0,
						["subeventSuffix"] = "_CAST_START",
						["use_exact_spellId"] = true,
						["duration"] = "2",
						["event"] = "Cast",
						["ignoreDead"] = true,
						["ignoreDisconnected"] = false,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["debuffType"] = "HARMFUL",
						["combineMode"] = "showHighest",
						["spellName"] = 0,
						["fetchRaidMark"] = false,
						["use_unit"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "function(trigger)\n    return trigger[1] or trigger[2]\nend",
				["activeTriggerMode"] = -10,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 66,
			["zoom"] = 0.3,
			["selfPoint"] = "CENTER",
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
			["barColor"] = {
				0.49411767721176, -- [1]
				0.32941177487373, -- [2]
				0.78039222955704, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["barColor2"] = {
				0.5137255191803, -- [1]
				0.4627451300621, -- [2]
				0.55294120311737, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["type"] = "subforeground",
				}, -- [2]
				{
					["border_size"] = 1,
					["border_anchor"] = "bg",
					["type"] = "subborder",
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_offset"] = 1,
				}, -- [3]
				{
					["text_text_format_1.unitName_realm_name"] = "never",
					["text_text"] = "INTERRUPT",
					["text_text_format_1.unitName_color"] = "class",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_1.unitName_abbreviate"] = true,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["type"] = "subtext",
					["text_anchorXOffset"] = 2,
					["text_text_format_1.spell_format"] = "none",
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_text_format_1.unitName_format"] = "Unit",
					["text_shadowYOffset"] = -1,
					["text_visible"] = true,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_LEFT",
					["text_text_format_1.unitName_abbreviate_max"] = 8,
					["text_text_format_n_format"] = "none",
					["text_fontSize"] = 14,
					["anchorXOffset"] = 0,
					["text_shadowXOffset"] = 1,
				}, -- [4]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%p",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_time_format"] = 0,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["type"] = "subtext",
					["text_anchorXOffset"] = -2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_text_format_p_time_precision"] = 1,
					["text_shadowYOffset"] = -1,
					["anchorYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_RIGHT",
					["text_visible"] = true,
					["text_text_format_p_format"] = "timed",
					["text_fontSize"] = 14,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_mod_rate"] = true,
				}, -- [5]
			},
			["height"] = 22,
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\sonar.ogg",
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["load"] = {
				["use_encounterid"] = true,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "645, 1085",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["parent"] = "Tems ToGC - Casts",
			["source"] = "import",
			["gradientOrientation"] = "HORIZONTAL",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["enableGradient"] = true,
			["anchorFrameType"] = "SCREEN",
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["alpha"] = 1,
			["config"] = {
			},
			["icon_side"] = "LEFT",
			["id"] = "Anubarak - Shadow Strike Cast",
			["sparkHeight"] = 30,
			["texture"] = "Clean",
			["spark"] = false,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["semver"] = "2.2.2",
			["tocversion"] = 30402,
			["sparkHidden"] = "NEVER",
			["icon"] = true,
			["frameStrata"] = 1,
			["width"] = 290,
			["sparkOffsetX"] = 0,
			["uid"] = "osd)kB)kCX0",
			["inverse"] = true,
			["sparkOffsetY"] = 0,
			["orientation"] = "HORIZONTAL",
			["displayIcon"] = 136189,
			["information"] = {
			},
			["authorOptions"] = {
			},
		},
		["P:[T8][Vezax] Shadow Crash"] = {
			["user_y"] = 0,
			["iconSource"] = -1,
			["user_x"] = 0,
			["xOffset"] = 0,
			["displayText"] = "",
			["yOffset"] = 0,
			["foregroundColor"] = {
				0.72156862745098, -- [1]
				0.043137254901961, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayText_format_p_time_format"] = 0,
			["sameTexture"] = true,
			["url"] = "https://wago.io/aQz-c2mBg/20",
			["backgroundColor"] = {
				0.50196078431373, -- [1]
				0.50196078431373, -- [2]
				0.50196078431373, -- [3]
				0, -- [4]
			},
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["useTooltip"] = false,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["displayText_format_1.unitName_format"] = "none",
			["barColor"] = {
				0.48627450980392, -- [1]
				0.26666666666667, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["rotation"] = 0,
			["font"] = "Friz Quadrata TT",
			["sparkOffsetY"] = 0,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
						["PALADIN"] = true,
						["PRIEST"] = true,
					},
				},
				["use_encounterid"] = true,
				["use_zone"] = false,
				["size"] = {
					["multi"] = {
						["flexible"] = true,
						["ten"] = true,
						["twentyfive"] = true,
						["fortyman"] = true,
						["twenty"] = true,
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["zone"] = "",
				["use_zoneIds"] = false,
				["encounterid"] = "755",
				["zoneIds"] = "165",
			},
			["displayText_format_1.health_format"] = "BigNumber",
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "isPlayer",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								["custom"] = "SendChatMessage(\"Shadow Crash on \" .. aura_env.Text,\"YELL\" )",
							},
							["property"] = "customcode",
						}, -- [1]
					},
				}, -- [1]
			},
			["foregroundTexture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Ring_10px.tga",
			["shadowXOffset"] = 1,
			["customAnchor"] = "function()\n    return C_NamePlate.GetNamePlateForUnit(\"target\")\nend",
			["smoothProgress"] = true,
			["useAdjustededMin"] = false,
			["regionType"] = "progresstexture",
			["orientation"] = "ANTICLOCKWISE",
			["blendMode"] = "BLEND",
			["desc"] = "",
			["displayText_format_1.name_abbreviate_max"] = 8,
			["slantMode"] = "INSIDE",
			["wordWrap"] = "WordWrap",
			["texture"] = "Solid",
			["cooldownTextDisabled"] = false,
			["zoom"] = 0.3,
			["auto"] = true,
			["compress"] = false,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["displayText_format_unitName_realm_name"] = "never",
			["anchorPoint"] = "CENTER",
			["displayIcon"] = 135821,
			["uid"] = "WkRMx8VFtOt",
			["displayText_format_1.name_color"] = "class",
			["id"] = "P:[T8][Vezax] Shadow Crash",
			["displayText_format_1.name_realm_name"] = "never",
			["fixedWidth"] = 200,
			["semver"] = "1.0.19",
			["backgroundOffset"] = 2,
			["outline"] = "OUTLINE",
			["displayText_format_p_time_dynamic_threshold"] = 60,
			["borderBackdrop"] = "None",
			["wagoID"] = "aQz-c2mBg",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["customTextUpdate"] = "event",
			["shadowYOffset"] = -1,
			["displayText_format_p_time_precision"] = 1,
			["desaturateBackground"] = false,
			["cooldownSwipe"] = true,
			["endAngle"] = 360,
			["sparkRotationMode"] = "AUTO",
			["automaticWidth"] = "Auto",
			["desaturateForeground"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
						["customVariables"] = "{\n    isPlayer = \"bool\"\n}",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["custom"] = "function(status, event, _, subEvent,_, sourceGuid, sourceName,_,_, destGuid, destName,_,_, spellId)\n    if event == \"OPTIONS\" then\n        status[\"\"] = {\n            show = true,\n            changed = true,\n            progressType = \"timed\",\n            name = aura_env.Text\n        }\n        return true \n    end\n    if event ==\"COMBAT_LOG_EVENT_UNFILTERED\" then\n        if subEvent == \"SPELL_CAST_SUCCESS\"  then \n            if aura_env.SpellTable[spellId]  then\n                C_Timer.After(0.05, function()\n                        WeakAuras.ScanEvents(\"SHADOW_CRASH_SCAN\")\n                end)\n            end\n        end\n    elseif event == \"SHADOW_CRASH_SCAN\" then\n        local unit = aura_env.ScanUnitByNpcID(\"33271\")\n        if unit and UnitExists(unit..\"target\") then\n            local targetName = UnitName(unit..\"target\")\n            status[\"\"] = {\n                show = aura_env.nameTable[targetName] and WeakAuras.CheckRange(aura_env.nameTable[targetName], 8, \"<=\"),\n                changed = true,\n                duration = 2 ,\n                expirationTime = 2  + GetTime(),\n                progressType = \"timed\",\n                autoHide = true,\n                name = aura_env.Text,\n                isPlayer = UnitName(\"player\") == targetName\n            }\n            return true\n        end\n    end\nend",
						["spellIds"] = {
						},
						["events"] = "CLEU:SPELL_CAST_SUCCESS,SHADOW_CRASH_SCAN",
						["check"] = "event",
						["names"] = {
						},
						["custom_type"] = "stateupdate",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "custom",
						["events"] = "UNIT_NAME_UPDATE,PLAYER_REGEN_DISABLED,GROUP_ROSTER_UPDATE",
						["custom_type"] = "stateupdate",
						["check"] = "event",
						["unit"] = "player",
						["custom"] = "function()\n    local unit\n    for unit in WA_IterateGroupMembers() do\n        aura_env.nameTable[UnitName(unit)] = unit\n    end\n    \n    return true\nend\n\n\n",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "function(t)\n    return t[1]\nend",
				["activeTriggerMode"] = 1,
			},
			["displayText_format_p_format"] = "timed",
			["internalVersion"] = 66,
			["displayText_format_1.name_format"] = "Unit",
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "grow",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "preset",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "grow",
					["duration_type"] = "seconds",
				},
			},
			["backdropInFront"] = false,
			["crop_y"] = 0.41,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["stickyDuration"] = false,
			["displayText_format_unitName_abbreviate_max"] = 8,
			["spark"] = false,
			["version"] = 20,
			["displayText_format_unitName_format"] = "Unit",
			["height"] = 160,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_text_format_n_format"] = "none",
					["text_text"] = "Crash!",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						0.72156862745098, -- [1]
						0.043137254901961, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Numen",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_visible"] = true,
					["text_anchorYOffset"] = 10,
					["text_fontSize"] = 28,
					["anchorXOffset"] = 0,
					["text_shadowXOffset"] = 1,
				}, -- [2]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["anchorYOffset"] = 0,
					["text_text_format_p_time_dynamic_threshold"] = 3,
					["text_text_format_p_time_mod_rate"] = true,
					["type"] = "subtext",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_color"] = {
						0.72156862745098, -- [1]
						0.043137254901961, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Numen",
					["text_text_format_p_time_format"] = 0,
					["text_shadowYOffset"] = -1,
					["text_visible"] = true,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_anchorYOffset"] = -20,
					["text_text_format_p_time_precision"] = 1,
					["text_fontSize"] = 28,
					["anchorXOffset"] = 0,
					["text_text_format_n_format"] = "none",
				}, -- [3]
			},
			["backgroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura3",
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["fontSize"] = 12,
			["source"] = "import",
			["displayText_format_1.health_big_number_format"] = "AbbreviateNumbers",
			["startAngle"] = 0,
			["displayText_format_unitName_abbreviate"] = false,
			["mirror"] = false,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["authorOptions"] = {
			},
			["borderInFront"] = true,
			["config"] = {
			},
			["icon_side"] = "LEFT",
			["sparkWidth"] = 10,
			["cooldownEdge"] = false,
			["sparkHeight"] = 30,
			["auraRotation"] = 0,
			["displayText_format_1.name_abbreviate"] = false,
			["sparkOffsetX"] = 0,
			["justify"] = "LEFT",
			["sparkRotation"] = 0,
			["sparkHidden"] = "NEVER",
			["actions"] = {
				["start"] = {
					["glow_frame_type"] = "UNITFRAME",
					["glow_action"] = "show",
					["do_glow"] = false,
					["custom"] = "SendChatMessage(\"↓\".. aura_env.Text..\"↓\" ,\"SAY\" )",
					["do_sound"] = true,
					["use_glow_color"] = true,
					["glow_type"] = "buttonOverlay",
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Glass.mp3",
					["do_custom"] = false,
				},
				["init"] = {
					["custom"] = "aura_env.SpellTable = {\n    [62660] = true, \n}\naura_env.AlertTime = 5\n\naura_env.Text = GetSpellInfo(62660)\naura_env.nameTable = {}\naura_env.ScanUnitByNpcID = function(checkid)\n    local unit = \"target\"\n    if UnitExists(unit) then \n        local npcid = select(6,strsplit(\"-\",UnitGUID(unit)))\n        if npcid == checkid then return unit end\n    end\n    unit = \"focus\"\n    if UnitExists(unit) then \n        local npcid = select(6,strsplit(\"-\",UnitGUID(unit)))\n        if npcid == checkid then return unit end\n    end\n    for i = 1,40 do\n        unit = \"nameplate\"..i\n        if UnitExists(unit) then \n            local npcid = select(6,strsplit(\"-\",UnitGUID(unit)))\n            if npcid == checkid then return unit end\n        end\n    end\n    return nil\nend\n\n\n\n",
					["do_custom"] = true,
				},
				["finish"] = {
					["do_glow"] = false,
					["hide_all_glows"] = false,
					["glow_action"] = "show",
					["stop_sound"] = false,
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\Fireball.ogg",
					["do_sound"] = false,
				},
			},
			["frameStrata"] = 1,
			["displayText_format_unitName_color"] = "class",
			["width"] = 160,
			["tocversion"] = 30401,
			["inverse"] = false,
			["icon"] = true,
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["crop_x"] = 0.41,
			["cooldown"] = false,
			["preferToUpdate"] = false,
		},
		["Anubarak - Submerge Nameplate"] = {
			["modelIsUnit"] = false,
			["iconSource"] = 0,
			["api"] = false,
			["xOffset"] = 0,
			["displayText"] = "SPARK SPAWNED\n",
			["yOffset"] = -40,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["url"] = "https://wago.io/TemsToGC/18",
			["actions"] = {
				["start"] = {
					["message"] = "",
					["message_format_unitName_format"] = "none",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = false,
					["message_format_c_format"] = "none",
					["do_message"] = false,
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\sonar.ogg",
					["message_type"] = "SAY",
				},
				["finish"] = {
					["do_custom"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_message"] = false,
					["do_sound"] = false,
				},
				["init"] = {
				},
			},
			["displayText_format_p_time_mod_rate"] = true,
			["keepAspectRatio"] = false,
			["model_path"] = "spells/arcanepower_state_chest.m2",
			["desaturate"] = false,
			["rotation"] = 0,
			["font"] = "Accidental Presidency",
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
						["HUNTER"] = true,
						["WARLOCK"] = true,
						["SHAMAN"] = true,
						["MAGE"] = true,
						["DRUID"] = true,
						["PALADIN"] = true,
						["PRIEST"] = true,
					},
				},
				["use_encounterid"] = true,
				["use_zone"] = false,
				["zoneIds"] = "",
				["encounterid"] = "645, 1085",
				["use_zoneIds"] = false,
				["zone"] = "",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
			["sequence"] = 1,
			["shadowXOffset"] = 1,
			["regionType"] = "texture",
			["model_st_us"] = 40,
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Circle_AlphaGradient_In.tga",
			["model_st_ry"] = 0,
			["auto"] = false,
			["tocversion"] = 30402,
			["model_st_rx"] = 270,
			["uid"] = "g2smzQUTV3m",
			["fixedWidth"] = 200,
			["model_st_tz"] = 0,
			["parent"] = "Tems ToGC - Nameplates [DO NOT MOVE]",
			["outline"] = "OUTLINE",
			["cooldown"] = true,
			["borderBackdrop"] = "Blizzard Tooltip",
			["wagoID"] = "A5ytftEJV",
			["color"] = {
				1, -- [1]
				0.011764707043767, -- [2]
				0.047058828175068, -- [3]
				1, -- [4]
			},
			["authorOptions"] = {
			},
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["shadowYOffset"] = -1,
			["borderOffset"] = 5,
			["model_x"] = 0,
			["cooldownSwipe"] = true,
			["cooldownEdge"] = true,
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["advance"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "34607",
						["useMatch_count"] = false,
						["spellId"] = "56272",
						["auranames"] = {
							"66193", -- [1]
						},
						["use_genericShowOn"] = true,
						["message_operator"] = "find('%s')",
						["destUnit"] = "player",
						["group_count"] = "0",
						["use_attackable"] = true,
						["group_countOperator"] = ">",
						["use_namerealm"] = false,
						["namerealm"] = "Crypt Guard",
						["subeventSuffix"] = "_CAST_START",
						["perUnitMode"] = "unaffected",
						["percenthealth"] = "0",
						["event"] = "Chat Message",
						["message"] = "",
						["use_spellId"] = true,
						["useExactSpellId"] = false,
						["use_destUnit"] = false,
						["use_track"] = true,
						["percenthealth_operator"] = "~=",
						["spellName"] = "Summon Corpse Scarabs",
						["duration"] = "1.5",
						["use_hostility"] = false,
						["useGroup_count"] = false,
						["combinePerUnit"] = true,
						["subeventPrefix"] = "SPELL",
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "nameplate",
						["showClones"] = true,
						["use_aggro"] = true,
						["use_npcId"] = true,
						["realSpellName"] = "Summon Corpse Scarabs",
						["use_unit"] = true,
						["use_status"] = false,
						["use_cloneId"] = false,
						["debuffType"] = "HARMFUL",
						["sourceName"] = "Crypt Guard",
						["useName"] = true,
						["unevent"] = "timed",
						["auraspellids"] = {
						},
						["use_sourceName"] = false,
						["type"] = "aura2",
						["threatUnit"] = "target",
						["names"] = {
						},
						["use_threatUnit"] = true,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["useNpcId"] = true,
						["use_message"] = false,
						["use_percenthealth"] = true,
						["use_messageType"] = false,
						["useRem"] = false,
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "target",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "function(trigger)\n    return trigger[1] and not trigger[2]\nend",
				["activeTriggerMode"] = -10,
			},
			["displayText_format_p_format"] = "timed",
			["displayText_format_p_time_legacy_floor"] = false,
			["model_fileId"] = "122968",
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["preset"] = "alphaPulse",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["model_st_ty"] = 0,
			["alpha"] = 1,
			["version"] = 18,
			["width"] = 80,
			["discrete_rotation"] = 0,
			["frameStrata"] = 5,
			["model_st_tx"] = 0,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_text_format_n_format"] = "none",
					["text_text"] = "MOVE TO ICE",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "CENTER",
					["text_shadowXOffset"] = 1,
					["text_anchorYOffset"] = 0,
					["text_fontSize"] = 10,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [2]
			},
			["height"] = 80,
			["rotate"] = true,
			["config"] = {
			},
			["displayText_format_p_time_dynamic_threshold"] = 60,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["fontSize"] = 26,
			["source"] = "import",
			["blendMode"] = "BLEND",
			["justify"] = "LEFT",
			["borderInset"] = 11,
			["mirror"] = false,
			["borderEdge"] = "None",
			["cooldownTextDisabled"] = false,
			["borderSize"] = 16,
			["border"] = false,
			["icon"] = true,
			["model_st_rz"] = 0,
			["model_z"] = 0,
			["displayText_format_p_time_precision"] = 1,
			["wordWrap"] = "WordWrap",
			["selfPoint"] = "CENTER",
			["displayText_format_p_time_format"] = 0,
			["semver"] = "2.2.2",
			["zoom"] = 0,
			["id"] = "Anubarak - Submerge Nameplate",
			["model_y"] = 0,
			["useCooldownModRate"] = true,
			["anchorFrameType"] = "NAMEPLATE",
			["internalVersion"] = 66,
			["displayIcon"] = 135731,
			["inverse"] = false,
			["scale"] = 1,
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["preferToUpdate"] = false,
		},
		["Sacred Cancer (Target)"] = {
			["user_y"] = 0,
			["user_x"] = 0,
			["authorOptions"] = {
			},
			["yOffset"] = 5.57,
			["anchorPoint"] = "CENTER",
			["desaturateBackground"] = false,
			["sameTexture"] = true,
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
						["type"] = "aura2",
						["auranames"] = {
							"53659", -- [1]
						},
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
						},
						["specificUnit"] = "target",
						["useName"] = true,
						["names"] = {
						},
						["unit"] = "member",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["endAngle"] = 360,
			["internalVersion"] = 66,
			["selfPoint"] = "CENTER",
			["alpha"] = 1,
			["desc"] = "Sacred Cancer TARGET indicator",
			["rotation"] = 0,
			["font"] = "Friz Quadrata TT",
			["slanted"] = false,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 66,
			["foregroundColor"] = {
				1, -- [1]
				0.9960784912109375, -- [2]
				0.988235354423523, -- [3]
				1, -- [4]
			},
			["crop_y"] = 0.41,
			["crop_x"] = 0.41,
			["useAdjustededMax"] = false,
			["fontSize"] = 12,
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
			["startAngle"] = 0,
			["backgroundColor"] = {
				0.5, -- [1]
				0.5, -- [2]
				0.5, -- [3]
				0.5, -- [4]
			},
			["xOffset"] = 41,
			["smoothProgress"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "progresstexture",
			["uid"] = "MLpFgYvQ9v0",
			["blendMode"] = "BLEND",
			["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
			["width"] = 66,
			["slantMode"] = "INSIDE",
			["config"] = {
			},
			["load"] = {
				["use_class"] = true,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
						[103] = true,
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["use_talent"] = false,
			},
			["mirror"] = false,
			["anchorFrameFrame"] = "TargetFrame",
			["compress"] = false,
			["id"] = "Sacred Cancer (Target)",
			["backgroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura3",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SELECTFRAME",
			["desaturateForeground"] = false,
			["auraRotation"] = 0,
			["inverse"] = false,
			["foregroundTexture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\UI-Sacred Cancer",
			["orientation"] = "ANTICLOCKWISE",
			["conditions"] = {
			},
			["information"] = {
				["forceEvents"] = true,
			},
			["backgroundOffset"] = 2,
		},
		["Dark Vortex"] = {
			["sparkWidth"] = 10,
			["sparkOffsetX"] = 0,
			["wagoID"] = "A5ytftEJV",
			["parent"] = "Tems - Twins Special Abilities [Silas WA]",
			["preferToUpdate"] = false,
			["customText"] = "function()\n    return tostring(aura_env.CanBeUsed)\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["semver"] = "2.2.2",
			["sparkRotation"] = 0,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/TemsToGC/18",
			["actions"] = {
				["start"] = {
					["custom"] = "\n\n",
					["do_message"] = false,
					["do_custom"] = false,
				},
				["finish"] = {
					["custom"] = "\n\n",
					["do_custom"] = false,
				},
				["init"] = {
					["custom"] = "aura_env.CanBeUsed = true",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["spellName"] = "",
						["use_sourceRaidFlags"] = false,
						["spellId"] = "66058",
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["duration"] = "11",
						["event"] = "Combat Log",
						["unit"] = "player",
						["names"] = {
						},
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["use_sourceUnit"] = false,
						["use_spellId"] = true,
						["type"] = "combatlog",
						["sourceUnit"] = "player",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_type"] = "event",
						["duration"] = "1",
						["event"] = "Health",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["spellIds"] = {
						},
						["custom"] = "function(event)\n    aura_env.CanBeUsed = true\n    return true\nend",
						["names"] = {
						},
						["events"] = "ENCOUNTER_START, TOGC_VALKYR_SPECIAL_ABILITIES_RESET",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [2]
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
				}, -- [3]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t)\n    return t[3]\nend",
				["activeTriggerMode"] = 1,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 66,
			["selfPoint"] = "CENTER",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["barColor2"] = {
				1, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["barColor"] = {
				0.38039219379425, -- [1]
				0.30196079611778, -- [2]
				0.64705884456635, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
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
							["property"] = "sub.3.border_visible",
						}, -- [1]
						{
							["value"] = {
								0, -- [1]
								0, -- [2]
								0, -- [3]
								0.5, -- [4]
							},
							["property"] = "backgroundColor",
						}, -- [2]
						{
							["value"] = {
								["custom"] = "WeakAuras.ScanEvents(\"TOGC_VALKYR_SPECIAL_ABILITY_USED\")\naura_env.CanBeUsed = false",
							},
							["property"] = "customcode",
						}, -- [3]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -1,
						["variable"] = "customcheck",
						["value"] = "function()\n    return not aura_env.CanBeUsed\nend",
					},
					["linked"] = true,
					["changes"] = {
						{
							["value"] = {
								0.55294120311737, -- [1]
								0.55294120311737, -- [2]
								0.55294120311737, -- [3]
								1, -- [4]
							},
							["property"] = "sub.4.text_color",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [2]
					},
				}, -- [2]
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
			["sparkOffsetY"] = 0,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["type"] = "subforeground",
				}, -- [2]
				{
					["border_size"] = 1,
					["border_anchor"] = "bar",
					["type"] = "subborder",
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = false,
					["border_edge"] = "Square Full White",
					["border_offset"] = 0,
				}, -- [3]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "Dark Vortex",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_n_format"] = "none",
					["anchorXOffset"] = 0,
					["text_text_format_p_time_precision"] = 1,
					["type"] = "subtext",
					["text_anchorXOffset"] = 2,
					["text_color"] = {
						0.80392163991928, -- [1]
						0.74117648601532, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["anchorYOffset"] = 0,
					["text_shadowYOffset"] = -1,
					["text_text_format_p_time_format"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_LEFT",
					["text_visible"] = true,
					["text_text_format_p_time_mod_rate"] = true,
					["text_fontSize"] = 12,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_text_format_p_format"] = "timed",
				}, -- [4]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%p",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_n_format"] = "none",
					["anchorXOffset"] = 0,
					["text_text_format_p_time_precision"] = 1,
					["type"] = "subtext",
					["text_anchorXOffset"] = -2,
					["text_color"] = {
						0.80392163991928, -- [1]
						0.74117648601532, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["anchorYOffset"] = 0,
					["text_shadowYOffset"] = -1,
					["text_text_format_p_time_format"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_RIGHT",
					["text_visible"] = true,
					["text_text_format_p_time_mod_rate"] = true,
					["text_fontSize"] = 12,
					["text_text_format_p_time_dynamic_threshold"] = 5,
					["text_text_format_p_format"] = "timed",
				}, -- [5]
				{
					["tick_blend_mode"] = "ADD",
					["tick_rotation"] = 0,
					["tick_xOffset"] = 0,
					["tick_desaturate"] = false,
					["automatic_length"] = true,
					["tick_thickness"] = 2,
					["type"] = "subtick",
					["use_texture"] = false,
					["tick_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["tick_placement"] = "5",
					["tick_texture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
					["tick_yOffset"] = 0,
					["tick_visible"] = true,
					["tick_length"] = 30,
					["tick_mirror"] = false,
					["tick_placement_mode"] = "AtValue",
				}, -- [6]
			},
			["gradientOrientation"] = "HORIZONTAL",
			["sparkRotationMode"] = "AUTO",
			["load"] = {
				["use_encounterid"] = true,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "1089, 641",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["uid"] = "y1jqp9JdNyu",
			["source"] = "import",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["icon"] = true,
			["width"] = 200,
			["frameStrata"] = 1,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["height"] = 20,
			["id"] = "Dark Vortex",
			["icon_side"] = "LEFT",
			["xOffset"] = 0,
			["sparkHeight"] = 30,
			["texture"] = "Solid",
			["zoom"] = 0.3,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["spark"] = false,
			["tocversion"] = 30402,
			["sparkHidden"] = "NEVER",
			["version"] = 18,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["authorOptions"] = {
			},
			["config"] = {
			},
			["inverse"] = false,
			["enableGradient"] = false,
			["orientation"] = "HORIZONTAL",
			["displayIcon"] = 136202,
			["information"] = {
			},
			["iconSource"] = 0,
		},
		["Champions - Death Grip"] = {
			["sparkWidth"] = 10,
			["iconSource"] = 0,
			["wagoID"] = "A5ytftEJV",
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["url"] = "https://wago.io/TemsToGC/18",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "combatlog",
						["spellId"] = "66017",
						["subeventSuffix"] = "_CAST_SUCCESS",
						["duration"] = "20",
						["event"] = "Combat Log",
						["use_sourceFlags2"] = true,
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["sourceFlags2"] = "Hostile",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_type"] = "event",
						["duration"] = "8",
						["event"] = "Health",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["spellIds"] = {
						},
						["custom"] = "function(event)\n    return true\nend",
						["names"] = {
						},
						["events"] = "ENCOUNTER_START",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "combatlog",
						["spellId"] = "66017",
						["subeventSuffix"] = "_CAST_SUCCESS",
						["duration"] = "99",
						["event"] = "Combat Log",
						["use_sourceFlags2"] = true,
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["sourceFlags2"] = "Hostile",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [3]
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_type"] = "event",
						["duration"] = "99",
						["event"] = "Health",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["spellIds"] = {
						},
						["custom"] = "function(event)\n    return true\nend",
						["names"] = {
						},
						["events"] = "ENCOUNTER_START",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [4]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 66,
			["zoom"] = 0.3,
			["selfPoint"] = "CENTER",
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
			["barColor"] = {
				0.80392163991928, -- [1]
				0.45098042488098, -- [2]
				0.79607850313187, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["barColor2"] = {
				1, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 0,
							}, -- [1]
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 0,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = {
								0.80392163991928, -- [1]
								0.45098042488098, -- [2]
								0.79607850313187, -- [3]
								1, -- [4]
							},
							["property"] = "backgroundColor",
						}, -- [1]
						{
							["property"] = "sub.4.text_visible",
						}, -- [2]
						{
							["property"] = "sub.6.text_visible",
						}, -- [3]
						{
							["value"] = true,
							["property"] = "sub.5.text_visible",
						}, -- [4]
					},
				}, -- [1]
			},
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["type"] = "subforeground",
				}, -- [2]
				{
					["border_size"] = 1,
					["border_anchor"] = "bar",
					["type"] = "subborder",
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_offset"] = 0,
				}, -- [3]
				{
					["text_text_format_n_format"] = "none",
					["text_text"] = "Next Grip",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_LEFT",
					["text_shadowXOffset"] = 1,
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [4]
				{
					["text_text_format_n_format"] = "none",
					["text_text"] = "Death Grip Soon",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_LEFT",
					["text_shadowXOffset"] = 1,
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_visible"] = false,
				}, -- [5]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%p",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_time_format"] = 0,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["type"] = "subtext",
					["text_anchorXOffset"] = -2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_text_format_p_time_precision"] = 1,
					["text_shadowYOffset"] = -1,
					["anchorYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_RIGHT",
					["text_visible"] = true,
					["text_text_format_p_format"] = "timed",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_mod_rate"] = true,
				}, -- [6]
			},
			["height"] = 20,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["load"] = {
				["use_encounterid"] = true,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "637, 1086",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["parent"] = "Tems ToGC - Timers",
			["source"] = "import",
			["gradientOrientation"] = "HORIZONTAL",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["enableGradient"] = false,
			["anchorFrameType"] = "SCREEN",
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["alpha"] = 1,
			["config"] = {
			},
			["icon_side"] = "LEFT",
			["id"] = "Champions - Death Grip",
			["sparkHeight"] = 30,
			["texture"] = "Melli",
			["spark"] = false,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["semver"] = "2.2.2",
			["tocversion"] = 30402,
			["sparkHidden"] = "NEVER",
			["icon"] = true,
			["frameStrata"] = 1,
			["width"] = 200,
			["sparkOffsetX"] = 0,
			["uid"] = "AA(h9HvaRXW",
			["inverse"] = false,
			["sparkOffsetY"] = 0,
			["orientation"] = "HORIZONTAL",
			["displayIcon"] = 237532,
			["information"] = {
			},
			["authorOptions"] = {
			},
		},
		["Beasts - Staggering Stomp"] = {
			["sparkWidth"] = 10,
			["iconSource"] = 0,
			["wagoID"] = "A5ytftEJV",
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["url"] = "https://wago.io/TemsToGC/18",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "event",
						["debuffType"] = "HELPFUL",
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["duration"] = "37",
						["event"] = "Chat Message",
						["unit"] = "player",
						["message"] = "Hailing from the deepest, darkest caverns of the Storm Peaks, Gormok the Impaler! Battle on, heroes",
						["custom_type"] = "event",
						["spellIds"] = {
						},
						["names"] = {
						},
						["use_message"] = true,
						["events"] = "ENCOUNTER_START",
						["message_operator"] = "find('%s')",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "combatlog",
						["spellId"] = "66330",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "21",
						["event"] = "Combat Log",
						["unit"] = "player",
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "combatlog",
						["spellId"] = "66330",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "99",
						["event"] = "Combat Log",
						["unit"] = "player",
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [3]
				{
					["trigger"] = {
						["type"] = "event",
						["debuffType"] = "HELPFUL",
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["duration"] = "60",
						["event"] = "Chat Message",
						["unit"] = "player",
						["message"] = "Hailing from the deepest, darkest caverns of the Storm Peaks, Gormok the Impaler! Battle on, heroes",
						["custom_type"] = "event",
						["spellIds"] = {
						},
						["names"] = {
						},
						["use_message"] = true,
						["events"] = "ENCOUNTER_START",
						["message_operator"] = "find('%s')",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [4]
				{
					["trigger"] = {
						["type"] = "event",
						["debuffType"] = "HELPFUL",
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["duration"] = "99",
						["event"] = "Chat Message",
						["unit"] = "player",
						["message"] = "Steel yourselves, heroes, for the twin terrors, Acidmaw and Dreadscale, enter the arena",
						["custom_type"] = "event",
						["spellIds"] = {
						},
						["names"] = {
						},
						["use_message"] = true,
						["events"] = "ENCOUNTER_START",
						["message_operator"] = "find('%s')",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [5]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(trigger)\n    return (trigger[1] or trigger[2] or trigger[3] or trigger[4]) and not trigger[5]\nend",
				["activeTriggerMode"] = -10,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 66,
			["zoom"] = 0.3,
			["selfPoint"] = "CENTER",
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
			["barColor"] = {
				0.61568629741669, -- [1]
				0.40000003576279, -- [2]
				0.75686281919479, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["barColor2"] = {
				1, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 0,
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 0,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = {
								0.61568629741669, -- [1]
								0.40000003576279, -- [2]
								0.75686281919479, -- [3]
								1, -- [4]
							},
							["property"] = "backgroundColor",
						}, -- [1]
						{
							["property"] = "sub.4.text_visible",
						}, -- [2]
						{
							["property"] = "sub.6.text_visible",
						}, -- [3]
						{
							["value"] = true,
							["property"] = "sub.5.text_visible",
						}, -- [4]
					},
				}, -- [1]
			},
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["type"] = "subforeground",
				}, -- [2]
				{
					["border_size"] = 1,
					["border_anchor"] = "bar",
					["type"] = "subborder",
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_offset"] = 0,
				}, -- [3]
				{
					["text_text_format_n_format"] = "none",
					["text_text"] = "Next Stomp",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_LEFT",
					["text_shadowXOffset"] = 1,
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [4]
				{
					["text_text_format_n_format"] = "none",
					["text_text"] = "Stomp Soon",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_LEFT",
					["text_shadowXOffset"] = 1,
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_visible"] = false,
				}, -- [5]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%p",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_time_format"] = 0,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["type"] = "subtext",
					["text_anchorXOffset"] = -2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_text_format_p_time_precision"] = 1,
					["text_shadowYOffset"] = -1,
					["anchorYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_RIGHT",
					["text_visible"] = true,
					["text_text_format_p_format"] = "timed",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_mod_rate"] = true,
				}, -- [6]
			},
			["height"] = 20,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["load"] = {
				["use_zoneIds"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "629, 1088",
				["use_encounterid"] = true,
				["zoneIds"] = "172",
				["class"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["parent"] = "Tems ToGC - Timers",
			["source"] = "import",
			["gradientOrientation"] = "HORIZONTAL",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["enableGradient"] = false,
			["anchorFrameType"] = "SCREEN",
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["alpha"] = 1,
			["config"] = {
			},
			["icon_side"] = "LEFT",
			["id"] = "Beasts - Staggering Stomp",
			["sparkHeight"] = 30,
			["texture"] = "Melli",
			["spark"] = false,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["semver"] = "2.2.2",
			["tocversion"] = 30402,
			["sparkHidden"] = "NEVER",
			["icon"] = true,
			["frameStrata"] = 1,
			["width"] = 200,
			["sparkOffsetX"] = 0,
			["uid"] = "wi6Btk4qm0y",
			["inverse"] = false,
			["sparkOffsetY"] = 0,
			["orientation"] = "HORIZONTAL",
			["displayIcon"] = "132154",
			["information"] = {
			},
			["authorOptions"] = {
			},
		},
		["Beasts - Slime Pool Texture"] = {
			["user_y"] = 0,
			["user_x"] = 0,
			["authorOptions"] = {
			},
			["displayText_format_p_time_dynamic_threshold"] = 60,
			["yOffset"] = 0,
			["foregroundColor"] = {
				0.40392160415649, -- [1]
				0.76470595598221, -- [2]
				0.44313728809357, -- [3]
				1, -- [4]
			},
			["displayText_format_p_time_format"] = 0,
			["sameTexture"] = true,
			["url"] = "https://wago.io/TemsToGC/18",
			["backgroundColor"] = {
				0.50196081399918, -- [1]
				0.50196081399918, -- [2]
				0.50196081399918, -- [3]
				0, -- [4]
			},
			["displayText_format_p_time_mod_rate"] = true,
			["selfPoint"] = "CENTER",
			["rotation"] = 0,
			["font"] = "KMT-GothamXN_Ultra",
			["crop_y"] = 0.41,
			["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
			["foregroundTexture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Ring_20px.tga",
			["shadowXOffset"] = 1,
			["useAdjustededMin"] = false,
			["regionType"] = "text",
			["blendMode"] = "BLEND",
			["slantMode"] = "INSIDE",
			["compress"] = false,
			["alpha"] = 1,
			["auraRotation"] = 0,
			["fixedWidth"] = 200,
			["backgroundOffset"] = 2,
			["outline"] = "OUTLINE",
			["wagoID"] = "A5ytftEJV",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["shadowYOffset"] = -1,
			["desaturateBackground"] = false,
			["customTextUpdate"] = "event",
			["automaticWidth"] = "Auto",
			["desaturateForeground"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["use_amount"] = true,
						["type"] = "combatlog",
						["spellId"] = "66881",
						["subeventSuffix"] = "_DAMAGE",
						["names"] = {
						},
						["duration"] = "2",
						["event"] = "Combat Log",
						["unit"] = "player",
						["destUnit"] = "player",
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["amount"] = "0",
						["subeventPrefix"] = "SPELL",
						["use_destUnit"] = true,
						["amount_operator"] = "~=",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["endAngle"] = 360,
			["displayText_format_p_time_legacy_floor"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "preset",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["preset"] = "alphaPulse",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 140,
			["useAdjustededMax"] = false,
			["fontSize"] = 20,
			["source"] = "import",
			["parent"] = "Tems ToGC - Casts",
			["backgroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura3",
			["crop_x"] = 0.41,
			["mirror"] = false,
			["orientation"] = "ANTICLOCKWISE",
			["uid"] = "MPLGnntJo2i",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\heartbeat.ogg",
					["do_sound"] = true,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["startAngle"] = 0,
			["load"] = {
				["use_encounterid"] = true,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "629, 1088",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["width"] = 140,
			["displayText_format_p_format"] = "timed",
			["displayText_format_p_time_precision"] = 1,
			["config"] = {
			},
			["displayText"] = "** MOVE OUT **",
			["justify"] = "LEFT",
			["semver"] = "2.2.2",
			["xOffset"] = 0,
			["id"] = "Beasts - Slime Pool Texture",
			["anchorPoint"] = "CENTER",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["tocversion"] = 30402,
			["internalVersion"] = 66,
			["inverse"] = false,
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
			["preferToUpdate"] = false,
		},
		["Special Abilities Counter"] = {
			["outline"] = "OUTLINE",
			["iconSource"] = -1,
			["wagoID"] = "A5ytftEJV",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    return aura_env.n\nend",
			["shadowYOffset"] = -1,
			["anchorPoint"] = "CENTER",
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
			["cooldownSwipe"] = true,
			["displayText_format_p_time_format"] = 0,
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/TemsToGC/18",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_type"] = "event",
						["debuffType"] = "HELPFUL",
						["duration"] = "1",
						["event"] = "Health",
						["customStacks"] = "\n\n",
						["names"] = {
						},
						["spellIds"] = {
						},
						["custom"] = "function(event)\n    if event == \"ENCOUNTER_START\" then\n        aura_env.n = 0\n    end\n    \n    if event == \"TOGC_VALKYR_SPECIAL_ABILITY_USED\" then\n        aura_env.n = (aura_env.n + 1) % 4\n        if aura_env.n == 0  then\n            C_Timer.After(17, function() WeakAuras.ScanEvents(\"TOGC_VALKYR_SPECIAL_ABILITIES_RESET\") end)\n        end\n    end\n    return true\nend",
						["events"] = "ENCOUNTER_START, TOGC_VALKYR_SPECIAL_ABILITY_USED",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "unit",
						["use_alwaystrue"] = true,
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
						["event"] = "Conditions",
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["displayText_format_p_time_mod_rate"] = true,
			["internalVersion"] = 66,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["authorOptions"] = {
			},
			["displayText"] = "",
			["yOffset"] = 130,
			["desaturate"] = false,
			["xOffset"] = 0,
			["font"] = "Expressway",
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 64,
			["automaticWidth"] = "Auto",
			["load"] = {
				["use_encounterid"] = true,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "1089, 641",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["displayText_format_s_format"] = "none",
			["actions"] = {
				["start"] = {
					["custom"] = "\n\n",
					["do_custom"] = false,
				},
				["finish"] = {
					["custom"] = "\n\n",
					["do_custom"] = false,
				},
				["init"] = {
					["custom"] = "aura_env.n = 0",
					["do_custom"] = true,
				},
			},
			["fontSize"] = 22,
			["source"] = "import",
			["displayText_format_p_format"] = "timed",
			["shadowXOffset"] = 1,
			["displayText_format_p_time_legacy_floor"] = false,
			["wordWrap"] = "WordWrap",
			["displayText_format_p_time_dynamic_threshold"] = 60,
			["regionType"] = "text",
			["useCooldownModRate"] = true,
			["cooldownEdge"] = false,
			["displayText_format_c_format"] = "none",
			["information"] = {
			},
			["fixedWidth"] = 200,
			["displayText_format_p_time_precision"] = 1,
			["parent"] = "Tems - Twins Special Abilities [Silas WA]",
			["width"] = 64,
			["zoom"] = 0,
			["semver"] = "2.2.2",
			["tocversion"] = 30402,
			["id"] = "Special Abilities Counter",
			["uid"] = "LgUX(LNZsLT",
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["config"] = {
			},
			["inverse"] = false,
			["cooldownTextDisabled"] = false,
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["justify"] = "LEFT",
		},
		["Death"] = {
			["iconSource"] = 0,
			["wagoID"] = "lkrS6uIit",
			["parent"] = "Trinket ICD Tracker",
			["preferToUpdate"] = false,
			["yOffset"] = -148.9864388833162,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "60203",
						["duration"] = "45",
						["unit"] = "player",
						["destUnit"] = "target",
						["debuffType"] = "HELPFUL",
						["type"] = "combatlog",
						["subeventSuffix"] = "_DAMAGE",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["event"] = "Combat Log",
						["spellName"] = "Darkmoon Card: Death",
						["use_spellId"] = true,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["use_sourceUnit"] = true,
						["auraType"] = "BUFF",
						["use_destUnit"] = false,
						["sourceUnit"] = "player",
						["use_auraType"] = false,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "function(t)\n    return t[1] or t[2]\nend",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 66,
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
			["desaturate"] = false,
			["version"] = 1,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_shadowXOffset"] = 0,
					["text_text"] = "%p",
					["anchorXOffset"] = 0,
					["text_text_format_p_gcd_cast"] = false,
					["text_text_format_p_time_mod_rate"] = true,
					["text_text_format_p_format"] = "Number",
					["text_selfPoint"] = "BOTTOM",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_time_format"] = 0,
					["text_font"] = "DorisPP",
					["text_text_format_p_decimal_precision"] = 0,
					["type"] = "subtext",
					["text_text_format_p_gcd_gcd"] = true,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_text_format_p_gcd_channel"] = false,
					["text_visible"] = true,
					["text_anchorYOffset"] = -22,
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_gcd_hide_zero"] = false,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_fontSize"] = 15,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_text_format_p_round_type"] = "floor",
				}, -- [2]
			},
			["height"] = 40,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["itemequiped"] = 42990,
				["use_itemequiped"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["uid"] = "x64ujypkcCH",
			["url"] = "",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["selfPoint"] = "CENTER",
			["information"] = {
				["forceEvents"] = true,
			},
			["displayIcon"] = "237165",
			["authorOptions"] = {
			},
			["zoom"] = 0,
			["width"] = 40,
			["cooldownTextDisabled"] = true,
			["semver"] = "1.0.0",
			["tocversion"] = 30400,
			["id"] = "Death",
			["useCooldownModRate"] = true,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["config"] = {
			},
			["inverse"] = true,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["value"] = 1,
								["variable"] = "show",
							}, -- [1]
							{
								["value"] = 1,
								["variable"] = "show",
							}, -- [2]
							{
								["value"] = 0,
								["variable"] = "show",
							}, -- [3]
						},
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 40,
							["property"] = "height",
						}, -- [2]
						{
							["value"] = 40,
							["property"] = "width",
						}, -- [3]
						{
							["value"] = true,
						}, -- [4]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [5]
						{
							["value"] = true,
						}, -- [6]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 1,
							}, -- [1]
							{
								["value"] = 0,
								["variable"] = "show",
							}, -- [2]
							{
								["value"] = 1,
								["variable"] = "show",
							}, -- [3]
						},
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 40,
							["property"] = "height",
						}, -- [2]
						{
							["value"] = 40,
							["property"] = "width",
						}, -- [3]
						{
							["value"] = true,
						}, -- [4]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [5]
						{
							["value"] = {
								0.98039215686275, -- [1]
								1, -- [2]
								0.97647058823529, -- [3]
								0.65151450037956, -- [4]
							},
							["property"] = "color",
						}, -- [6]
						{
							["value"] = true,
							["property"] = "cooldownSwipe",
						}, -- [7]
						{
							["value"] = false,
						}, -- [8]
					},
				}, -- [2]
			},
			["cooldown"] = true,
			["xOffset"] = -184.31969336191,
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
						["realSpellName"] = 58984,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["type"] = "spell",
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["use_track"] = true,
						["spellName"] = 58984,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 66,
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
					["single"] = "NightElf",
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
			["displayIcon"] = "132331",
			["cooldown"] = true,
			["xOffset"] = -555.2334365844727,
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
			["desc"] = "Displays MELD cooldown icon.",
			["cooldownTextDisabled"] = false,
			["zoom"] = 0,
			["config"] = {
			},
			["alpha"] = 1,
			["id"] = "WOTF",
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["width"] = 50,
			["useCooldownModRate"] = true,
			["uid"] = "IPzpPhZljg3",
			["inverse"] = true,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["conditions"] = {
			},
			["information"] = {
				["forceEvents"] = true,
			},
			["authorOptions"] = {
			},
		},
		["Anubarak - Burrow Soon"] = {
			["sparkWidth"] = 10,
			["iconSource"] = -1,
			["xOffset"] = 0,
			["displayText"] = "** Submerge in %p **",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["displayText_format_p_time_format"] = 0,
			["url"] = "https://wago.io/TemsToGC/18",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\sonar.ogg",
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["enableGradient"] = true,
			["wordWrap"] = "WordWrap",
			["displayText_format_1.unitName_format"] = "Unit",
			["barColor"] = {
				0.84705889225006, -- [1]
				0.96862751245499, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["font"] = "KMT-GothamXN_Ultra",
			["sparkOffsetY"] = 0,
			["gradientOrientation"] = "HORIZONTAL",
			["load"] = {
				["use_encounterid"] = true,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "645, 1085",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["shadowXOffset"] = 1,
			["useAdjustededMin"] = false,
			["regionType"] = "text",
			["displayText_format_1.unitName_color"] = "class",
			["texture"] = "Melli",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["spark"] = false,
			["tocversion"] = 30402,
			["alpha"] = 1,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["fixedWidth"] = 200,
			["outline"] = "None",
			["sparkOffsetX"] = 0,
			["wagoID"] = "A5ytftEJV",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["shadowYOffset"] = -1,
			["customTextUpdate"] = "event",
			["automaticWidth"] = "Auto",
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = 65876,
						["auranames"] = {
							"67574", -- [1]
						},
						["use_exact_spellId"] = true,
						["message_operator"] = "find('%s')",
						["subeventPrefix"] = "SPELL",
						["use_unit"] = true,
						["useAffected"] = true,
						["use_delay"] = true,
						["combineMode"] = "showHighest",
						["duration"] = "8",
						["debuffType"] = "HARMFUL",
						["group_countOperator"] = "~=",
						["useGroup_count"] = true,
						["useName"] = true,
						["type"] = "event",
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "group",
						["message"] = "emerges from the ground",
						["event"] = "Chat Message",
						["fetchRaidMark"] = false,
						["ignoreDisconnected"] = false,
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["ignoreDead"] = true,
						["use_message"] = true,
						["names"] = {
						},
						["delay"] = 72,
						["group_count"] = "0",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "event",
						["use_count"] = false,
						["use_eventtype"] = true,
						["unit"] = "player",
						["duration"] = "8",
						["event"] = "Health",
						["eventtype"] = "ENCOUNTER_START",
						["custom_type"] = "event",
						["encounterId"] = "645",
						["events"] = "ENCOUNTER_START",
						["use_delay"] = true,
						["use_encounterId"] = true,
						["dynamicDuration"] = false,
						["delay"] = 72,
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "function(trigger)\n    return trigger[1] or trigger[2]\nend",
				["activeTriggerMode"] = -10,
			},
			["displayText_format_p_format"] = "timed",
			["displayText_format_p_time_legacy_floor"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["preset"] = "alphaPulse",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["internalVersion"] = 66,
			["barColor2"] = {
				0.50980395078659, -- [1]
				0.13333334028721, -- [2]
				0.14901961386204, -- [3]
				1, -- [4]
			},
			["displayText_format_1.unitName_abbreviate"] = true,
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 22,
			["orientation"] = "HORIZONTAL",
			["displayIcon"] = 132212,
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["displayText_format_1.unitName_abbreviate_max"] = 8,
			["source"] = "import",
			["config"] = {
			},
			["displayText_format_p_time_mod_rate"] = true,
			["sparkRotationMode"] = "AUTO",
			["width"] = 290,
			["parent"] = "Tems ToGC - Casts",
			["authorOptions"] = {
			},
			["id"] = "Anubarak - Burrow Soon",
			["sparkRotation"] = 0,
			["icon_side"] = "LEFT",
			["justify"] = "LEFT",
			["displayText_format_p_time_precision"] = 1,
			["sparkHeight"] = 30,
			["icon"] = true,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.51000002026558, -- [4]
			},
			["displayText_format_1.unitName_realm_name"] = "never",
			["semver"] = "2.2.2",
			["fontSize"] = 20,
			["sparkHidden"] = "NEVER",
			["displayText_format_p_time_dynamic_threshold"] = 10,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["uid"] = "zy0VuufnaOd",
			["selfPoint"] = "BOTTOM",
			["inverse"] = false,
			["zoom"] = 0.3,
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "OR",
						["checks"] = {
							{
								["trigger"] = 1,
								["op"] = "<=",
								["value"] = "5",
								["variable"] = "expirationTime",
							}, -- [1]
							{
								["trigger"] = 2,
								["op"] = "<=",
								["value"] = "5",
								["variable"] = "expirationTime",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = 24,
							["property"] = "fontSize",
						}, -- [1]
						{
							["value"] = {
								1, -- [1]
								0.83137261867523, -- [2]
								0.5137255191803, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [2]
						{
							["value"] = {
								["sound_type"] = "Play",
								["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Glass.mp3",
								["sound_channel"] = "Master",
							},
							["property"] = "sound",
						}, -- [3]
					},
				}, -- [1]
			},
			["information"] = {
			},
			["preferToUpdate"] = false,
		},
		["Champions - Bladestorm Cast"] = {
			["sparkWidth"] = 10,
			["iconSource"] = 0,
			["wagoID"] = "A5ytftEJV",
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["url"] = "https://wago.io/TemsToGC/18",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.51000002026558, -- [4]
			},
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "65947",
						["duration"] = "8",
						["genericShowOn"] = "showOnCooldown",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["type"] = "combatlog",
						["subeventSuffix"] = "_AURA_APPLIED",
						["unit"] = "nameplate",
						["use_genericShowOn"] = true,
						["event"] = "Combat Log",
						["use_spellId"] = true,
						["realSpellName"] = 0,
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["spellName"] = 0,
						["use_exact_spellId"] = false,
						["names"] = {
						},
						["use_track"] = true,
						["use_unit"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 66,
			["zoom"] = 0.3,
			["selfPoint"] = "CENTER",
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
			["barColor"] = {
				0.80392163991928, -- [1]
				0.36078432202339, -- [2]
				0.17647059261799, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["barColor2"] = {
				0.79215693473816, -- [1]
				0.57647061347961, -- [2]
				0.26274511218071, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["type"] = "subforeground",
				}, -- [2]
				{
					["border_size"] = 1,
					["border_anchor"] = "bg",
					["type"] = "subborder",
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_offset"] = 1,
				}, -- [3]
				{
					["text_text_format_n_format"] = "none",
					["text_text"] = "BLADESTORM",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_LEFT",
					["text_shadowXOffset"] = 1,
					["text_fontSize"] = 14,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [4]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%p",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_time_format"] = 0,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["type"] = "subtext",
					["text_anchorXOffset"] = -2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_text_format_p_time_precision"] = 1,
					["text_shadowYOffset"] = -1,
					["anchorYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_RIGHT",
					["text_visible"] = true,
					["text_text_format_p_format"] = "timed",
					["text_fontSize"] = 14,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_mod_rate"] = true,
				}, -- [5]
			},
			["height"] = 22,
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\sonar.ogg",
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["load"] = {
				["use_encounterid"] = true,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "637, 1086",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["parent"] = "Tems ToGC - Casts",
			["source"] = "import",
			["gradientOrientation"] = "HORIZONTAL",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["enableGradient"] = true,
			["anchorFrameType"] = "SCREEN",
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["alpha"] = 1,
			["config"] = {
			},
			["icon_side"] = "LEFT",
			["id"] = "Champions - Bladestorm Cast",
			["sparkHeight"] = 30,
			["texture"] = "Clean",
			["spark"] = false,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["semver"] = "2.2.2",
			["tocversion"] = 30402,
			["sparkHidden"] = "NEVER",
			["icon"] = true,
			["frameStrata"] = 1,
			["width"] = 290,
			["sparkOffsetX"] = 0,
			["uid"] = "q0d3(YK)ACG",
			["inverse"] = true,
			["sparkOffsetY"] = 0,
			["orientation"] = "HORIZONTAL",
			["displayIcon"] = 236303,
			["information"] = {
			},
			["authorOptions"] = {
			},
		},
		["Beasts - Slime Pool Cast"] = {
			["sparkWidth"] = 10,
			["iconSource"] = 0,
			["wagoID"] = "A5ytftEJV",
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["url"] = "https://wago.io/TemsToGC/18",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.51000002026558, -- [4]
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "combatlog",
						["spellId"] = "66883",
						["subeventSuffix"] = "_CAST_SUCCESS",
						["duration"] = "2",
						["event"] = "Combat Log",
						["unit"] = "player",
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 66,
			["zoom"] = 0.3,
			["selfPoint"] = "CENTER",
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
			["barColor"] = {
				0.34509804844856, -- [1]
				0.8117647767067, -- [2]
				0.6235294342041, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["barColor2"] = {
				1, -- [1]
				0.9764706492424, -- [2]
				0.97254908084869, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["type"] = "subforeground",
				}, -- [2]
				{
					["border_size"] = 1,
					["border_anchor"] = "bg",
					["type"] = "subborder",
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_offset"] = 1,
				}, -- [3]
				{
					["text_text_format_n_format"] = "none",
					["text_text"] = "MOVE BOSS",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_LEFT",
					["text_shadowXOffset"] = 1,
					["text_fontSize"] = 14,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [4]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%p",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_time_format"] = 0,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["type"] = "subtext",
					["text_anchorXOffset"] = -2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_text_format_p_time_precision"] = 1,
					["text_shadowYOffset"] = -1,
					["anchorYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_RIGHT",
					["text_visible"] = true,
					["text_text_format_p_format"] = "timed",
					["text_fontSize"] = 14,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_mod_rate"] = true,
				}, -- [5]
			},
			["height"] = 22,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["load"] = {
				["use_encounterid"] = true,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "629, 1088",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["parent"] = "Tems ToGC - Casts",
			["source"] = "import",
			["gradientOrientation"] = "HORIZONTAL",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["enableGradient"] = true,
			["anchorFrameType"] = "SCREEN",
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["alpha"] = 1,
			["config"] = {
			},
			["icon_side"] = "LEFT",
			["id"] = "Beasts - Slime Pool Cast",
			["sparkHeight"] = 30,
			["texture"] = "Clean",
			["spark"] = false,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["semver"] = "2.2.2",
			["tocversion"] = 30402,
			["sparkHidden"] = "NEVER",
			["icon"] = true,
			["frameStrata"] = 1,
			["width"] = 290,
			["sparkOffsetX"] = 0,
			["uid"] = "K8OT4tzuPge",
			["inverse"] = true,
			["sparkOffsetY"] = 0,
			["orientation"] = "HORIZONTAL",
			["displayIcon"] = 136006,
			["information"] = {
			},
			["authorOptions"] = {
			},
		},
		["Jaraxxus - Buff"] = {
			["outline"] = "None",
			["wagoID"] = "A5ytftEJV",
			["xOffset"] = 0,
			["displayText"] = "** [%s]Nether Power Remaining **",
			["shadowYOffset"] = -1,
			["anchorPoint"] = "CENTER",
			["displayText_format_p_time_format"] = 0,
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/TemsToGC/18",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Glass.mp3",
					["do_sound"] = true,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "33715",
						["spellId"] = "56272",
						["auranames"] = {
							"66228", -- [1]
						},
						["duration"] = "1.5",
						["message_operator"] = "find('%s')",
						["destUnit"] = "player",
						["group_count"] = "0",
						["use_attackable"] = true,
						["group_countOperator"] = ">",
						["use_namerealm"] = false,
						["namerealm"] = "Crypt Guard",
						["subeventSuffix"] = "_CAST_START",
						["percenthealth"] = "0",
						["event"] = "Chat Message",
						["message"] = "",
						["use_spellId"] = true,
						["use_destUnit"] = false,
						["use_track"] = true,
						["useExactSpellId"] = false,
						["use_hostility"] = false,
						["useGroup_count"] = true,
						["percenthealth_operator"] = "~=",
						["subeventPrefix"] = "SPELL",
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["showClones"] = false,
						["use_genericShowOn"] = true,
						["unit"] = "nameplate",
						["use_npcId"] = true,
						["use_threatUnit"] = true,
						["type"] = "aura2",
						["use_cloneId"] = false,
						["debuffType"] = "HELPFUL",
						["use_sourceName"] = false,
						["sourceName"] = "Crypt Guard",
						["unevent"] = "timed",
						["auraspellids"] = {
						},
						["useName"] = true,
						["names"] = {
						},
						["threatUnit"] = "target",
						["use_status"] = false,
						["realSpellName"] = "Summon Corpse Scarabs",
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["spellName"] = "Summon Corpse Scarabs",
						["use_message"] = false,
						["use_percenthealth"] = true,
						["use_messageType"] = false,
						["use_aggro"] = true,
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "target",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["displayText_format_p_format"] = "timed",
			["internalVersion"] = 66,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["preset"] = "alphaPulse",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["displayText_format_1.unitName_format"] = "none",
			["displayText_format_1.destName_abbreviate_max"] = 8,
			["displayText_format_1.destName_format"] = "Unit",
			["font"] = "KMT-GothamXN_Ultra",
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["color"] = {
				1, -- [1]
				0.60000002384186, -- [2]
				0.91372555494308, -- [3]
				1, -- [4]
			},
			["load"] = {
				["use_encounterid"] = true,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "633, 1087",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["displayText_format_s_format"] = "none",
			["preferToUpdate"] = false,
			["fontSize"] = 20,
			["source"] = "import",
			["fixedWidth"] = 200,
			["shadowXOffset"] = 1,
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["displayText_format_p_time_legacy_floor"] = false,
			["authorOptions"] = {
			},
			["regionType"] = "text",
			["config"] = {
			},
			["wordWrap"] = "WordWrap",
			["displayText_format_1.destName_realm_name"] = "never",
			["displayText_format_sx_format"] = "none",
			["displayText_format_p_time_precision"] = 1,
			["parent"] = "Tems ToGC - Casts",
			["id"] = "Jaraxxus - Buff",
			["semver"] = "2.2.2",
			["justify"] = "LEFT",
			["tocversion"] = 30402,
			["displayText_format_1.destName_abbreviate"] = false,
			["displayText_format_p_time_mod_rate"] = true,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["yOffset"] = 0,
			["uid"] = "o5(xor(9phE",
			["selfPoint"] = "BOTTOM",
			["displayText_format_p_time_dynamic_threshold"] = 10,
			["displayText_format_1.destName_color"] = "class",
			["conditions"] = {
			},
			["information"] = {
			},
			["automaticWidth"] = "Auto",
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
				{
					["trigger"] = {
						["useRem"] = false,
						["type"] = "aura2",
						["useStacks"] = false,
						["useExactSpellId"] = false,
						["useTotal"] = false,
						["matchesShowOn"] = "showOnActive",
						["event"] = "Health",
						["unit"] = "focus",
						["unitExists"] = false,
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
						},
						["names"] = {
						},
						["useName"] = true,
						["subeventPrefix"] = "SPELL",
						["auranames"] = {
							"19746", -- [1]
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 66,
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
				["size"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
						[103] = true,
					},
				},
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
				["use_ignoreNameRealm"] = false,
				["use_talent"] = false,
			},
			["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
			["mirror"] = false,
			["anchorFrameFrame"] = "FocusFrame",
			["regionType"] = "texture",
			["blendMode"] = "ADD",
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\UI-FOCUSFRAME-LARGE-FLASH",
			["authorOptions"] = {
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
			["discrete_rotation"] = 0,
			["id"] = "AURA MASTERY focus",
			["alpha"] = 1,
			["frameStrata"] = 2,
			["anchorFrameType"] = "SELECTFRAME",
			["config"] = {
			},
			["uid"] = "9BBiT8OblIu",
			["inverse"] = false,
			["width"] = 256,
			["conditions"] = {
			},
			["information"] = {
				["forceEvents"] = true,
			},
			["color"] = {
				1, -- [1]
				0, -- [2]
				0.02745098039215686, -- [3]
				1, -- [4]
			},
		},
		["ToGC"] = {
			["controlledChildren"] = {
				"Tems ToGC - Casts", -- [1]
				"Tems ToGC - Icons", -- [2]
				"Tems ToGC - Timers", -- [3]
				"Tems - Twins Special Abilities [Silas WA]", -- [4]
				"Tems ToGC - Central Textures", -- [5]
				"Tems ToGC - Nameplates [DO NOT MOVE]", -- [6]
				"Tems ToGC - Glow [DO NOT MOVE]", -- [7]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["wagoID"] = "A5ytftEJV",
			["parent"] = "Tems ToGC Pack",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["url"] = "https://wago.io/TemsToGC/18",
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
						["names"] = {
						},
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["event"] = "Health",
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["internalVersion"] = 66,
			["selfPoint"] = "CENTER",
			["version"] = 18,
			["subRegions"] = {
			},
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
			},
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["source"] = "import",
			["scale"] = 1,
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "group",
			["borderSize"] = 2,
			["config"] = {
			},
			["borderOffset"] = 4,
			["semver"] = "2.2.2",
			["tocversion"] = 30402,
			["id"] = "ToGC",
			["groupIcon"] = "236689",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
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
			["borderInset"] = 1,
			["authorOptions"] = {
			},
			["uid"] = "E5sh6H2sh98",
			["conditions"] = {
			},
			["information"] = {
			},
			["xOffset"] = 0,
		},
		["Tems ToGC - Central Textures"] = {
			["controlledChildren"] = {
				"Beasts - Combat", -- [1]
				"Beasts - Whirl Range", -- [2]
				"Beasts - Debuffs Texture", -- [3]
				"Beasts - Charge Texture", -- [4]
				"Jaraxxus - Mistress' Kiss Texture", -- [5]
				"Twins - Wrong Target", -- [6]
				"Twins - Light Vortex Texture", -- [7]
				"Twins - Dark Vortex Texture", -- [8]
				"Twins - Essence Texture", -- [9]
				"Anubarak - Pursue Texture", -- [10]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["wagoID"] = "A5ytftEJV",
			["parent"] = "ToGC",
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["url"] = "https://wago.io/TemsToGC/18",
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
						["names"] = {
						},
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["event"] = "Health",
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["internalVersion"] = 66,
			["selfPoint"] = "CENTER",
			["version"] = 18,
			["subRegions"] = {
			},
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
			},
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["source"] = "import",
			["scale"] = 1,
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "group",
			["borderSize"] = 2,
			["config"] = {
			},
			["borderOffset"] = 4,
			["semver"] = "2.2.2",
			["tocversion"] = 30402,
			["id"] = "Tems ToGC - Central Textures",
			["groupIcon"] = "136202",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
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
			["borderInset"] = 1,
			["authorOptions"] = {
			},
			["uid"] = "spo3R9Y(jsn",
			["conditions"] = {
			},
			["information"] = {
			},
			["xOffset"] = 0,
		},
		["Jaraxxus - Nether Portal"] = {
			["sparkWidth"] = 10,
			["iconSource"] = 0,
			["wagoID"] = "A5ytftEJV",
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["url"] = "https://wago.io/TemsToGC/18",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "combatlog",
						["spellId"] = "66269",
						["subeventSuffix"] = "_CAST_SUCCESS",
						["duration"] = "60",
						["event"] = "Combat Log",
						["unit"] = "player",
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "combatlog",
						["spellId"] = "66258",
						["subeventSuffix"] = "_CAST_SUCCESS",
						["duration"] = "60",
						["event"] = "Combat Log",
						["unit"] = "player",
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_type"] = "event",
						["duration"] = "20",
						["event"] = "Health",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["spellIds"] = {
						},
						["custom"] = "function(event)\n    return true\nend",
						["names"] = {
						},
						["events"] = "ENCOUNTER_START",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [3]
				{
					["trigger"] = {
						["type"] = "combatlog",
						["spellId"] = "66269",
						["subeventSuffix"] = "_CAST_SUCCESS",
						["duration"] = "99",
						["event"] = "Combat Log",
						["unit"] = "player",
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [4]
				{
					["trigger"] = {
						["type"] = "combatlog",
						["spellId"] = "66258",
						["subeventSuffix"] = "_CAST_SUCCESS",
						["duration"] = "99",
						["event"] = "Combat Log",
						["unit"] = "player",
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [5]
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_type"] = "event",
						["duration"] = "99",
						["event"] = "Health",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["spellIds"] = {
						},
						["custom"] = "function(event)\n    return true\nend",
						["names"] = {
						},
						["events"] = "ENCOUNTER_START",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [6]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 66,
			["zoom"] = 0.3,
			["selfPoint"] = "CENTER",
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
			["barColor"] = {
				0.45490199327469, -- [1]
				0.24705883860588, -- [2]
				0.75686281919479, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["barColor2"] = {
				1, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["property"] = "sub.4.text_visible",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "sub.5.text_visible",
						}, -- [2]
						{
							["value"] = 135793,
							["property"] = "displayIcon",
						}, -- [3]
						{
							["value"] = {
								0.45098042488098, -- [1]
								0.79215693473816, -- [2]
								0.28235295414925, -- [3]
								1, -- [4]
							},
							["property"] = "barColor",
						}, -- [4]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 0,
							}, -- [1]
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 0,
							}, -- [2]
							{
								["trigger"] = 3,
								["variable"] = "show",
								["value"] = 0,
							}, -- [3]
						},
					},
					["linked"] = true,
					["changes"] = {
						{
							["value"] = {
								0.45490199327469, -- [1]
								0.24705883860588, -- [2]
								0.75686281919479, -- [3]
								1, -- [4]
							},
							["property"] = "backgroundColor",
						}, -- [1]
						{
							["property"] = "sub.4.text_visible",
						}, -- [2]
						{
							["property"] = "sub.7.text_visible",
						}, -- [3]
						{
							["value"] = true,
							["property"] = "sub.6.text_visible",
						}, -- [4]
					},
				}, -- [2]
			},
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["type"] = "subforeground",
				}, -- [2]
				{
					["border_size"] = 1,
					["border_anchor"] = "bar",
					["type"] = "subborder",
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_offset"] = 0,
				}, -- [3]
				{
					["text_text_format_n_format"] = "none",
					["text_text"] = "Next Portal",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_LEFT",
					["text_shadowXOffset"] = 1,
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [4]
				{
					["text_text_format_n_format"] = "none",
					["text_text"] = "Next Infernal",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_LEFT",
					["text_shadowXOffset"] = 1,
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_visible"] = false,
				}, -- [5]
				{
					["text_text_format_n_format"] = "none",
					["text_text"] = "Portal Soon",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_LEFT",
					["text_shadowXOffset"] = 1,
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_visible"] = false,
				}, -- [6]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%p",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_time_format"] = 0,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["type"] = "subtext",
					["text_anchorXOffset"] = -2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_text_format_p_time_precision"] = 1,
					["text_shadowYOffset"] = -1,
					["anchorYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_RIGHT",
					["text_visible"] = true,
					["text_text_format_p_format"] = "timed",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_mod_rate"] = true,
				}, -- [7]
			},
			["height"] = 20,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["load"] = {
				["use_encounterid"] = true,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "633, 1087",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["parent"] = "Tems ToGC - Timers",
			["source"] = "import",
			["gradientOrientation"] = "HORIZONTAL",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["enableGradient"] = false,
			["anchorFrameType"] = "SCREEN",
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["alpha"] = 1,
			["config"] = {
			},
			["icon_side"] = "LEFT",
			["id"] = "Jaraxxus - Nether Portal",
			["sparkHeight"] = 30,
			["texture"] = "Melli",
			["spark"] = false,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["semver"] = "2.2.2",
			["tocversion"] = 30402,
			["sparkHidden"] = "NEVER",
			["icon"] = true,
			["frameStrata"] = 1,
			["width"] = 200,
			["sparkOffsetX"] = 0,
			["uid"] = "GBsu)9kLbO5",
			["inverse"] = false,
			["sparkOffsetY"] = 0,
			["orientation"] = "HORIZONTAL",
			["displayIcon"] = 132291,
			["information"] = {
			},
			["authorOptions"] = {
			},
		},
		["Beasts - Arctic Breath Cast"] = {
			["sparkWidth"] = 10,
			["iconSource"] = 0,
			["wagoID"] = "A5ytftEJV",
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["url"] = "https://wago.io/TemsToGC/18",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.51000002026558, -- [4]
			},
			["triggers"] = {
				{
					["trigger"] = {
						["useName"] = true,
						["spellId"] = "66689",
						["auranames"] = {
							"66758", -- [1]
						},
						["duration"] = "4",
						["event"] = "Combat Log",
						["unit"] = "target",
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["subeventSuffix"] = "_AURA_APPLIED",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["type"] = "combatlog",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 66,
			["zoom"] = 0.3,
			["selfPoint"] = "CENTER",
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
			["barColor"] = {
				0.45490199327469, -- [1]
				0.96078437566757, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["barColor2"] = {
				0.88627457618713, -- [1]
				0.99607849121094, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["type"] = "subforeground",
				}, -- [2]
				{
					["border_size"] = 1,
					["border_anchor"] = "bg",
					["type"] = "subborder",
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_offset"] = 1,
				}, -- [3]
				{
					["text_text_format_n_format"] = "none",
					["text_text"] = "Arctic Breath",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_LEFT",
					["text_shadowXOffset"] = 1,
					["text_fontSize"] = 14,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [4]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%p",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_time_format"] = 0,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["type"] = "subtext",
					["text_anchorXOffset"] = -2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_text_format_p_time_precision"] = 1,
					["text_shadowYOffset"] = -1,
					["anchorYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_RIGHT",
					["text_visible"] = true,
					["text_text_format_p_format"] = "timed",
					["text_fontSize"] = 14,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_mod_rate"] = true,
				}, -- [5]
			},
			["height"] = 22,
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Glass.mp3",
					["do_sound"] = true,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["load"] = {
				["use_encounterid"] = true,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "629, 1088",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["parent"] = "Tems ToGC - Casts",
			["source"] = "import",
			["gradientOrientation"] = "HORIZONTAL",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["enableGradient"] = true,
			["anchorFrameType"] = "SCREEN",
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["alpha"] = 1,
			["config"] = {
			},
			["icon_side"] = "LEFT",
			["id"] = "Beasts - Arctic Breath Cast",
			["sparkHeight"] = 30,
			["texture"] = "Clean",
			["spark"] = false,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["semver"] = "2.2.2",
			["tocversion"] = 30402,
			["sparkHidden"] = "NEVER",
			["icon"] = true,
			["frameStrata"] = 1,
			["width"] = 290,
			["sparkOffsetX"] = 0,
			["uid"] = "bfZskoshkqT",
			["inverse"] = true,
			["sparkOffsetY"] = 0,
			["orientation"] = "HORIZONTAL",
			["displayIcon"] = 135848,
			["information"] = {
			},
			["authorOptions"] = {
			},
		},
		["Tems - Break Timer"] = {
			["sparkWidth"] = 10,
			["iconSource"] = -1,
			["authorOptions"] = {
			},
			["displayText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["url"] = "https://wago.io/TemsToGC/18",
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Glass.mp3",
					["do_sound"] = true,
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "aura_env.duration = 0\nlocal rPF_W = C_ChatInfo.IsAddonMessagePrefixRegistered(\"D5WC\")\nif not rPF_W then C_ChatInfo.RegisterAddonMessagePrefix(\"D5WC\") end",
					["do_custom"] = true,
				},
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["enableGradient"] = true,
			["wordWrap"] = "WordWrap",
			["barColor"] = {
				1, -- [1]
				0.32941177487373, -- [2]
				0.21568629145622, -- [3]
				1, -- [4]
			},
			["desc"] = "This WA don't require you have to DBM / Bigwigs to display pull timers. For different versions of the came, look at the \"Actions\" > \"On Init\" > \"Custom Code\" tab for commented out text for all versions of the game. Default for this WA is Wrath of the Lichking Classic.",
			["font"] = "Friz Quadrata TT",
			["sparkOffsetY"] = 0,
			["gradientOrientation"] = "HORIZONTAL",
			["load"] = {
				["ingroup"] = {
					["multi"] = {
						["group"] = true,
						["raid"] = true,
					},
				},
				["use_zoneIds"] = true,
				["instance_type"] = {
				},
				["group_leader"] = {
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_encounterid"] = false,
				["use_ingroup"] = false,
				["zoneIds"] = "172, 173",
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_zone"] = false,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["shadowXOffset"] = 1,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["texture"] = "Solid",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["spark"] = false,
			["tocversion"] = 30402,
			["alpha"] = 1,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["fixedWidth"] = 200,
			["outline"] = "OUTLINE",
			["sparkOffsetX"] = 0,
			["wagoID"] = "A5ytftEJV",
			["parent"] = "Tems ToGC - Timers",
			["shadowYOffset"] = -1,
			["customTextUpdate"] = "event",
			["automaticWidth"] = "Auto",
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_hide"] = "timed",
						["custom_type"] = "event",
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["event"] = "Health",
						["names"] = {
						},
						["customDuration"] = "function()\n  if WeakAuras.IsOptionsOpen() then\n    \n    return 1337, 1337, true\n  else\n    local duration, expirationTime = aura_env.duration, GetTime()+aura_env.duration\n    return duration, expirationTime\n  end\nend\n\n\n",
						["customName"] = "",
						["custom"] = "function(event, pf, content, channel) \n    if pf == \"D5WC\" then\n        local _, _, dbmPrefix, arg1 = strsplit(\"\\t\", content) \n        if dbmPrefix == \"BT\" then\n            aura_env.name = \"BREAK\"\n            aura_env.duration = tonumber(arg1)\n            return true\n        end\n    end\nend",
						["dynamicDuration"] = true,
						["events"] = "CHAT_MSG_ADDON",
						["spellIds"] = {
						},
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["displayText_format_p_format"] = "timed",
			["displayText_format_p_time_legacy_floor"] = false,
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
			["displayIcon"] = 136090,
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subforeground",
				}, -- [1]
				{
					["type"] = "subbackground",
				}, -- [2]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "Break Timer",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_text_format_p_time_format"] = 0,
					["text_text_format_n_format"] = "none",
					["type"] = "subtext",
					["text_anchorXOffset"] = 5,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_anchorYOffset"] = 0,
					["text_shadowYOffset"] = -1,
					["text_fontType"] = "None",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "INNER_LEFT",
					["text_text_format_p_format"] = "timed",
					["text_shadowXOffset"] = 1,
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_mod_rate"] = true,
				}, -- [3]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text"] = "%p",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_text_format_p_time_format"] = 0,
					["text_text_format_n_format"] = "none",
					["type"] = "subtext",
					["text_anchorXOffset"] = -5,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_anchorYOffset"] = 0,
					["text_shadowYOffset"] = -1,
					["text_fontType"] = "None",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "INNER_RIGHT",
					["text_text_format_p_format"] = "timed",
					["text_shadowXOffset"] = 1,
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_mod_rate"] = true,
				}, -- [4]
			},
			["height"] = 20,
			["zoom"] = 0,
			["orientation"] = "HORIZONTAL",
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["fontSize"] = 72,
			["source"] = "import",
			["displayText_format_n_format"] = "none",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayText_format_p_time_mod_rate"] = true,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["internalVersion"] = 66,
			["width"] = 200,
			["displayText_format_p_time_dynamic_threshold"] = 60,
			["xOffset"] = 0,
			["icon_side"] = "LEFT",
			["id"] = "Tems - Break Timer",
			["displayText_format_p_time_precision"] = 1,
			["sparkHeight"] = 30,
			["semver"] = "2.2.2",
			["sparkRotationMode"] = "AUTO",
			["icon"] = true,
			["justify"] = "LEFT",
			["desaturate"] = false,
			["sparkHidden"] = "NEVER",
			["displayText_format_p_time_format"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["selfPoint"] = "BOTTOM",
			["uid"] = "3rc3aUvAKnN",
			["inverse"] = false,
			["config"] = {
			},
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["value"] = "0",
						["variable"] = "expirationTime",
					},
					["changes"] = {
						{
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [1]
			},
			["barColor2"] = {
				0.95294123888016, -- [1]
				0.78431379795074, -- [2]
				0.55686277151108, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
		},
		["Pendulum"] = {
			["iconSource"] = 0,
			["wagoID"] = "lkrS6uIit",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = -148.99,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "",
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
						["spellId"] = "60483",
						["duration"] = "45",
						["subeventPrefix"] = "SPELL",
						["destUnit"] = "target",
						["debuffType"] = "HELPFUL",
						["type"] = "combatlog",
						["subeventSuffix"] = "_DAMAGE",
						["names"] = {
						},
						["spellName"] = "Darkmoon Card: Death",
						["event"] = "Combat Log",
						["unit"] = "player",
						["auraType"] = "BUFF",
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["use_sourceUnit"] = true,
						["use_spellName"] = false,
						["use_destUnit"] = false,
						["sourceUnit"] = "player",
						["use_auraType"] = false,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "function(t)\n    return t[1] or t[2]\nend",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 66,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 1,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text_format_p_format"] = "Number",
					["text_text"] = "%p",
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_text_format_p_gcd_cast"] = false,
					["text_text_format_p_time_mod_rate"] = true,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "BOTTOM",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_shadowXOffset"] = 0,
					["text_text_format_p_gcd_channel"] = false,
					["text_text_format_p_decimal_precision"] = 0,
					["type"] = "subtext",
					["text_text_format_p_gcd_gcd"] = true,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "DorisPP",
					["text_fontType"] = "OUTLINE",
					["text_anchorYOffset"] = -22,
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_gcd_hide_zero"] = false,
					["text_text_format_p_time_format"] = 0,
					["text_fontSize"] = 15,
					["anchorXOffset"] = 0,
					["text_text_format_p_round_type"] = "floor",
				}, -- [2]
			},
			["height"] = 40,
			["load"] = {
				["itemequiped"] = 37264,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_itemequiped"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["config"] = {
			},
			["icon"] = true,
			["authorOptions"] = {
			},
			["regionType"] = "icon",
			["xOffset"] = -230.0983405139272,
			["cooldown"] = true,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["value"] = 1,
								["variable"] = "show",
							}, -- [1]
							{
								["value"] = 1,
								["variable"] = "show",
							}, -- [2]
							{
								["value"] = 0,
								["variable"] = "show",
							}, -- [3]
						},
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 40,
							["property"] = "height",
						}, -- [2]
						{
							["value"] = 40,
							["property"] = "width",
						}, -- [3]
						{
							["value"] = true,
						}, -- [4]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [5]
						{
							["value"] = true,
						}, -- [6]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 1,
							}, -- [1]
							{
								["value"] = 0,
								["variable"] = "show",
							}, -- [2]
							{
								["value"] = 1,
								["variable"] = "show",
							}, -- [3]
						},
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = 40,
							["property"] = "height",
						}, -- [2]
						{
							["value"] = 40,
							["property"] = "width",
						}, -- [3]
						{
							["value"] = true,
						}, -- [4]
						{
							["value"] = 1,
							["property"] = "alpha",
						}, -- [5]
						{
							["value"] = {
								0.98039215686275, -- [1]
								1, -- [2]
								0.97647058823529, -- [3]
								0.65151450037956, -- [4]
							},
							["property"] = "color",
						}, -- [6]
						{
							["value"] = true,
							["property"] = "cooldownSwipe",
						}, -- [7]
						{
							["value"] = false,
						}, -- [8]
					},
				}, -- [2]
			},
			["cooldownEdge"] = false,
			["zoom"] = 0,
			["anchorFrameType"] = "SCREEN",
			["cooldownTextDisabled"] = true,
			["semver"] = "1.0.0",
			["tocversion"] = 30400,
			["id"] = "Pendulum",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["width"] = 40,
			["useCooldownModRate"] = true,
			["uid"] = "ShvQmDgWBpB",
			["inverse"] = true,
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
			["displayIcon"] = "133870",
			["information"] = {
				["forceEvents"] = true,
			},
			["parent"] = "Trinket ICD Tracker",
		},
		["Champions - Hellfire Nameplate"] = {
			["modelIsUnit"] = false,
			["iconSource"] = 0,
			["api"] = false,
			["xOffset"] = 0,
			["displayText"] = "SPARK SPAWNED\n",
			["yOffset"] = -45,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["url"] = "https://wago.io/TemsToGC/18",
			["actions"] = {
				["start"] = {
					["message"] = "",
					["message_format_unitName_format"] = "none",
					["message_custom"] = "function() return UnitName(\"player\") end",
					["do_sound"] = false,
					["message_format_c_format"] = "none",
					["do_message"] = false,
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\sonar.ogg",
					["message_type"] = "SAY",
				},
				["finish"] = {
					["do_custom"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Blast.ogg",
					["do_message"] = false,
					["do_sound"] = false,
				},
				["init"] = {
				},
			},
			["displayText_format_p_time_mod_rate"] = true,
			["keepAspectRatio"] = false,
			["model_path"] = "spells/arcanepower_state_chest.m2",
			["desaturate"] = false,
			["rotation"] = 0,
			["font"] = "Accidental Presidency",
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
						["HUNTER"] = true,
						["WARLOCK"] = true,
						["SHAMAN"] = true,
						["MAGE"] = true,
						["DRUID"] = true,
						["PALADIN"] = true,
						["PRIEST"] = true,
					},
				},
				["use_encounterid"] = true,
				["use_zone"] = false,
				["zoneIds"] = "",
				["encounterid"] = "637, 1086",
				["use_zoneIds"] = false,
				["zone"] = "",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
			["sequence"] = 1,
			["shadowXOffset"] = 1,
			["regionType"] = "texture",
			["model_st_us"] = 40,
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Circle_AlphaGradient_In.tga",
			["model_st_ry"] = 0,
			["auto"] = false,
			["tocversion"] = 30402,
			["model_st_rx"] = 270,
			["uid"] = "rqokqdHIWOx",
			["fixedWidth"] = 200,
			["model_st_tz"] = 0,
			["parent"] = "Tems ToGC - Nameplates [DO NOT MOVE]",
			["outline"] = "OUTLINE",
			["cooldown"] = true,
			["borderBackdrop"] = "Blizzard Tooltip",
			["wagoID"] = "A5ytftEJV",
			["color"] = {
				1, -- [1]
				0.011764707043767, -- [2]
				0.047058828175068, -- [3]
				1, -- [4]
			},
			["authorOptions"] = {
			},
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["shadowYOffset"] = -1,
			["borderOffset"] = 5,
			["model_x"] = 0,
			["cooldownSwipe"] = true,
			["cooldownEdge"] = true,
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["advance"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "30084",
						["spellId"] = "56272",
						["auranames"] = {
							"65816", -- [1]
						},
						["duration"] = "1.5",
						["message_operator"] = "find('%s')",
						["destUnit"] = "player",
						["group_count"] = "0",
						["use_attackable"] = true,
						["group_countOperator"] = ">",
						["use_namerealm"] = false,
						["namerealm"] = "Crypt Guard",
						["subeventSuffix"] = "_CAST_START",
						["percenthealth"] = "0",
						["event"] = "Chat Message",
						["message"] = "",
						["use_spellId"] = true,
						["use_destUnit"] = false,
						["use_track"] = true,
						["useExactSpellId"] = false,
						["use_hostility"] = false,
						["useGroup_count"] = false,
						["percenthealth_operator"] = "~=",
						["subeventPrefix"] = "SPELL",
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["showClones"] = true,
						["use_genericShowOn"] = true,
						["unit"] = "nameplate",
						["use_npcId"] = true,
						["use_threatUnit"] = true,
						["type"] = "aura2",
						["use_cloneId"] = false,
						["debuffType"] = "HELPFUL",
						["use_sourceName"] = false,
						["sourceName"] = "Crypt Guard",
						["unevent"] = "timed",
						["auraspellids"] = {
						},
						["useName"] = true,
						["names"] = {
						},
						["threatUnit"] = "target",
						["use_status"] = false,
						["realSpellName"] = "Summon Corpse Scarabs",
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["spellName"] = "Summon Corpse Scarabs",
						["use_message"] = false,
						["use_percenthealth"] = true,
						["use_messageType"] = false,
						["use_aggro"] = true,
					},
					["untrigger"] = {
						["threatUnit"] = "target",
						["unit"] = "target",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["displayText_format_p_format"] = "timed",
			["displayText_format_p_time_legacy_floor"] = false,
			["model_fileId"] = "122968",
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "preset",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["preset"] = "alphaPulse",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["model_st_ty"] = 0,
			["alpha"] = 1,
			["version"] = 18,
			["width"] = 100,
			["discrete_rotation"] = 0,
			["frameStrata"] = 5,
			["model_st_tx"] = 0,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_text_format_n_format"] = "none",
					["text_text"] = "MOVE AWAY",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "CENTER",
					["text_shadowXOffset"] = 1,
					["text_anchorYOffset"] = 0,
					["text_fontSize"] = 11,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [2]
			},
			["height"] = 100,
			["rotate"] = true,
			["config"] = {
			},
			["displayText_format_p_time_dynamic_threshold"] = 60,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["fontSize"] = 26,
			["source"] = "import",
			["blendMode"] = "BLEND",
			["justify"] = "LEFT",
			["borderInset"] = 11,
			["mirror"] = false,
			["borderEdge"] = "None",
			["cooldownTextDisabled"] = false,
			["borderSize"] = 16,
			["border"] = false,
			["icon"] = true,
			["model_st_rz"] = 0,
			["model_z"] = 0,
			["displayText_format_p_time_precision"] = 1,
			["wordWrap"] = "WordWrap",
			["selfPoint"] = "CENTER",
			["displayText_format_p_time_format"] = 0,
			["semver"] = "2.2.2",
			["zoom"] = 0,
			["id"] = "Champions - Hellfire Nameplate",
			["model_y"] = 0,
			["useCooldownModRate"] = true,
			["anchorFrameType"] = "NAMEPLATE",
			["internalVersion"] = 66,
			["displayIcon"] = 135731,
			["inverse"] = false,
			["scale"] = 1,
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["preferToUpdate"] = false,
		},
		["Beasts - Submerge"] = {
			["sparkWidth"] = 10,
			["iconSource"] = 0,
			["wagoID"] = "A5ytftEJV",
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["url"] = "https://wago.io/TemsToGC/18",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["triggers"] = {
				{
					["trigger"] = {
						["use_absorbMode"] = true,
						["message_operator"] = "find('%s')",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
						["subeventPrefix"] = "UNIT_DIED",
						["type"] = "combatlog",
						["use_destNpcId"] = true,
						["subeventSuffix"] = "",
						["unit"] = "player",
						["use_unit"] = true,
						["event"] = "Combat Log",
						["destNpcId"] = "34796",
						["message"] = "Self-destruct sequence initiated",
						["use_absorbHealMode"] = true,
						["spellIds"] = {
						},
						["duration"] = "61",
						["use_message"] = true,
						["use_destUnit"] = false,
						["use_messageType"] = true,
						["messageType"] = "CHAT_MSG_MONSTER_YELL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "custom",
						["custom"] = "function()\n    return true\nend",
						["custom_type"] = "event",
						["events"] = "TemsWormsSubmergeEvent",
						["duration"] = "45",
						["custom_hide"] = "timed",
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["message"] = "The air itself freezes with the introduction of our next combatant, Icehowl! Kill or be killed, champions",
						["type"] = "event",
						["unit"] = "player",
						["event"] = "Chat Message",
						["use_message"] = true,
						["duration"] = "600",
						["message_operator"] = "find('%s')",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [3]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(trigger)\n    return (trigger[1] or trigger[2]) and not trigger[3]\nend",
				["activeTriggerMode"] = -10,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 66,
			["zoom"] = 0.3,
			["selfPoint"] = "CENTER",
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
			["barColor"] = {
				0.78039222955704, -- [1]
				0.61176472902298, -- [2]
				0.43137258291245, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["barColor2"] = {
				1, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["type"] = "subforeground",
				}, -- [2]
				{
					["border_size"] = 1,
					["border_anchor"] = "bar",
					["type"] = "subborder",
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_offset"] = 0,
				}, -- [3]
				{
					["text_text_format_n_format"] = "none",
					["text_text"] = "Next Submerge",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_LEFT",
					["text_shadowXOffset"] = 1,
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [4]
				{
					["text_text_format_n_format"] = "none",
					["text_text"] = "Stomp Soon",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_LEFT",
					["text_shadowXOffset"] = 1,
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_visible"] = false,
				}, -- [5]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%p",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_time_format"] = 0,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["type"] = "subtext",
					["text_anchorXOffset"] = -2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_text_format_p_time_precision"] = 1,
					["text_shadowYOffset"] = -1,
					["anchorYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_RIGHT",
					["text_visible"] = true,
					["text_text_format_p_format"] = "timed",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_mod_rate"] = true,
				}, -- [6]
			},
			["height"] = 20,
			["actions"] = {
				["start"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
				["finish"] = {
					["custom"] = "C_Timer.After(0, function()\n        WeakAuras.ScanEvents(\"TemsWormsSubmergeEvent\")\nend)",
					["do_custom"] = true,
				},
				["init"] = {
				},
			},
			["load"] = {
				["use_encounterid"] = true,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "629, 1088",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["parent"] = "Tems ToGC - Timers",
			["source"] = "import",
			["gradientOrientation"] = "HORIZONTAL",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["enableGradient"] = false,
			["anchorFrameType"] = "SCREEN",
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["alpha"] = 1,
			["config"] = {
			},
			["icon_side"] = "LEFT",
			["id"] = "Beasts - Submerge",
			["sparkHeight"] = 30,
			["texture"] = "Melli",
			["spark"] = false,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["semver"] = "2.2.2",
			["tocversion"] = 30402,
			["sparkHidden"] = "NEVER",
			["icon"] = true,
			["frameStrata"] = 1,
			["width"] = 200,
			["sparkOffsetX"] = 0,
			["uid"] = "ejezJBcAqac",
			["inverse"] = false,
			["sparkOffsetY"] = 0,
			["orientation"] = "HORIZONTAL",
			["displayIcon"] = 136025,
			["information"] = {
			},
			["authorOptions"] = {
			},
		},
		["Jaraxxus - Mistress' Kiss Texture"] = {
			["user_y"] = 0,
			["user_x"] = 0,
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["foregroundColor"] = {
				0.76470595598221, -- [1]
				0.27450981736183, -- [2]
				0.21176472306252, -- [3]
				1, -- [4]
			},
			["desaturateBackground"] = false,
			["startAngle"] = 0,
			["sameTexture"] = true,
			["url"] = "https://wago.io/TemsToGC/18",
			["actions"] = {
				["start"] = {
					["message_format_unitName_realm_name"] = "never",
					["message_type"] = "SAY",
					["message_format_unitName_abbreviate_max"] = 8,
					["message"] = "",
					["do_sound"] = true,
					["message_format_unitName_abbreviate"] = false,
					["message_format_unitName_format"] = "none",
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\Glass.mp3",
					["do_message"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = 66336,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["type"] = "unit",
						["subeventSuffix"] = "_CAST_START",
						["spellName"] = 0,
						["event"] = "Cast",
						["use_spellId"] = true,
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_unit"] = true,
						["use_exact_spellId"] = false,
						["names"] = {
						},
						["use_track"] = true,
						["unit"] = "nameplate",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["endAngle"] = 360,
			["internalVersion"] = 66,
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
			["desaturateForeground"] = false,
			["authorOptions"] = {
			},
			["crop_x"] = 0.41,
			["rotation"] = 0,
			["font"] = "Friz Quadrata TT",
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "STOP CASTING",
					["text_text_format_p_time_mod_rate"] = true,
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["anchorYOffset"] = 0,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["type"] = "subtext",
					["text_text_format_p_time_precision"] = 1,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_shadowYOffset"] = -1,
					["text_visible"] = true,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_time_format"] = 0,
					["text_text_format_n_format"] = "none",
					["text_fontSize"] = 14,
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
				}, -- [2]
			},
			["height"] = 140,
			["parent"] = "Tems ToGC - Central Textures",
			["load"] = {
				["use_encounterid"] = true,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "633, 1087",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["wagoID"] = "A5ytftEJV",
			["useAdjustededMax"] = false,
			["fontSize"] = 12,
			["source"] = "import",
			["foregroundTexture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Ring_20px.tga",
			["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
			["config"] = {
			},
			["mirror"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "progresstexture",
			["backgroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura3",
			["blendMode"] = "BLEND",
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["slantMode"] = "INSIDE",
			["selfPoint"] = "CENTER",
			["tocversion"] = 30402,
			["anchorPoint"] = "CENTER",
			["semver"] = "2.2.2",
			["compress"] = false,
			["id"] = "Jaraxxus - Mistress' Kiss Texture",
			["backgroundColor"] = {
				0.50196081399918, -- [1]
				0.50196081399918, -- [2]
				0.50196081399918, -- [3]
				0, -- [4]
			},
			["frameStrata"] = 1,
			["width"] = 140,
			["auraRotation"] = 0,
			["uid"] = "FMMW9Ae6KrW",
			["inverse"] = false,
			["crop_y"] = 0.41,
			["orientation"] = "ANTICLOCKWISE",
			["conditions"] = {
			},
			["information"] = {
			},
			["backgroundOffset"] = 2,
		},
		["Beasts - Burning Bile Glow"] = {
			["outline"] = "OUTLINE",
			["iconSource"] = 0,
			["wagoID"] = "A5ytftEJV",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    if WeakAuras.IsOptionsOpen() then return end\n    if not aura_env.last or aura_env.last < GetTime() - 1.5 then\n        aura_env.last = GetTime()\n        SendChatMessage(\"{X} RUN AWAY {X}\") -- replace the message as needed\n    end\nend",
			["shadowYOffset"] = -1,
			["anchorPoint"] = "CENTER",
			["frameStrata"] = 1,
			["cooldownSwipe"] = true,
			["displayText_format_p_time_format"] = 0,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/TemsToGC/18",
			["actions"] = {
				["start"] = {
					["glow_color"] = {
						0.67843137254902, -- [1]
						0.16470588235294, -- [2]
						0.082352941176471, -- [3]
						1, -- [4]
					},
					["glow_thickness"] = 3,
					["glow_action"] = "show",
					["glow_frequency"] = 0.2,
					["glow_lines"] = 4,
					["glow_length"] = 15,
					["do_glow"] = true,
					["use_glow_color"] = true,
					["glow_type"] = "Pixel",
					["glow_frame_type"] = "UNITFRAME",
				},
				["finish"] = {
					["hide_all_glows"] = true,
				},
				["init"] = {
					["custom"] = "",
					["do_custom"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["npcId"] = "16063",
						["spellId"] = "29685",
						["auranames"] = {
							"66869", -- [1]
						},
						["use_genericShowOn"] = true,
						["destUnit"] = "player",
						["group_count"] = "0",
						["group_countOperator"] = ">",
						["showClones"] = true,
						["use_health"] = true,
						["custom_type"] = "status",
						["event"] = "Conditions",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["use_name"] = false,
						["use_spellId"] = true,
						["name"] = "Obsidian Eradicator",
						["check"] = "update",
						["use_destUnit"] = false,
						["use_track"] = true,
						["spellName"] = 871,
						["sourceNpcId"] = "15932",
						["use_alwaystrue"] = true,
						["useGroup_count"] = false,
						["stacksOperator"] = ">",
						["use_sourceNpcId"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["stacks"] = "4",
						["powertype"] = 0,
						["spellIds"] = {
						},
						["duration"] = "20",
						["use_npcId"] = true,
						["names"] = {
						},
						["use_powertype"] = true,
						["debuffType"] = "HARMFUL",
						["type"] = "aura2",
						["use_sourceName"] = false,
						["unevent"] = "timed",
						["auraspellids"] = {
						},
						["useStacks"] = false,
						["useName"] = true,
						["useExactSpellId"] = false,
						["unit"] = "raid",
						["realSpellName"] = "Shield Wall",
						["use_spellName"] = false,
						["health"] = "0",
						["health_operator"] = ">",
						["subeventPrefix"] = "SPELL",
						["use_eventtype"] = true,
						["useAffected"] = false,
						["subeventSuffix"] = "_CAST_SUCCESS",
					},
					["untrigger"] = {
						["unit"] = "target",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["displayText_format_p_time_mod_rate"] = true,
			["internalVersion"] = 66,
			["keepAspectRatio"] = false,
			["wordWrap"] = "WordWrap",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayText"] = "",
			["yOffset"] = 0,
			["desaturate"] = false,
			["parent"] = "Tems ToGC - Glow [DO NOT MOVE]",
			["font"] = "Accidental Presidency",
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 64,
			["cooldownEdge"] = true,
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
						["PRIEST"] = true,
					},
				},
				["use_encounterid"] = true,
				["use_zone"] = false,
				["zoneIds"] = "150",
				["encounterid"] = "629, 1088",
				["use_zoneIds"] = false,
				["zone"] = "",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
						["fortyman"] = true,
					},
				},
			},
			["icon"] = true,
			["displayText_format_p_format"] = "timed",
			["fontSize"] = 18,
			["source"] = "import",
			["displayText_format_p_time_legacy_floor"] = false,
			["shadowXOffset"] = 1,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["preset"] = "spiralandpulse",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["displayText_format_p_time_dynamic_threshold"] = 60,
			["auto"] = false,
			["regionType"] = "text",
			["automaticWidth"] = "Auto",
			["selfPoint"] = "CENTER",
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["fixedWidth"] = 200,
			["xOffset"] = 0,
			["displayText_format_p_time_precision"] = 1,
			["zoom"] = 0,
			["config"] = {
			},
			["cooldownTextDisabled"] = false,
			["semver"] = "2.2.2",
			["tocversion"] = 30402,
			["id"] = "Beasts - Burning Bile Glow",
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["width"] = 64,
			["justify"] = "LEFT",
			["uid"] = "rpEVA)9ABPB",
			["inverse"] = false,
			["useCooldownModRate"] = true,
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["displayIcon"] = 136160,
		},
		["Beasts - Vassal Debuff"] = {
			["iconSource"] = 0,
			["wagoID"] = "A5ytftEJV",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "https://wago.io/TemsToGC/18",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["useName"] = true,
						["spellId"] = "1604",
						["auranames"] = {
							"66406", -- [1]
						},
						["names"] = {
						},
						["duration"] = "4",
						["event"] = "Combat Log",
						["unit"] = "player",
						["destUnit"] = "player",
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["subeventSuffix"] = "_AURA_APPLIED",
						["subeventPrefix"] = "SPELL",
						["use_destUnit"] = true,
						["type"] = "aura2",
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 66,
			["keepAspectRatio"] = true,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_size"] = 1,
					["type"] = "subborder",
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_offset"] = 1,
				}, -- [2]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%p",
					["text_text_format_p_format"] = "timed",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_time_mod_rate"] = true,
					["type"] = "subtext",
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_text_format_p_time_format"] = 0,
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "BOTTOM",
					["anchorYOffset"] = 0,
					["text_fontType"] = "OUTLINE",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_precision"] = 1,
				}, -- [3]
				{
					["text_shadowXOffset"] = 0,
					["text_text_format_s_format"] = "none",
					["text_text"] = "ADD ON YOU",
					["text_text_format_p_time_mod_rate"] = true,
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_format"] = "timed",
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["type"] = "subtext",
					["text_text_format_n_format"] = "none",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["anchorYOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "TOP",
					["text_visible"] = true,
					["text_text_format_p_time_format"] = 0,
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_precision"] = 1,
				}, -- [4]
			},
			["height"] = 41,
			["load"] = {
				["use_encounterid"] = true,
				["encounterid"] = "629, 1088",
				["use_zoneIds"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["config"] = {
			},
			["cooldownEdge"] = false,
			["xOffset"] = 0,
			["regionType"] = "icon",
			["actions"] = {
				["start"] = {
					["message_type"] = "SAY",
					["message"] = "{rt7} Kobold on Me {rt7}",
					["do_message"] = true,
					["message_format_unitName_format"] = "none",
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["cooldown"] = true,
			["conditions"] = {
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["zoom"] = 0.3,
			["anchorFrameType"] = "SCREEN",
			["cooldownTextDisabled"] = true,
			["semver"] = "2.2.2",
			["tocversion"] = 30402,
			["id"] = "Beasts - Vassal Debuff",
			["useCooldownModRate"] = true,
			["frameStrata"] = 1,
			["width"] = 41,
			["alpha"] = 1,
			["uid"] = "9RyEcuK2EhK",
			["inverse"] = false,
			["parent"] = "Tems ToGC - Icons",
			["displayIcon"] = "134168",
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
		["Jaraxxus - Enrage"] = {
			["sparkWidth"] = 10,
			["iconSource"] = 0,
			["wagoID"] = "A5ytftEJV",
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["url"] = "https://wago.io/TemsToGC/18",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "custom",
						["subeventPrefix"] = "SPELL",
						["custom_type"] = "event",
						["events"] = "ENCOUNTER_START",
						["duration"] = "600",
						["message_operator"] = "find('%s')",
						["unit"] = "player",
						["message"] = "The air itself freezes with the introduction of our next combatant, Icehowl! Kill or be killed, champions",
						["spellIds"] = {
						},
						["custom"] = "function(event)\n    return true\nend",
						["event"] = "Chat Message",
						["use_message"] = true,
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 66,
			["zoom"] = 0.3,
			["selfPoint"] = "CENTER",
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
			["barColor"] = {
				0.79215693473816, -- [1]
				0.47450983524323, -- [2]
				0.46666669845581, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["barColor2"] = {
				1, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["type"] = "subforeground",
				}, -- [2]
				{
					["border_size"] = 1,
					["border_anchor"] = "bar",
					["type"] = "subborder",
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_offset"] = 0,
				}, -- [3]
				{
					["text_text_format_n_format"] = "none",
					["text_text"] = "Enrage",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_LEFT",
					["text_shadowXOffset"] = 1,
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [4]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%p",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_time_format"] = 0,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["type"] = "subtext",
					["text_anchorXOffset"] = -2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_text_format_p_time_precision"] = 1,
					["text_shadowYOffset"] = -1,
					["anchorYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_RIGHT",
					["text_visible"] = true,
					["text_text_format_p_format"] = "timed",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_mod_rate"] = true,
				}, -- [5]
			},
			["height"] = 20,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["load"] = {
				["use_encounterid"] = true,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "633, 1087",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["parent"] = "Tems ToGC - Timers",
			["source"] = "import",
			["gradientOrientation"] = "HORIZONTAL",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["enableGradient"] = false,
			["anchorFrameType"] = "SCREEN",
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["alpha"] = 1,
			["config"] = {
			},
			["icon_side"] = "LEFT",
			["id"] = "Jaraxxus - Enrage",
			["sparkHeight"] = 30,
			["texture"] = "Melli",
			["spark"] = false,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["semver"] = "2.2.2",
			["tocversion"] = 30402,
			["sparkHidden"] = "NEVER",
			["icon"] = true,
			["frameStrata"] = 1,
			["width"] = 200,
			["sparkOffsetX"] = 0,
			["uid"] = "2)NZhjbzPJT",
			["inverse"] = false,
			["sparkOffsetY"] = 0,
			["orientation"] = "HORIZONTAL",
			["displayIcon"] = 136224,
			["information"] = {
			},
			["authorOptions"] = {
			},
		},
		["LIC indicator(UNDEAD)"] = {
			["iconSource"] = 0,
			["xOffset"] = -621.2334365844727,
			["yOffset"] = -337.7777099609375,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = true,
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
						["track"] = "cooldown",
						["itemName"] = 40532,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
						["use_remaining"] = false,
						["subeventSuffix"] = "_CAST_START",
						["use_unit"] = true,
						["use_itemName"] = true,
						["event"] = "Cooldown Progress (Item)",
						["use_exact_spellName"] = true,
						["realSpellName"] = 7744,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["spellName"] = 7744,
						["subeventPrefix"] = "SPELL",
						["type"] = "item",
						["use_track"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 66,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desc"] = "Displays Living Ice Crystal cooldown icon.",
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["type"] = "subborder",
					["border_offset"] = 1,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Gladdy Tooltip round",
					["border_size"] = 10,
				}, -- [2]
				{
					["api"] = false,
					["bar_model_clip"] = true,
					["model_st_us"] = 40,
					["model_st_rz"] = 0,
					["model_z"] = 0,
					["model_fileId"] = "235338",
					["model_path"] = "spells/arcanepower_state_chest.m2",
					["model_st_ty"] = 0,
					["model_y"] = 0,
					["model_st_rx"] = 270,
					["rotation"] = 0,
					["type"] = "submodel",
					["model_st_tx"] = 0,
					["model_st_ry"] = 0,
					["model_alpha"] = 1,
					["model_visible"] = true,
					["model_st_tz"] = 0,
					["model_x"] = 0,
				}, -- [3]
			},
			["height"] = 50,
			["load"] = {
				["use_race"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["race"] = {
					["single"] = "Scourge",
					["multi"] = {
						["Scourge"] = true,
					},
				},
				["use_itemequiped"] = true,
				["itemequiped"] = 40532,
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
			["displayIcon"] = "132783",
			["cooldown"] = true,
			["icon"] = true,
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
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldownTextDisabled"] = false,
			["zoom"] = 0,
			["config"] = {
			},
			["frameStrata"] = 1,
			["id"] = "LIC indicator(UNDEAD)",
			["anchorFrameType"] = "SCREEN",
			["useCooldownModRate"] = true,
			["width"] = 50,
			["alpha"] = 1,
			["uid"] = "N1)KU6AaPCc",
			["inverse"] = true,
			["authorOptions"] = {
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
						{
							["value"] = false,
							["property"] = "sub.3.model_visible",
						}, -- [2]
					},
				}, -- [1]
			},
			["information"] = {
				["forceEvents"] = true,
			},
			["desaturate"] = false,
		},
		["Arena - AutoQueue Whitelist"] = {
			["iconSource"] = -1,
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
						["subeventPrefix"] = "SPELL",
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
						},
						["custom"] = "function(_, event)\n    if event == \"LFG_READY_CHECK_SHOW\" then\n        for unit in WA_IterateGroupMembers() do\n            local name = GetUnitName(unit, true)\n            if aura_env.isAllowed(gsub(name,\"%-[^|]+\", \"\")) then\n                QueueReadyCheckPopup.YesButton:Click()\n            end\n        end\n    end\nend",
						["events"] = "LFG_READY_CHECK_SHOW",
						["custom_type"] = "stateupdate",
						["check"] = "event",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
						["customVariables"] = "\n\n",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 66,
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
			["desaturate"] = false,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 64,
			["load"] = {
				["use_ingroup"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["single"] = "group",
					["multi"] = {
						["group"] = true,
					},
				},
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
			["source"] = "import",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["desc"] = "Xyz",
			["authorOptions"] = {
				{
					["text"] = "Add the player name you want to whitelist below. Make sure to seperate each name.\n\nE.g.:\n\nNeilyo, Vilden, Marm\n",
					["type"] = "description",
					["fontSize"] = "medium",
					["width"] = 2,
				}, -- [1]
				{
					["type"] = "input",
					["useDesc"] = true,
					["width"] = 2,
					["multiline"] = true,
					["name"] = "Custom Whitelist",
					["key"] = "customlist",
					["default"] = "",
					["length"] = 10,
					["desc"] = "Insert Name, Name",
					["useLength"] = false,
				}, -- [2]
			},
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["do_custom"] = true,
					["custom"] = "local customlist = {}\n\nfor list in aura_env.config.customlist:gsub(\"%s+\", \"\"):gmatch('([^,]+)') do\n    customlist[list] = true\nend\n\nfunction aura_env.isAllowed(name)\n    if not name then \n        return false \n    end\n    \n    if customlist[name] then \n        return true \n    end\n    \n    return false\nend\n\n\n\n\n",
				},
				["finish"] = {
				},
			},
			["cooldown"] = false,
			["cooldownTextDisabled"] = false,
			["config"] = {
				["customlist"] = "Sandradots, Cooldx, Albraiky, Ranond, Accóast, Flýñ, Deadlyburst, Bnetoffline, Zhilex, Roguèqt, Tsíg, Praii, Sejfx, Scarcow, Itszhilex, Animál, Heckfyrog, Héckfy, Slynagomez, Lørieen",
			},
			["zoom"] = 0,
			["alpha"] = 1,
			["tocversion"] = 30401,
			["id"] = "Arena - AutoQueue Whitelist",
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["width"] = 64,
			["useCooldownModRate"] = true,
			["uid"] = "J8MGEI7i5Hg",
			["inverse"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["url"] = "https://discord.gg/xNC7GF34dx",
		},
		["Twins - Wrong Target"] = {
			["user_y"] = 0,
			["user_x"] = 0,
			["authorOptions"] = {
			},
			["displayText_format_p_time_dynamic_threshold"] = 60,
			["yOffset"] = -80,
			["foregroundColor"] = {
				0.40392160415649, -- [1]
				0.76470595598221, -- [2]
				0.44313728809357, -- [3]
				1, -- [4]
			},
			["displayText_format_p_time_format"] = 0,
			["sameTexture"] = true,
			["url"] = "https://wago.io/TemsToGC/18",
			["backgroundColor"] = {
				0.50196081399918, -- [1]
				0.50196081399918, -- [2]
				0.50196081399918, -- [3]
				0, -- [4]
			},
			["displayText_format_p_time_mod_rate"] = true,
			["selfPoint"] = "CENTER",
			["rotation"] = 0,
			["font"] = "KMT-GothamXN_Ultra",
			["crop_y"] = 0.41,
			["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
			["foregroundTexture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Ring_20px.tga",
			["shadowXOffset"] = 1,
			["useAdjustededMin"] = false,
			["regionType"] = "text",
			["blendMode"] = "BLEND",
			["slantMode"] = "INSIDE",
			["compress"] = false,
			["alpha"] = 1,
			["auraRotation"] = 0,
			["fixedWidth"] = 200,
			["backgroundOffset"] = 2,
			["outline"] = "OUTLINE",
			["wagoID"] = "A5ytftEJV",
			["color"] = {
				1, -- [1]
				0.37647062540054, -- [2]
				0.37647062540054, -- [3]
				1, -- [4]
			},
			["shadowYOffset"] = -1,
			["desaturateBackground"] = false,
			["customTextUpdate"] = "event",
			["automaticWidth"] = "Auto",
			["desaturateForeground"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
							"65686", -- [1]
						},
						["duration"] = "36",
						["message_operator"] = "find('%s')",
						["names"] = {
						},
						["range_operator"] = "<=",
						["debuffType"] = "HARMFUL",
						["useName"] = true,
						["subeventSuffix"] = "_CAST_START",
						["use_unit"] = true,
						["range"] = "3",
						["event"] = "Range Check",
						["subeventPrefix"] = "SPELL",
						["message"] = "Welcome, champions!",
						["type"] = "aura2",
						["spellIds"] = {
						},
						["use_range"] = true,
						["use_message"] = true,
						["unit"] = "player",
						["use_messageType"] = true,
						["messageType"] = "CHAT_MSG_MONSTER_YELL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["npcId"] = "34497",
						["duration"] = "9",
						["message_operator"] = "find('%s')",
						["subeventPrefix"] = "SPELL",
						["use_attackable"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "unit",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Unit Characteristics",
						["use_npcId"] = true,
						["message"] = "Hailing from the deepest",
						["use_unit"] = true,
						["spellIds"] = {
						},
						["names"] = {
						},
						["use_message"] = true,
						["unit"] = "target",
						["use_messageType"] = true,
						["messageType"] = "CHAT_MSG_MONSTER_YELL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["auranames"] = {
							"65684", -- [1]
						},
						["duration"] = "36",
						["message_operator"] = "find('%s')",
						["names"] = {
						},
						["range_operator"] = "<=",
						["debuffType"] = "HARMFUL",
						["useName"] = true,
						["subeventSuffix"] = "_CAST_START",
						["use_unit"] = true,
						["range"] = "3",
						["event"] = "Range Check",
						["subeventPrefix"] = "SPELL",
						["message"] = "Welcome, champions!",
						["type"] = "aura2",
						["spellIds"] = {
						},
						["use_range"] = true,
						["use_message"] = true,
						["unit"] = "player",
						["use_messageType"] = true,
						["messageType"] = "CHAT_MSG_MONSTER_YELL",
					},
					["untrigger"] = {
					},
				}, -- [3]
				{
					["trigger"] = {
						["npcId"] = "34496",
						["duration"] = "9",
						["message_operator"] = "find('%s')",
						["subeventPrefix"] = "SPELL",
						["use_attackable"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "unit",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Unit Characteristics",
						["use_npcId"] = true,
						["message"] = "Hailing from the deepest",
						["use_unit"] = true,
						["spellIds"] = {
						},
						["names"] = {
						},
						["use_message"] = true,
						["unit"] = "target",
						["use_messageType"] = true,
						["messageType"] = "CHAT_MSG_MONSTER_YELL",
					},
					["untrigger"] = {
					},
				}, -- [4]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(trigger)\n    return (trigger[1] and trigger[2]) or (trigger[3] and trigger[4])\nend",
				["activeTriggerMode"] = -10,
			},
			["endAngle"] = 360,
			["displayText_format_p_time_legacy_floor"] = false,
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
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 140,
			["useAdjustededMax"] = false,
			["fontSize"] = 20,
			["source"] = "import",
			["parent"] = "Tems ToGC - Central Textures",
			["backgroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura3",
			["crop_x"] = 0.41,
			["mirror"] = false,
			["orientation"] = "ANTICLOCKWISE",
			["uid"] = "lkbBnwC6UBv",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["startAngle"] = 0,
			["load"] = {
				["use_encounterid"] = true,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "641, 1089",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["width"] = 140,
			["displayText_format_p_format"] = "timed",
			["displayText_format_p_time_precision"] = 1,
			["config"] = {
			},
			["displayText"] = "WRONG TARGET",
			["justify"] = "LEFT",
			["semver"] = "2.2.2",
			["xOffset"] = 0,
			["id"] = "Twins - Wrong Target",
			["anchorPoint"] = "CENTER",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["tocversion"] = 30402,
			["internalVersion"] = 66,
			["inverse"] = false,
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
			["preferToUpdate"] = false,
		},
		["Jaraxxus - Nether Power"] = {
			["sparkWidth"] = 10,
			["iconSource"] = 0,
			["wagoID"] = "A5ytftEJV",
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["url"] = "https://wago.io/TemsToGC/18",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "combatlog",
						["spellId"] = "67009",
						["subeventSuffix"] = "_CAST_SUCCESS",
						["duration"] = "42",
						["event"] = "Combat Log",
						["unit"] = "player",
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_type"] = "event",
						["duration"] = "14",
						["event"] = "Health",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["spellIds"] = {
						},
						["custom"] = "function(event)\n    return true\nend",
						["names"] = {
						},
						["events"] = "ENCOUNTER_START",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["type"] = "combatlog",
						["spellId"] = "67009",
						["subeventSuffix"] = "_CAST_SUCCESS",
						["duration"] = "99",
						["event"] = "Combat Log",
						["unit"] = "player",
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [3]
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_type"] = "event",
						["duration"] = "99",
						["event"] = "Health",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["spellIds"] = {
						},
						["custom"] = "function(event)\n    return true\nend",
						["names"] = {
						},
						["events"] = "ENCOUNTER_START",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [4]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 66,
			["zoom"] = 0.3,
			["selfPoint"] = "CENTER",
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
			["barColor"] = {
				0.73333334922791, -- [1]
				0.34117648005486, -- [2]
				0.75686281919479, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["barColor2"] = {
				1, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 0,
							}, -- [1]
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 0,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = {
								0.73333334922791, -- [1]
								0.34117648005486, -- [2]
								0.75686281919479, -- [3]
								1, -- [4]
							},
							["property"] = "backgroundColor",
						}, -- [1]
						{
							["property"] = "sub.4.text_visible",
						}, -- [2]
						{
							["property"] = "sub.6.text_visible",
						}, -- [3]
						{
							["value"] = true,
							["property"] = "sub.5.text_visible",
						}, -- [4]
					},
				}, -- [1]
			},
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["type"] = "subforeground",
				}, -- [2]
				{
					["border_size"] = 1,
					["border_anchor"] = "bar",
					["type"] = "subborder",
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_offset"] = 0,
				}, -- [3]
				{
					["text_text_format_n_format"] = "none",
					["text_text"] = "Next Buff",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_LEFT",
					["text_shadowXOffset"] = 1,
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [4]
				{
					["text_text_format_n_format"] = "none",
					["text_text"] = "Buff Soon",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_LEFT",
					["text_shadowXOffset"] = 1,
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_visible"] = false,
				}, -- [5]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%p",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_time_format"] = 0,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["type"] = "subtext",
					["text_anchorXOffset"] = -2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_text_format_p_time_precision"] = 1,
					["text_shadowYOffset"] = -1,
					["anchorYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_RIGHT",
					["text_visible"] = true,
					["text_text_format_p_format"] = "timed",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_mod_rate"] = true,
				}, -- [6]
			},
			["height"] = 20,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["load"] = {
				["use_encounterid"] = true,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "633, 1087",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["parent"] = "Tems ToGC - Timers",
			["source"] = "import",
			["gradientOrientation"] = "HORIZONTAL",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["enableGradient"] = false,
			["anchorFrameType"] = "SCREEN",
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["alpha"] = 1,
			["config"] = {
			},
			["icon_side"] = "LEFT",
			["id"] = "Jaraxxus - Nether Power",
			["sparkHeight"] = 30,
			["texture"] = "Melli",
			["spark"] = false,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["semver"] = "2.2.2",
			["tocversion"] = 30402,
			["sparkHidden"] = "NEVER",
			["icon"] = true,
			["frameStrata"] = 1,
			["width"] = 200,
			["sparkOffsetX"] = 0,
			["uid"] = "L)FtqFdZTk1",
			["inverse"] = false,
			["sparkOffsetY"] = 0,
			["orientation"] = "HORIZONTAL",
			["displayIcon"] = 236222,
			["information"] = {
			},
			["authorOptions"] = {
			},
		},
		["Beasts - Next Boss"] = {
			["sparkWidth"] = 10,
			["iconSource"] = 0,
			["wagoID"] = "A5ytftEJV",
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["url"] = "https://wago.io/TemsToGC/18",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["triggers"] = {
				{
					["trigger"] = {
						["use_absorbMode"] = true,
						["message_operator"] = "find('%s')",
						["subeventPrefix"] = "SPELL",
						["use_delay"] = false,
						["debuffType"] = "HELPFUL",
						["type"] = "event",
						["use_absorbHealMode"] = true,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Chat Message",
						["message"] = "Hailing from the deepest, darkest caverns of the Storm Peaks, Gormok the Impaler! Battle on, heroes",
						["unit"] = "player",
						["spellIds"] = {
						},
						["use_unit"] = true,
						["use_message"] = true,
						["duration"] = "180",
						["delay"] = 172,
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["use_absorbMode"] = true,
						["message_operator"] = "find('%s')",
						["subeventPrefix"] = "SPELL",
						["use_delay"] = false,
						["debuffType"] = "HELPFUL",
						["type"] = "event",
						["use_absorbHealMode"] = true,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Chat Message",
						["message"] = "Steel yourselves, heroes, for the twin terrors, Acidmaw and Dreadscale, enter the arena",
						["unit"] = "player",
						["spellIds"] = {
						},
						["use_unit"] = true,
						["use_message"] = true,
						["duration"] = "180",
						["delay"] = 172,
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["use_absorbMode"] = true,
						["message_operator"] = "find('%s')",
						["subeventPrefix"] = "SPELL",
						["use_delay"] = false,
						["debuffType"] = "HELPFUL",
						["type"] = "event",
						["use_absorbHealMode"] = true,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Chat Message",
						["message"] = "The air itself freezes with the introduction of our next combatant, Icehowl! Kill or be killed, champions",
						["unit"] = "player",
						["spellIds"] = {
						},
						["use_unit"] = true,
						["use_message"] = true,
						["duration"] = "224",
						["delay"] = 172,
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [3]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 66,
			["zoom"] = 0.3,
			["selfPoint"] = "CENTER",
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
			["barColor"] = {
				0.79215693473816, -- [1]
				0.47450983524323, -- [2]
				0.46666669845581, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["barColor2"] = {
				1, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 3,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["property"] = "sub.4.text_visible",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "sub.5.text_visible",
						}, -- [2]
						{
							["value"] = "136224",
							["property"] = "displayIcon",
						}, -- [3]
					},
				}, -- [1]
			},
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["type"] = "subforeground",
				}, -- [2]
				{
					["border_size"] = 1,
					["border_anchor"] = "bar",
					["type"] = "subborder",
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_offset"] = 0,
				}, -- [3]
				{
					["text_text_format_n_format"] = "none",
					["text_text"] = "Next Boss",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_LEFT",
					["text_shadowXOffset"] = 1,
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [4]
				{
					["text_text_format_n_format"] = "none",
					["text_text"] = "Enrage",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_LEFT",
					["text_shadowXOffset"] = 1,
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_visible"] = false,
				}, -- [5]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%p",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_time_format"] = 0,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["type"] = "subtext",
					["text_anchorXOffset"] = -2,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_text_format_p_time_precision"] = 1,
					["text_shadowYOffset"] = -1,
					["anchorYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "INNER_RIGHT",
					["text_visible"] = true,
					["text_text_format_p_format"] = "timed",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_text_format_p_time_mod_rate"] = true,
				}, -- [6]
			},
			["height"] = 20,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["load"] = {
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "",
				["use_encounterid"] = false,
				["zoneIds"] = "172",
				["class"] = {
					["multi"] = {
					},
				},
				["instance_type"] = {
					["multi"] = {
						[5] = true,
						[6] = true,
					},
				},
				["use_zoneIds"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["use_instance_type"] = false,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["parent"] = "Tems ToGC - Timers",
			["source"] = "import",
			["gradientOrientation"] = "HORIZONTAL",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["enableGradient"] = false,
			["anchorFrameType"] = "SCREEN",
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["alpha"] = 1,
			["config"] = {
			},
			["icon_side"] = "LEFT",
			["id"] = "Beasts - Next Boss",
			["sparkHeight"] = 30,
			["texture"] = "Melli",
			["spark"] = false,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["semver"] = "2.2.2",
			["tocversion"] = 30402,
			["sparkHidden"] = "NEVER",
			["icon"] = true,
			["frameStrata"] = 1,
			["width"] = 200,
			["sparkOffsetX"] = 0,
			["uid"] = "zTDKygDQuvJ",
			["inverse"] = false,
			["sparkOffsetY"] = 0,
			["orientation"] = "HORIZONTAL",
			["displayIcon"] = 236197,
			["information"] = {
			},
			["authorOptions"] = {
			},
		},
		["PW: Shield (P1)"] = {
			["user_y"] = 0,
			["user_x"] = 0,
			["authorOptions"] = {
			},
			["yOffset"] = 0.57,
			["foregroundColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturateBackground"] = false,
			["sameTexture"] = true,
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
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["auranames"] = {
							"6788", -- [1]
						},
						["spellIds"] = {
						},
						["specificUnit"] = "party1",
						["unit"] = "member",
						["names"] = {
						},
						["useName"] = true,
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["endAngle"] = 360,
			["internalVersion"] = 66,
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
			["frameStrata"] = 1,
			["desc"] = "Shield CD on Party1 indicator...",
			["rotation"] = 0,
			["font"] = "Friz Quadrata TT",
			["backgroundOffset"] = 2,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 43,
			["backgroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura3",
			["load"] = {
				["use_class"] = true,
				["talent"] = {
					["multi"] = {
						[103] = true,
					},
				},
				["size"] = {
					["multi"] = {
					},
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
				["use_talent"] = false,
			},
			["conditions"] = {
			},
			["useAdjustededMax"] = false,
			["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
			["backgroundColor"] = {
				0.5, -- [1]
				0.5, -- [2]
				0.5, -- [3]
				0.5, -- [4]
			},
			["startAngle"] = 0,
			["desaturateForeground"] = false,
			["anchorFrameFrame"] = "PartyMemberFrame1",
			["mirror"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "progresstexture",
			["uid"] = "nD2epxy)96V",
			["blendMode"] = "BLEND",
			["foregroundTexture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\UI-PartyFlash-Highlight_Shield",
			["width"] = 43,
			["slantMode"] = "INSIDE",
			["fontSize"] = 12,
			["crop_y"] = 0.41,
			["anchorPoint"] = "CENTER",
			["selfPoint"] = "CENTER",
			["compress"] = false,
			["id"] = "PW: Shield (P1)",
			["smoothProgress"] = false,
			["alpha"] = 1,
			["anchorFrameType"] = "SELECTFRAME",
			["config"] = {
			},
			["auraRotation"] = 0,
			["inverse"] = false,
			["xOffset"] = -39,
			["orientation"] = "ANTICLOCKWISE",
			["crop_x"] = 0.41,
			["information"] = {
				["forceEvents"] = true,
			},
			["slanted"] = false,
		},
		["Beasts - Debuffs Texture"] = {
			["user_y"] = 0,
			["user_x"] = 0,
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["foregroundColor"] = {
				0.25098040699959, -- [1]
				0.61176472902298, -- [2]
				0.4627451300621, -- [3]
				1, -- [4]
			},
			["desaturateBackground"] = false,
			["startAngle"] = 0,
			["sameTexture"] = true,
			["url"] = "https://wago.io/TemsToGC/18",
			["actions"] = {
				["start"] = {
					["message"] = "",
					["do_sound"] = false,
					["message_type"] = "SAY",
					["message_format_unitName_format"] = "none",
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\sonar.ogg",
					["do_message"] = false,
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "\n\n",
					["do_custom"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"66869", -- [1]
						},
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["useName"] = true,
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"66823", -- [1]
						},
						["group_countOperator"] = ">",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["unit"] = "group",
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
						},
						["names"] = {
						},
						["group_count"] = "0",
						["useName"] = true,
						["useGroup_count"] = true,
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(trigger)\n    return trigger[1]\nend",
				["activeTriggerMode"] = -10,
			},
			["endAngle"] = 360,
			["internalVersion"] = 66,
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
			["desaturateForeground"] = false,
			["authorOptions"] = {
			},
			["crop_x"] = 0.41,
			["rotation"] = 0,
			["font"] = "Friz Quadrata TT",
			["version"] = 18,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "CLEAR DEBUFFS",
					["text_text_format_p_time_mod_rate"] = true,
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["anchorYOffset"] = 0,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["type"] = "subtext",
					["text_text_format_p_time_precision"] = 1,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_shadowYOffset"] = -1,
					["text_visible"] = false,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "None",
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_time_format"] = 0,
					["text_text_format_n_format"] = "none",
					["text_fontSize"] = 14,
					["anchorXOffset"] = 0,
					["text_text_format_p_format"] = "timed",
				}, -- [2]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "ALL CLEAR",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_n_format"] = "none",
					["anchorXOffset"] = 0,
					["text_text_format_p_time_precision"] = 1,
					["type"] = "subtext",
					["anchorYOffset"] = 0,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_anchorYOffset"] = 8,
					["text_shadowYOffset"] = -1,
					["text_fontType"] = "None",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_time_format"] = 0,
					["text_text_format_p_time_mod_rate"] = true,
					["text_fontSize"] = 14,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_text_format_p_format"] = "timed",
				}, -- [3]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "MOVE AWAY",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_n_format"] = "none",
					["anchorXOffset"] = 0,
					["text_text_format_p_time_precision"] = 1,
					["type"] = "subtext",
					["anchorYOffset"] = 0,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "KMT-GothamXN_Ultra",
					["text_anchorYOffset"] = -8,
					["text_shadowYOffset"] = -1,
					["text_fontType"] = "None",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_text_format_p_time_format"] = 0,
					["text_text_format_p_time_mod_rate"] = true,
					["text_fontSize"] = 14,
					["text_text_format_p_time_dynamic_threshold"] = 0,
					["text_text_format_p_format"] = "timed",
				}, -- [4]
			},
			["height"] = 140,
			["parent"] = "Tems ToGC - Central Textures",
			["load"] = {
				["use_encounterid"] = true,
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "629, 1088",
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["wagoID"] = "A5ytftEJV",
			["useAdjustededMax"] = false,
			["fontSize"] = 12,
			["source"] = "import",
			["foregroundTexture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Ring_20px.tga",
			["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
			["config"] = {
			},
			["mirror"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "progresstexture",
			["backgroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura3",
			["blendMode"] = "BLEND",
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["slantMode"] = "INSIDE",
			["selfPoint"] = "CENTER",
			["tocversion"] = 30402,
			["anchorPoint"] = "CENTER",
			["semver"] = "2.2.2",
			["compress"] = false,
			["id"] = "Beasts - Debuffs Texture",
			["backgroundColor"] = {
				0.50196081399918, -- [1]
				0.50196081399918, -- [2]
				0.50196081399918, -- [3]
				0, -- [4]
			},
			["frameStrata"] = 1,
			["width"] = 140,
			["auraRotation"] = 0,
			["uid"] = "Ww)3OGHL5J9",
			["inverse"] = false,
			["crop_y"] = 0.41,
			["orientation"] = "ANTICLOCKWISE",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "show",
						["value"] = 1,
						["checks"] = {
							{
								["trigger"] = 1,
								["op"] = "<",
								["value"] = "2",
								["variable"] = "expirationTime",
							}, -- [1]
							{
								["trigger"] = 2,
								["op"] = "<",
								["value"] = "2",
								["variable"] = "expirationTime",
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.2.text_visible",
						}, -- [1]
						{
							["value"] = false,
							["property"] = "sub.3.text_visible",
						}, -- [2]
						{
							["value"] = false,
							["property"] = "sub.4.text_visible",
						}, -- [3]
						{
							["value"] = {
								0.76470595598221, -- [1]
								0.27450981736183, -- [2]
								0.21176472306252, -- [3]
								1, -- [4]
							},
							["property"] = "foregroundColor",
						}, -- [4]
					},
				}, -- [1]
			},
			["information"] = {
			},
			["backgroundOffset"] = 2,
		},
	},
	["RealTimeProfilingWindow"] = {
		["xOffset"] = 203.3777770996094,
		["yOffset"] = -182.7555541992188,
	},
	["minimap"] = {
		["minimapPos"] = 228.8875173730628,
		["hide"] = true,
	},
	["lastUpgrade"] = 1688130374,
	["dbVersion"] = 66,
	["editor_font_size"] = 12,
	["registered"] = {
	},
	["lastArchiveClear"] = 1659733987,
	["ProfilingWindow"] = {
		["xOffset"] = 738.5557250976562,
		["yOffset"] = -262.4444580078125,
	},
	["login_squelch_time"] = 10,
	["editor_theme"] = "Monokai",
}
