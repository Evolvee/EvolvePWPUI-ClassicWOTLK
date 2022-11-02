
WeakAurasSaved = {
	["dynamicIconCache"] = {
	},
	["editor_tab_spaces"] = 4,
	["displays"] = {
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
						["spellName"] = 7744,
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["use_track"] = true,
						["type"] = "spell",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 58,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_offset"] = 1,
					["type"] = "subborder",
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
			["conditions"] = {
			},
			["information"] = {
				["forceEvents"] = true,
			},
			["authorOptions"] = {
			},
			["desc"] = "Displays Will of the Forsaken cooldown icon.",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["zoom"] = 0,
			["cooldownTextDisabled"] = false,
			["uid"] = "IPzpPhZljg3",
			["frameStrata"] = 1,
			["id"] = "WOTF",
			["width"] = 50,
			["useCooldownModRate"] = true,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["config"] = {
			},
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
			["displayIcon"] = 136187,
			["cooldown"] = true,
			["xOffset"] = -555.2334365844727,
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
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["useName"] = true,
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["spellName"] = 7744,
						["type"] = "spell",
						["subeventSuffix"] = "_CAST_START",
						["unevent"] = "auto",
						["unit"] = "player",
						["duration"] = "1",
						["event"] = "Action Usable",
						["use_exact_spellName"] = true,
						["realSpellName"] = 7744,
						["use_spellName"] = true,
						["subeventPrefix"] = "SPELL",
						["use_unit"] = true,
						["genericShowOn"] = "showOnReady",
						["use_genericShowOn"] = true,
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
						["genericShowOn"] = "showOnReady",
					},
				}, -- [2]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 58,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
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
					["type"] = "subglow",
					["glowXOffset"] = 0,
					["glowThickness"] = 1,
					["glowScale"] = 1,
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
				["size"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["source"] = "import",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["selfPoint"] = "CENTER",
			["useTooltip"] = false,
			["cooldown"] = false,
			["regionType"] = "icon",
			["displayIcon"] = 136187,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["authorOptions"] = {
			},
			["config"] = {
			},
			["frameStrata"] = 2,
			["semver"] = "1.0.1",
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["tocversion"] = 11304,
			["id"] = "Sleeps",
			["alpha"] = 1,
			["useCooldownModRate"] = true,
			["width"] = 65,
			["color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0, -- [4]
			},
			["uid"] = "VEJL8e54fE0",
			["inverse"] = false,
			["parent"] = "WOTF BORDER",
			["conditions"] = {
			},
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = false,
			},
			["cooldownEdge"] = false,
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
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["event"] = "Health",
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["internalVersion"] = 58,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
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
				["zoneIds"] = "",
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
			["borderInset"] = 1,
			["config"] = {
			},
			["uid"] = "8B2oZr(3rax",
			["conditions"] = {
			},
			["information"] = {
				["groupOffset"] = false,
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["selfPoint"] = "CENTER",
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
						["buffShowOn"] = "showOnActive",
						["custom_type"] = "status",
						["spellIds"] = {
						},
						["names"] = {
						},
						["unit"] = "player",
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
						["type"] = "aura2",
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["spellName"] = 7744,
						["type"] = "spell",
						["subeventSuffix"] = "_CAST_START",
						["unevent"] = "auto",
						["unit"] = "player",
						["duration"] = "1",
						["event"] = "Action Usable",
						["use_exact_spellName"] = true,
						["realSpellName"] = 7744,
						["use_spellName"] = true,
						["subeventPrefix"] = "SPELL",
						["use_unit"] = true,
						["genericShowOn"] = "showOnReady",
						["use_genericShowOn"] = true,
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
						["genericShowOn"] = "showOnReady",
					},
				}, -- [2]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 58,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
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
					["type"] = "subglow",
					["glowXOffset"] = 0,
					["glowThickness"] = 1,
					["glowScale"] = 1,
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
				["size"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["source"] = "import",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["selfPoint"] = "CENTER",
			["useTooltip"] = false,
			["cooldown"] = false,
			["regionType"] = "icon",
			["displayIcon"] = 136187,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["authorOptions"] = {
			},
			["config"] = {
			},
			["frameStrata"] = 2,
			["semver"] = "1.0.1",
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["tocversion"] = 11304,
			["id"] = "Charms",
			["alpha"] = 1,
			["useCooldownModRate"] = true,
			["width"] = 65,
			["color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0, -- [4]
			},
			["uid"] = "AcqL()JqkDr",
			["inverse"] = false,
			["parent"] = "WOTF BORDER",
			["conditions"] = {
			},
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = false,
			},
			["cooldownEdge"] = false,
		},
		["ARENA QUEUE"] = {
			["iconSource"] = -1,
			["authorOptions"] = {
				{
					["type"] = "description",
					["text"] = "Add the player name you want to whitelist below. Make sure to seperate each name.\n\nE.g.:\n\nNeilyo, Vilden, Marm\n",
					["fontSize"] = "medium",
					["width"] = 2,
				}, -- [1]
				{
					["type"] = "input",
					["useDesc"] = true,
					["width"] = 2,
					["multiline"] = true,
					["default"] = "",
					["desc"] = "Insert Name, Name",
					["name"] = "Custom Whitelist",
					["length"] = 10,
					["key"] = "customlist",
					["useLength"] = false,
				}, -- [2]
			},
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
						["customVariables"] = "\n\n",
						["debuffType"] = "HELPFUL",
						["event"] = "Health",
						["unit"] = "player",
						["names"] = {
						},
						["events"] = "LFG_READY_CHECK_SHOW",
						["custom"] = "function(_, event)\n    if event == \"LFG_READY_CHECK_SHOW\" then\n        for unit in WA_IterateGroupMembers() do\n            if aura_env.isAllowed(GetUnitName(unit)) then\n                QueueReadyCheckPopup.YesButton:Click()\n            end\n        end\n    end\nend",
						["custom_type"] = "stateupdate",
						["check"] = "event",
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 58,
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
			["desc"] = "Xyz",
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 64,
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
			["source"] = "import",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["conditions"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["do_custom"] = true,
					["custom"] = "local customlist = {}\n\nfor list in aura_env.config.customlist:gsub(\"%s+\", \"\"):gmatch('([^,]+)') do\n    customlist[list] = true\nend\n\nfunction aura_env.isAllowed(name)\n    if not name then \n        return false \n    end\n    \n    if customlist[name] then \n        return true \n    end\n    \n    return false\nend\n\n\n\n\n",
				},
			},
			["desaturate"] = false,
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["cooldownTextDisabled"] = false,
			["uid"] = "J8MGEI7i5Hg",
			["zoom"] = 0,
			["useCooldownModRate"] = true,
			["tocversion"] = 30400,
			["id"] = "ARENA QUEUE",
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["width"] = 64,
			["frameStrata"] = 1,
			["config"] = {
				["customlist"] = "Sandradots, Cooldx, Albraiky, Ranond, Accóast",
			},
			["inverse"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayIcon"] = "133453",
			["cooldown"] = false,
			["xOffset"] = 0,
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
				["finish"] = {
				},
				["init"] = {
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
						["events"] = "QUEST_DETAIL",
						["custom"] = "function(state, event)\n    if event == \"QUEST_DETAIL\" then\n        local questID = GetQuestID()\n        if questID == 13181 then\n            print(\"|cFF00FFFFAccepted |cFFFFFF00|Hquest:13181:80|h[Victory in Wintergrasp]|r\")\n            AcceptQuest()\n        else\n            DeclineQuest()\n        end\n    end\nend\n\n\n",
						["names"] = {
						},
						["check"] = "event",
						["custom_type"] = "stateupdate",
						["spellIds"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["displayText_format_p_time_mod_rate"] = true,
			["internalVersion"] = 58,
			["wordWrap"] = "WordWrap",
			["font"] = "Friz Quadrata TT",
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["use_zone"] = false,
				["use_zoneIds"] = true,
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
				["zone"] = "Wintergrasp",
				["zoneIds"] = "2104",
			},
			["fontSize"] = 12,
			["source"] = "import",
			["shadowXOffset"] = 1,
			["regionType"] = "text",
			["conditions"] = {
			},
			["displayText_format_p_time_legacy_floor"] = false,
			["preferToUpdate"] = false,
			["displayText_format_p_time_precision"] = 1,
			["selfPoint"] = "BOTTOM",
			["xOffset"] = 0,
			["displayText_format_p_format"] = "timed",
			["justify"] = "LEFT",
			["tocversion"] = 30400,
			["id"] = "QuestDecline WG",
			["config"] = {
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["yOffset"] = 0,
			["uid"] = "AZjlwOE4Q4U",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayText_format_p_time_dynamic_threshold"] = 60,
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["fixedWidth"] = 200,
			["information"] = {
				["forceEvents"] = true,
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
						["type"] = "aura2",
						["match_countOperator"] = "<",
						["spellIds"] = {
						},
						["names"] = {
						},
						["remOperator"] = "<=",
						["subeventSuffix"] = "_CAST_START",
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
						["useRem"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 58,
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
			["desc"] = "Vampiric Embrace  at the right side of the screen to rebuff it!",
			["version"] = 6,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_offset"] = 1,
					["type"] = "subborder",
					["border_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Details BarBorder 1",
					["border_size"] = 14,
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
				["use_never"] = false,
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
				["use_alive"] = true,
				["use_level"] = false,
				["level"] = "3",
				["spec"] = {
					["multi"] = {
					},
				},
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
			},
			["anchorFrameType"] = "SCREEN",
			["source"] = "import",
			["zoom"] = 0,
			["selfPoint"] = "CENTER",
			["xOffset"] = 372,
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
			["authorOptions"] = {
			},
			["config"] = {
			},
			["useCooldownModRate"] = true,
			["semver"] = "1.0.5",
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 20502,
			["id"] = "Vampiric Embrace REBUFF!",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 48,
			["url"] = "",
			["uid"] = "jpzbH4hE5uM",
			["inverse"] = false,
			["desaturate"] = false,
			["displayIcon"] = 135932,
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["icon"] = true,
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
				["init"] = {
				},
				["finish"] = {
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
			["internalVersion"] = 58,
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
					["text_text_format_p_time_mod_rate"] = true,
					["text_text"] = "%p",
					["anchorXOffset"] = 0,
					["text_text_format_p_gcd_cast"] = false,
					["text_text_format_p_format"] = "Number",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "BOTTOM",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_format"] = 0,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_shadowXOffset"] = 0,
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
					["text_text_format_p_time_legacy_floor"] = false,
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
				["itemequiped"] = 37264,
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
			["uid"] = "ShvQmDgWBpB",
			["icon"] = true,
			["xOffset"] = -230.0983405139272,
			["regionType"] = "icon",
			["parent"] = "Trinket ICD Tracker",
			["information"] = {
				["forceEvents"] = true,
			},
			["displayIcon"] = "133870",
			["cooldownEdge"] = false,
			["alpha"] = 1,
			["width"] = 40,
			["zoom"] = 0,
			["semver"] = "1.0.0",
			["tocversion"] = 30400,
			["id"] = "Pendulum",
			["useCooldownModRate"] = true,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["cooldownTextDisabled"] = true,
			["config"] = {
			},
			["inverse"] = true,
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
			["authorOptions"] = {
			},
		},
		["Pet Debuffs 2"] = {
			["iconSource"] = -1,
			["parent"] = "UI - Pet Debuffs",
			["preferToUpdate"] = false,
			["yOffset"] = -4,
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
						["showClones"] = true,
						["debuffClass"] = {
							["enrage"] = true,
							["disease"] = true,
							["poison"] = true,
							["curse"] = true,
							["magic"] = true,
							["none"] = true,
						},
						["use_debuffClass"] = true,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "pet",
						["spellIds"] = {
						},
						["type"] = "aura2",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 58,
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
				{
					["text_text_format_p_time_precision"] = 1,
					["text_text_format_s_format"] = "none",
					["text_text"] = "%s",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_text_format_t_round_type"] = "floor",
					["text_fixedWidth"] = 64,
					["rotateText"] = "NONE",
					["text_text_format_p_decimal_precision"] = 0,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_fontSize"] = 8,
					["anchorXOffset"] = 0,
					["text_text_format_p_round_type"] = "floor",
					["text_text_format_t_decimal_precision"] = 0,
					["text_text_format_p_format"] = "Number",
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_text_format_t_time_format"] = 0,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["text_text_format_t_format"] = "Number",
					["type"] = "subtext",
					["text_anchorXOffset"] = 4,
					["text_font"] = "Friz Quadrata TT",
					["text_anchorYOffset"] = 0,
					["text_text_format_t_time_dynamic_threshold"] = 60,
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_visible"] = true,
					["text_text_format_t_time_precision"] = 1,
					["text_text_format_p_time_format"] = 0,
					["text_shadowXOffset"] = 1,
					["text_text_format_p_time_dynamic_threshold"] = 60,
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
					["glow"] = false,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
				{
					["border_offset"] = 0,
					["border_size"] = 1,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["type"] = "subborder",
				}, -- [4]
			},
			["height"] = 20,
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
			["source"] = "import",
			["icon"] = true,
			["regionType"] = "icon",
			["authorOptions"] = {
			},
			["selfPoint"] = "CENTER",
			["useTooltip"] = false,
			["cooldown"] = true,
			["zoom"] = 0.3,
			["uid"] = "3fWg4AqBkq6",
			["cooldownTextDisabled"] = false,
			["frameStrata"] = 1,
			["tocversion"] = 30400,
			["id"] = "Pet Debuffs 2",
			["width"] = 20,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["useCooldownModRate"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["xOffset"] = 0,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["variable"] = "debuffClass",
						["value"] = "magic",
					},
					["changes"] = {
						{
							["value"] = {
								0, -- [1]
								0.5529411764705883, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["property"] = "sub.4.border_color",
						}, -- [1]
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
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "custom",
						["custom_type"] = "stateupdate",
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["duration"] = "1",
						["genericShowOn"] = "showOnActive",
						["unit"] = "player",
						["event"] = "Chat Message",
						["events"] = " NAME_PLATE_UNIT_ADDED NAME_PLATE_UNIT_REMOVED COMBAT_LOG_EVENT_UNFILTERED",
						["spellIds"] = {
						},
						["custom"] = "function(states, event, unit, ...)\n    if event == \"NAME_PLATE_UNIT_ADDED\" then\n        if unit then\n            local guid = UnitGUID(unit)\n            states[guid] = {\n                changed = true,\n                show = false,\n            }\n        end\n    end\n    \n    if event == \"NAME_PLATE_UNIT_REMOVED\" then\n        if unit then\n            local guid = UnitGUID(unit)\n            if states[guid] then\n                states[guid].changed = true\n            end\n        end\n    end\n    \n    if event == \"COMBAT_LOG_EVENT_UNFILTERED\" then\n        local subEvent, _, sourceGUID, _, sourceFlags, _, _, _, destFlags, _, _, spellName = ...\n        local missType = \"\"\n        \n        local isDestPlayer = CombatLog_Object_IsA(destFlags, COMBATLOG_FILTER_ME)\n        local isDestFriend = CombatLog_Object_IsA(destFlags, COMBATLOG_FILTER_FRIENDLY_UNITS)\n        local isSourceEnemy = CombatLog_Object_IsA(sourceFlags, COMBATLOG_FILTER_HOSTILE_PLAYERS)\n        \n        if not (isDestPlayer or isDestFriend) and isSourceEnemy then return end\n        \n        if subEvent == \"SPELL_CAST_SUCCESS\" or subEvent == \"SPELL_CAST_FAILED\" then\n            if spellName == \"Overpower\" and states[sourceGUID] then\n                states[sourceGUID].changed = true\n                states[sourceGUID].show = false\n            end\n        end\n        \n        \n        if subEvent == \"SWING_MISSED\" then\n            missType = select(11,...)\n        elseif subEvent == \"SPELL_MISSED\" then\n            _,_,_,missType = select(11, ...)\n        end\n        \n        if (missType == \"DODGE\" or missType == \"PARRY\") then\n            for i = 1,40 do\n                local u = \"nameplate\"..i\n                if UnitGUID(u) == sourceGUID and select(3,UnitClass(u)) == 1 and UnitIsPlayer(u) then\n                    states[sourceGUID] = {\n                        changed = true,\n                        show = true,\n                        unit = u,\n                        autoHide = true,\n                        progressType = \"timed\",\n                        duration = 5,\n                    }\n                    break\n                    \n                end\n            end\n        end\n    end\n    \n    return true\n    \nend",
						["check"] = "event",
						["subeventPrefix"] = "SPELL",
						["unevent"] = "auto",
						["custom_hide"] = "timed",
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
			["internalVersion"] = 58,
			["keepAspectRatio"] = true,
			["selfPoint"] = "LEFT",
			["desaturate"] = false,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["type"] = "subborder",
					["border_offset"] = 0,
					["border_color"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "Square Full White",
					["border_size"] = 2,
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
					["text_text_format_p_time_mod_rate"] = true,
					["type"] = "subtext",
					["anchorXOffset"] = 0,
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_text_format_p_time_format"] = 0,
					["text_shadowYOffset"] = 0,
					["text_visible"] = true,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_shadowXOffset"] = 0,
					["text_fontSize"] = 12,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_text_format_p_time_legacy_floor"] = true,
				}, -- [3]
			},
			["height"] = 25,
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
			["source"] = "import",
			["desc"] = "",
			["regionType"] = "icon",
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
			["xOffset"] = -35,
			["cooldown"] = true,
			["displayIcon"] = 135275,
			["anchorFrameParent"] = true,
			["zoom"] = 0.15,
			["config"] = {
			},
			["cooldownTextDisabled"] = true,
			["useCooldownModRate"] = true,
			["tocversion"] = 30400,
			["id"] = "Overpower Tracker",
			["anchorFrameType"] = "NAMEPLATE",
			["alpha"] = 1,
			["width"] = 25,
			["frameStrata"] = 1,
			["uid"] = "2KXSqBvXR9Z",
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
			},
			["information"] = {
				["forceEvents"] = true,
			},
			["icon"] = true,
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
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["useName"] = true,
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["spellName"] = 7744,
						["type"] = "spell",
						["subeventSuffix"] = "_CAST_START",
						["unevent"] = "auto",
						["unit"] = "player",
						["duration"] = "1",
						["event"] = "Action Usable",
						["use_exact_spellName"] = true,
						["realSpellName"] = 7744,
						["use_spellName"] = true,
						["subeventPrefix"] = "SPELL",
						["use_unit"] = true,
						["genericShowOn"] = "showOnReady",
						["use_genericShowOn"] = true,
						["use_track"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
						["genericShowOn"] = "showOnReady",
					},
				}, -- [2]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 58,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
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
					["type"] = "subglow",
					["glowXOffset"] = 0,
					["glowThickness"] = 1,
					["glowScale"] = 1,
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
				["size"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["zoneIds"] = "",
			},
			["source"] = "import",
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["selfPoint"] = "CENTER",
			["useTooltip"] = false,
			["cooldown"] = false,
			["regionType"] = "icon",
			["displayIcon"] = 136187,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["authorOptions"] = {
			},
			["config"] = {
			},
			["frameStrata"] = 2,
			["semver"] = "1.0.1",
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["tocversion"] = 11304,
			["id"] = "Fears",
			["alpha"] = 1,
			["useCooldownModRate"] = true,
			["width"] = 65,
			["color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0, -- [4]
			},
			["uid"] = "cpsOq)tZstX",
			["inverse"] = false,
			["parent"] = "WOTF BORDER",
			["conditions"] = {
			},
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = false,
			},
			["cooldownEdge"] = false,
		},
		["AURA MASTERY focus"] = {
			["xOffset"] = -11,
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
							"31821", -- [1]
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 58,
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
			["color"] = {
				1, -- [1]
				0, -- [2]
				0.02745098039215686, -- [3]
				1, -- [4]
			},
			["desc"] = "AURA MASTERY focus highlight texture...",
			["discrete_rotation"] = 0,
			["authorOptions"] = {
			},
			["id"] = "AURA MASTERY focus",
			["width"] = 256,
			["alpha"] = 1,
			["anchorFrameType"] = "SELECTFRAME",
			["uid"] = "9BBiT8OblIu",
			["config"] = {
			},
			["inverse"] = false,
			["frameStrata"] = 2,
			["conditions"] = {
			},
			["information"] = {
				["forceEvents"] = true,
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
		["UI - Pet Debuffs"] = {
			["grow"] = "RIGHT",
			["controlledChildren"] = {
				"Pet Debuffs 2", -- [1]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 258.7343139648438,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["rowSpace"] = 1,
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
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["event"] = "Health",
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["columnSpace"] = 1,
			["internalVersion"] = 58,
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
			["align"] = "CENTER",
			["stagger"] = 0,
			["frameStrata"] = 1,
			["limit"] = 7,
			["subRegions"] = {
			},
			["fullCircle"] = true,
			["rotation"] = 0,
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
			["xOffset"] = -576.4635314941406,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["radius"] = 200,
			["source"] = "import",
			["space"] = 2,
			["scale"] = 1,
			["animate"] = false,
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "dynamicgroup",
			["borderSize"] = 2,
			["anchorPerUnit"] = "CUSTOM",
			["uid"] = "cUxV8KdX78h",
			["useAnchorPerUnit"] = false,
			["constantFactor"] = "RADIUS",
			["selfPoint"] = "LEFT",
			["borderOffset"] = 4,
			["gridType"] = "RD",
			["tocversion"] = 30400,
			["id"] = "UI - Pet Debuffs",
			["borderInset"] = 1,
			["gridWidth"] = 5,
			["anchorFrameType"] = "SCREEN",
			["sort"] = "none",
			["config"] = {
			},
			["sortHybridTable"] = {
				["Pet Debuffs 2"] = false,
			},
			["useLimit"] = true,
			["conditions"] = {
			},
			["information"] = {
				["forceEvents"] = true,
			},
			["arcLength"] = 360,
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
						["auranames"] = {
							"31821", -- [1]
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
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 58,
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
			["xOffset"] = -11,
			["authorOptions"] = {
			},
			["desc"] = "AURA MASTERY target highlight texture...",
			["selfPoint"] = "CENTER",
			["id"] = "AURA MASTERY target",
			["anchorFrameType"] = "SELECTFRAME",
			["alpha"] = 1,
			["width"] = 256,
			["uid"] = "25IZogHGlrc",
			["config"] = {
			},
			["inverse"] = false,
			["frameStrata"] = 2,
			["conditions"] = {
			},
			["information"] = {
				["forceEvents"] = true,
			},
			["discrete_rotation"] = 0,
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
						["subeventPrefix"] = "SPELL",
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
			["internalVersion"] = 58,
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
			["version"] = 6,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["border_size"] = 14,
					["border_offset"] = 1,
					["border_color"] = {
						0.9921568627450981, -- [1]
						1, -- [2]
						0.9686274509803922, -- [3]
						1, -- [4]
					},
					["border_visible"] = true,
					["border_edge"] = "None",
					["type"] = "subborder",
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
				["use_level"] = false,
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
						["party"] = true,
						["ratedarena"] = true,
						["flexible"] = true,
						["arena"] = true,
						["twenty"] = true,
						["pvp"] = true,
					},
				},
				["use_never"] = false,
				["use_alive"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["level"] = "3",
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
			["cooldownTextDisabled"] = false,
			["icon"] = true,
			["color"] = {
				0.984313725490196, -- [1]
				0.9725490196078431, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["information"] = {
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true,
			},
			["anchorFrameFrame"] = "PlayerFrame",
			["regionType"] = "icon",
			["displayIcon"] = 135932,
			["xOffset"] = 430,
			["selfPoint"] = "CENTER",
			["uid"] = ")GOgtvSY(WA",
			["alpha"] = 1,
			["semver"] = "1.0.5",
			["zoom"] = 0,
			["auto"] = true,
			["tocversion"] = 20502,
			["id"] = "Inner Fire REBUFF!",
			["frameStrata"] = 1,
			["useCooldownModRate"] = true,
			["anchorFrameType"] = "SCREEN",
			["url"] = "",
			["config"] = {
			},
			["inverse"] = false,
			["desc"] = "Inner Fire at the right side of the screen to rebuff it!",
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
			["useTooltip"] = false,
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
						["auraType"] = "BUFF",
						["use_spellName"] = false,
						["spellIds"] = {
						},
						["use_sourceUnit"] = true,
						["use_spellId"] = true,
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
			["internalVersion"] = 58,
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
			["version"] = 1,
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
				{
					["text_text_format_p_time_precision"] = 1,
					["text_shadowXOffset"] = 0,
					["text_text"] = "%p",
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_text_format_p_gcd_cast"] = false,
					["text_text_format_p_time_mod_rate"] = true,
					["text_text_format_p_format"] = "Number",
					["text_selfPoint"] = "BOTTOM",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_text_format_p_time_legacy_floor"] = false,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_time_format"] = 0,
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
					["anchorYOffset"] = 0,
					["text_fontSize"] = 15,
					["anchorXOffset"] = 0,
					["text_text_format_p_round_type"] = "floor",
				}, -- [2]
			},
			["height"] = 40,
			["load"] = {
				["itemequiped"] = 42990,
				["use_never"] = false,
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
				["use_itemequiped"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["source"] = "import",
			["config"] = {
			},
			["url"] = "",
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["xOffset"] = -184.31969336191,
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
			["authorOptions"] = {
			},
			["useCooldownModRate"] = true,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["semver"] = "1.0.0",
			["tocversion"] = 30400,
			["id"] = "Death",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["width"] = 40,
			["cooldownTextDisabled"] = true,
			["uid"] = "x64ujypkcCH",
			["inverse"] = true,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["displayIcon"] = "237165",
			["information"] = {
				["forceEvents"] = true,
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
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
			["internalVersion"] = 58,
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
			["version"] = 1,
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
			["scale"] = 1.1,
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "group",
			["borderSize"] = 2,
			["borderOffset"] = 4,
			["semver"] = "1.0.0",
			["tocversion"] = 30400,
			["id"] = "Trinket ICD Tracker",
			["config"] = {
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["groupIcon"] = "136035",
			["borderInset"] = 1,
			["uid"] = "2D1zjeQc1Q6",
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
			["internalVersion"] = 58,
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
			["width"] = 43,
			["desc"] = "Shield CD on Party2 indicator...",
			["rotation"] = 0,
			["font"] = "Friz Quadrata TT",
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 43,
			["backgroundOffset"] = 2,
			["load"] = {
				["use_class"] = true,
				["talent"] = {
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
				["size"] = {
					["multi"] = {
					},
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
			["useAdjustededMax"] = false,
			["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
			["conditions"] = {
			},
			["startAngle"] = 0,
			["xOffset"] = -39,
			["backgroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura3",
			["mirror"] = false,
			["anchorFrameFrame"] = "PartyMemberFrame2",
			["regionType"] = "progresstexture",
			["desaturateForeground"] = false,
			["blendMode"] = "BLEND",
			["uid"] = "zDMEhE)lXyO",
			["foregroundTexture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\UI-PartyFlash-Highlight_Shield",
			["slantMode"] = "INSIDE",
			["frameStrata"] = 1,
			["fontSize"] = 12,
			["anchorPoint"] = "CENTER",
			["selfPoint"] = "CENTER",
			["compress"] = false,
			["id"] = "PW: Shield (P2)",
			["crop_y"] = 0.41,
			["alpha"] = 1,
			["anchorFrameType"] = "SELECTFRAME",
			["smoothProgress"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["useAdjustededMin"] = false,
			["orientation"] = "ANTICLOCKWISE",
			["crop_x"] = 0.41,
			["information"] = {
				["forceEvents"] = true,
			},
			["slanted"] = false,
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
				["init"] = {
				},
				["finish"] = {
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
			["internalVersion"] = 58,
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
			["anchorFrameType"] = "SELECTFRAME",
			["desc"] = "Shield CD on Party1 indicator...",
			["rotation"] = 0,
			["font"] = "Friz Quadrata TT",
			["subRegions"] = {
				{
					["type"] = "subbackground",
				}, -- [1]
			},
			["height"] = 43,
			["slanted"] = false,
			["load"] = {
				["use_class"] = true,
				["talent"] = {
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
				["size"] = {
					["multi"] = {
					},
				},
			},
			["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
			["useAdjustededMax"] = false,
			["backgroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura3",
			["crop_x"] = 0.41,
			["startAngle"] = 0,
			["backgroundColor"] = {
				0.5, -- [1]
				0.5, -- [2]
				0.5, -- [3]
				0.5, -- [4]
			},
			["xOffset"] = -39,
			["mirror"] = false,
			["useAdjustededMin"] = false,
			["regionType"] = "progresstexture",
			["desaturateForeground"] = false,
			["blendMode"] = "BLEND",
			["config"] = {
			},
			["smoothProgress"] = false,
			["slantMode"] = "INSIDE",
			["alpha"] = 1,
			["crop_y"] = 0.41,
			["anchorPoint"] = "CENTER",
			["selfPoint"] = "CENTER",
			["compress"] = false,
			["id"] = "PW: Shield (P1)",
			["fontSize"] = 12,
			["frameStrata"] = 1,
			["width"] = 43,
			["foregroundTexture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\UI-PartyFlash-Highlight_Shield",
			["uid"] = "nD2epxy)96V",
			["inverse"] = false,
			["anchorFrameFrame"] = "PartyMemberFrame1",
			["orientation"] = "ANTICLOCKWISE",
			["conditions"] = {
			},
			["information"] = {
				["forceEvents"] = true,
			},
			["backgroundOffset"] = 2,
		},
		["Shadowfiend Duration"] = {
			["sparkWidth"] = 10,
			["iconSource"] = 0,
			["wagoID"] = "sz3jz7-QJ",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = -2,
			["anchorPoint"] = "CENTER",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["cooldownSwipe"] = false,
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["url"] = "",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
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
						["use_genericShowOn"] = true,
						["use_track"] = true,
						["event"] = "Combat Log",
						["use_spellName"] = false,
						["realSpellName"] = 0,
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["use_sourceUnit"] = true,
						["spellName"] = 0,
						["names"] = {
						},
						["sourceUnit"] = "player",
						["unit"] = "player",
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
			["internalVersion"] = 58,
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
			["sparkOffsetX"] = 0,
			["xOffset"] = 68,
			["barColor"] = {
				1, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["uid"] = "9ni(PItb)Ay",
			["cooldownEdge"] = false,
			["sparkOffsetY"] = 0,
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
					["anchorXOffset"] = 0,
					["text_color"] = {
						1, -- [1]
						0.9333333333333333, -- [2]
						0.9372549019607843, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowXOffset"] = 0,
					["text_shadowYOffset"] = 0,
					["text_text_format_p_time_format"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "INNER_LEFT",
					["text_text"] = "%p",
					["text_fontType"] = "OUTLINE",
					["text_fontSize"] = 20,
					["text_text_format_p_time_dynamic_threshold"] = 60,
					["text_text_format_p_round_type"] = "floor",
				}, -- [2]
			},
			["height"] = 30,
			["icon"] = false,
			["load"] = {
				["use_class"] = true,
				["use_spellknown"] = false,
				["talent"] = {
					["single"] = 62,
					["multi"] = {
						[62] = true,
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
				["spellknown"] = 31687,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["selfPoint"] = "CENTER",
			["source"] = "import",
			["cooldown"] = false,
			["displayIcon"] = "136199",
			["semver"] = "1.0.1",
			["version"] = 2,
			["anchorFrameFrame"] = "PetFrame",
			["regionType"] = "icon",
			["config"] = {
			},
			["useCooldownModRate"] = true,
			["icon_side"] = "RIGHT",
			["width"] = 30,
			["frameStrata"] = 1,
			["sparkHeight"] = 30,
			["texture"] = "Blizzard",
			["id"] = "Shadowfiend Duration",
			["zoom"] = 0.2,
			["spark"] = false,
			["tocversion"] = 30400,
			["sparkHidden"] = "NEVER",
			["useAdjustededMin"] = false,
			["alpha"] = 1,
			["anchorFrameType"] = "SELECTFRAME",
			["authorOptions"] = {
			},
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["inverse"] = false,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["custom"] = "if not aura_env.region.mask then\n  aura_env.region.mask = aura_env.region:CreateMaskTexture()\nend\naura_env.region.mask:SetTexture([[Interface\\AddOns\\WeakAuras\\Media\\Textures\\Circle_White]])\naura_env.region.mask:SetAllPoints()\naura_env.region.icon:AddMaskTexture(aura_env.region.mask)\naura_env.region.cooldown:SetSwipeTexture([[Interface\\AddOns\\WeakAuras\\Media\\Textures\\Circle_White]], 0,0,0,0.2)\naura_env.region.cooldown:SetUseCircularEdge(true)\n",
					["do_custom"] = false,
				},
				["finish"] = {
				},
			},
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
			},
			["information"] = {
				["forceEvents"] = true,
			},
			["cooldownTextDisabled"] = false,
		},
	},
	["dbVersion"] = 58,
	["login_squelch_time"] = 10,
	["RealTimeProfilingWindow"] = {
		["xOffset"] = 203.3777770996094,
		["yOffset"] = -182.7555541992188,
	},
	["minimap"] = {
		["minimapPos"] = 228.8875173730628,
		["hide"] = true,
	},
	["lastUpgrade"] = 1666787981,
	["ProfilingWindow"] = {
		["xOffset"] = 654.64453125,
		["yOffset"] = -234,
	},
	["editor_font_size"] = 12,
	["registered"] = {
	},
	["lastArchiveClear"] = 1659733987,
	["frame"] = {
		["xOffset"] = -331.5999755859375,
		["width"] = 750,
		["height"] = 657.888671875,
		["yOffset"] = -77.3333740234375,
	},
	["editor_theme"] = "Monokai",
}
