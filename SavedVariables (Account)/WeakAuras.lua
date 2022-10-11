
WeakAurasSaved = {
	["dynamicIconCache"] = {
	},
	["editor_tab_spaces"] = 4,
	["displays"] = {
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
			["internalVersion"] = 53,
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
					["anchorYOffset"] = 0,
					["text_text_format_p_time_legacy_floor"] = false,
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
			["xOffset"] = -230.0983405139272,
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
			["regionType"] = "icon",
			["authorOptions"] = {
			},
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
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["cooldownTextDisabled"] = true,
			["semver"] = "1.0.0",
			["tocversion"] = 30400,
			["id"] = "Pendulum",
			["alpha"] = 1,
			["useCooldownModRate"] = true,
			["width"] = 40,
			["zoom"] = 0,
			["uid"] = "ShvQmDgWBpB",
			["inverse"] = true,
			["icon"] = true,
			["displayIcon"] = "133870",
			["information"] = {
			},
			["parent"] = "Trinket ICD Tracker",
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
			["alpha"] = 1,
			["id"] = "WOTF",
			["width"] = 50,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["useCooldownModRate"] = true,
			["uid"] = "IPzpPhZljg3",
			["inverse"] = true,
			["desc"] = "Displays Will of the Forsaken cooldown icon.",
			["conditions"] = {
			},
			["information"] = {
			},
			["authorOptions"] = {
			},
		},
		["Shadowfiend Duration"] = {
			["sparkWidth"] = 10,
			["iconSource"] = 0,
			["wagoID"] = "sz3jz7-QJ",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = -2,
			["anchorPoint"] = "CENTER",
			["zoom"] = 0.2,
			["cooldownSwipe"] = false,
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["url"] = "",
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
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["use_sourceUnit"] = true,
						["spellName"] = 0,
						["use_spellName"] = false,
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
			["sparkOffsetX"] = 0,
			["xOffset"] = 68,
			["barColor"] = {
				1, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
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
					["text_visible"] = true,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
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
			["selfPoint"] = "CENTER",
			["source"] = "import",
			["information"] = {
			},
			["conditions"] = {
			},
			["spark"] = false,
			["version"] = 2,
			["useAdjustededMin"] = false,
			["regionType"] = "icon",
			["uid"] = "9ni(PItb)Ay",
			["frameStrata"] = 1,
			["icon_side"] = "RIGHT",
			["anchorFrameType"] = "SELECTFRAME",
			["useCooldownModRate"] = true,
			["sparkHeight"] = 30,
			["texture"] = "Blizzard",
			["anchorFrameFrame"] = "PetFrame",
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.1",
			["tocversion"] = 30400,
			["sparkHidden"] = "NEVER",
			["id"] = "Shadowfiend Duration",
			["alpha"] = 1,
			["width"] = 30,
			["icon"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["orientation"] = "HORIZONTAL",
			["displayIcon"] = "136199",
			["cooldown"] = false,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
		},
		["Overpower Tracker"] = {
			["iconSource"] = 0,
			["wagoID"] = "Xb146knOg",
			["xOffset"] = -35,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "LEFT",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
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
						["custom"] = "function(states, event, unit, ...)\n    if event == \"NAME_PLATE_UNIT_ADDED\" then\n        if unit then\n            local guid = UnitGUID(unit)\n            states[guid] = {\n                changed = true,\n                show = false,\n            }\n        end\n    end\n    \n    if event == \"NAME_PLATE_UNIT_REMOVED\" then\n        if unit then\n            local guid = UnitGUID(unit)\n            if states[guid] then\n                states[guid].changed = true\n            end\n        end\n    end\n    \n    if event == \"COMBAT_LOG_EVENT_UNFILTERED\" then\n        local subEvent, _, sourceGUID, _, sourceFlags, _, _, _, destFlags = ...\n        local missType = \"\"\n        \n        local isDestPlayer = CombatLog_Object_IsA(destFlags, COMBATLOG_FILTER_ME)\n        local isDestFriend = CombatLog_Object_IsA(destFlags, COMBATLOG_FILTER_FRIENDLY_UNITS)\n        local isSourceEnemy = CombatLog_Object_IsA(sourceFlags, COMBATLOG_FILTER_HOSTILE_PLAYERS)\n        \n        if not (isDestPlayer or isDestFriend) and isSourceEnemy then return end\n        \n        if subEvent == \"SWING_MISSED\" then\n            missType = select(11,...)\n        elseif subEvent == \"SPELL_MISSED\" then\n            _,_,_,missType = select(11, ...)\n        end\n        \n        if (missType == \"DODGE\" or missType == \"PARRY\") and (isDestPlayer or isDestFriend) then\n            for i = 1,40 do\n                local u = \"nameplate\"..i\n                if UnitExists(u) and UnitGUID(u) == sourceGUID and select(3,UnitClass(u)) == 1 and UnitIsPlayer(u) then\n                    states[sourceGUID] = {\n                        changed = true,\n                        show = true,\n                        unit = u,\n                        autoHide = true,\n                        progressType = \"timed\",\n                        duration = 5,\n                    }\n                    break\n                    \n                end\n            end\n        end\n    end\n    \n    return true\n    \nend",
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
			["internalVersion"] = 53,
			["keepAspectRatio"] = true,
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
					["text_text_format_p_time_mod_rate"] = true,
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["text_text_format_p_time_legacy_floor"] = true,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["text_text_format_p_format"] = "timed",
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
					["text_fontType"] = "OUTLINE",
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
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
					["anchorYOffset"] = 0,
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
			["selfPoint"] = "LEFT",
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desc"] = "",
			["cooldown"] = true,
			["displayIcon"] = 135275,
			["anchorFrameParent"] = true,
			["cooldownTextDisabled"] = true,
			["config"] = {
			},
			["zoom"] = 0.15,
			["useCooldownModRate"] = true,
			["tocversion"] = 30400,
			["id"] = "Overpower Tracker",
			["width"] = 25,
			["alpha"] = 1,
			["anchorFrameType"] = "NAMEPLATE",
			["frameStrata"] = 1,
			["uid"] = "7tOG5nkfv9r",
			["inverse"] = false,
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
						["duration"] = "1",
						["use_genericShowOn"] = true,
						["event"] = "Action Usable",
						["use_exact_spellName"] = true,
						["realSpellName"] = 7744,
						["use_spellName"] = true,
						["genericShowOn"] = "showOnReady",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["use_track"] = true,
						["spellName"] = 7744,
					},
					["untrigger"] = {
						["genericShowOn"] = "showOnReady",
					},
				}, -- [2]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
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
			["useCooldownModRate"] = true,
			["color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0, -- [4]
			},
			["selfPoint"] = "CENTER",
			["information"] = {
				["ignoreOptionsEventErrors"] = false,
			},
			["regionType"] = "icon",
			["conditions"] = {
			},
			["cooldownEdge"] = false,
			["parent"] = "WOTF BORDER",
			["uid"] = "cpsOq)tZstX",
			["alpha"] = 1,
			["semver"] = "1.0.1",
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["tocversion"] = 11304,
			["id"] = "Fears",
			["zoom"] = 0,
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["useTooltip"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["displayIcon"] = 136187,
			["cooldown"] = false,
			["authorOptions"] = {
			},
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
			["internalVersion"] = 53,
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
			["selfPoint"] = "CENTER",
			["borderInset"] = 1,
			["config"] = {
			},
			["uid"] = "8B2oZr(3rax",
			["conditions"] = {
			},
			["information"] = {
				["ignoreOptionsEventErrors"] = true,
				["groupOffset"] = false,
			},
			["xOffset"] = -555.2299999999996,
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
						["duration"] = "1",
						["use_genericShowOn"] = true,
						["event"] = "Action Usable",
						["use_exact_spellName"] = true,
						["realSpellName"] = 7744,
						["use_spellName"] = true,
						["genericShowOn"] = "showOnReady",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["use_track"] = true,
						["spellName"] = 7744,
					},
					["untrigger"] = {
						["genericShowOn"] = "showOnReady",
					},
				}, -- [2]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
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
			["useCooldownModRate"] = true,
			["color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0, -- [4]
			},
			["selfPoint"] = "CENTER",
			["information"] = {
				["ignoreOptionsEventErrors"] = false,
			},
			["regionType"] = "icon",
			["conditions"] = {
			},
			["cooldownEdge"] = false,
			["parent"] = "WOTF BORDER",
			["uid"] = "AcqL()JqkDr",
			["alpha"] = 1,
			["semver"] = "1.0.1",
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["tocversion"] = 11304,
			["id"] = "Charms",
			["zoom"] = 0,
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["useTooltip"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["displayIcon"] = 136187,
			["cooldown"] = false,
			["authorOptions"] = {
			},
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
						["duration"] = "1",
						["use_genericShowOn"] = true,
						["event"] = "Action Usable",
						["use_exact_spellName"] = true,
						["realSpellName"] = 7744,
						["use_spellName"] = true,
						["genericShowOn"] = "showOnReady",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["use_track"] = true,
						["spellName"] = 7744,
					},
					["untrigger"] = {
						["genericShowOn"] = "showOnReady",
					},
				}, -- [2]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 53,
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
			["useCooldownModRate"] = true,
			["color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0, -- [4]
			},
			["selfPoint"] = "CENTER",
			["information"] = {
				["ignoreOptionsEventErrors"] = false,
			},
			["regionType"] = "icon",
			["conditions"] = {
			},
			["cooldownEdge"] = false,
			["parent"] = "WOTF BORDER",
			["uid"] = "VEJL8e54fE0",
			["alpha"] = 1,
			["semver"] = "1.0.1",
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["tocversion"] = 11304,
			["id"] = "Sleeps",
			["zoom"] = 0,
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["useTooltip"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["displayIcon"] = 136187,
			["cooldown"] = false,
			["authorOptions"] = {
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
			["authorOptions"] = {
			},
			["selfPoint"] = "CENTER",
			["xOffset"] = -11,
			["discrete_rotation"] = 0,
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
			["desc"] = "AURA MASTERY target highlight texture...",
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
			["desc"] = "AURA MASTERY focus highlight texture...",
			["authorOptions"] = {
			},
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
			["discrete_rotation"] = 0,
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
			["anchorFrameType"] = "SELECTFRAME",
			["desc"] = "Shield CD on Party2 indicator...",
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
				["init"] = {
				},
				["finish"] = {
				},
			},
			["useAdjustededMax"] = false,
			["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
			["crop_x"] = 0.41,
			["startAngle"] = 0,
			["xOffset"] = -39,
			["anchorFrameFrame"] = "PartyMemberFrame2",
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
			["id"] = "PW: Shield (P2)",
			["fontSize"] = 12,
			["frameStrata"] = 1,
			["width"] = 43,
			["foregroundTexture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\UI-PartyFlash-Highlight_Shield",
			["uid"] = "zDMEhE)lXyO",
			["inverse"] = false,
			["backgroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura3",
			["orientation"] = "ANTICLOCKWISE",
			["conditions"] = {
			},
			["information"] = {
			},
			["backgroundOffset"] = 2,
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
						["use_spellName"] = false,
						["use_spellId"] = true,
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
					["text_text_format_p_time_legacy_floor"] = false,
					["anchorYOffset"] = 0,
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
			["uid"] = "x64ujypkcCH",
			["selfPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["information"] = {
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
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["config"] = {
			},
			["inverse"] = true,
			["url"] = "",
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
		["Trinket ICD Tracker"] = {
			["controlledChildren"] = {
				"Pendulum", -- [1]
				"Death", -- [2]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["wagoID"] = "lkrS6uIit",
			["xOffset"] = 744.2019214586362,
			["preferToUpdate"] = false,
			["yOffset"] = -153.8998241012785,
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
			["config"] = {
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["groupIcon"] = "136035",
			["borderInset"] = 1,
			["uid"] = "2D1zjeQc1Q6",
			["selfPoint"] = "CENTER",
			["conditions"] = {
			},
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
			["width"] = 43,
			["desc"] = "Shield CD on Party1 indicator...",
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
			["backgroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura3",
			["useAdjustededMax"] = false,
			["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
			["conditions"] = {
			},
			["startAngle"] = 0,
			["backgroundColor"] = {
				0.5, -- [1]
				0.5, -- [2]
				0.5, -- [3]
				0.5, -- [4]
			},
			["useAdjustededMin"] = false,
			["mirror"] = false,
			["anchorFrameFrame"] = "PartyMemberFrame1",
			["regionType"] = "progresstexture",
			["desaturateForeground"] = false,
			["blendMode"] = "BLEND",
			["uid"] = "nD2epxy)96V",
			["foregroundTexture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\UI-PartyFlash-Highlight_Shield",
			["slantMode"] = "INSIDE",
			["frameStrata"] = 1,
			["fontSize"] = 12,
			["anchorPoint"] = "CENTER",
			["selfPoint"] = "CENTER",
			["compress"] = false,
			["id"] = "PW: Shield (P1)",
			["crop_y"] = 0.41,
			["alpha"] = 1,
			["anchorFrameType"] = "SELECTFRAME",
			["smoothProgress"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["xOffset"] = -39,
			["orientation"] = "ANTICLOCKWISE",
			["crop_x"] = 0.41,
			["information"] = {
			},
			["slanted"] = false,
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
	["ProfilingWindow"] = {
		["xOffset"] = 654.64453125,
		["yOffset"] = -234,
	},
	["editor_font_size"] = 12,
	["lastArchiveClear"] = 1659733987,
	["minimap"] = {
		["minimapPos"] = 228.8875173730628,
		["hide"] = true,
	},
	["lastUpgrade"] = 1659733990,
	["dbVersion"] = 53,
	["login_squelch_time"] = 10,
	["registered"] = {
	},
	["RealTimeProfilingWindow"] = {
		["xOffset"] = 203.3777770996094,
		["yOffset"] = -182.7555541992188,
	},
	["frame"] = {
		["xOffset"] = -509.3785400390625,
		["yOffset"] = -28.977783203125,
		["height"] = 657.888671875,
		["width"] = 750,
	},
	["editor_theme"] = "Monokai",
}
