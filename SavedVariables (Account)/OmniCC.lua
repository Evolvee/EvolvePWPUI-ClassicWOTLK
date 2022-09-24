
OmniCCDB = {
	["profileKeys"] = {
		["Evolvexd - Classic Arena - EU"] = "Default",
		["Evolvebanned - Gehennas"] = "Default",
		["Magetest - Classic Arena - EU"] = "Default",
		["Evolvepwp - Earthshaker"] = "Default",
		["Evolvepwe - Classic Arena - EU"] = "Default",
		["Evolve - Classic Beta PvP"] = "Default",
		["Evolvepwp - Firemaw"] = "Default",
		["Evolvebank - Gehennas"] = "Default",
		["Evolvelulw - Earthshaker"] = "Default",
		["Evolve - Launch Test"] = "Default",
		["Evolve - Badge of Justice"] = "Default",
		["Evolve - Classic Arena - EU"] = "Default",
		["Qwdqwdw - Badge of Justice"] = "Default",
		["Wotlkprep - Sulfuron"] = "Default",
		["Evolve - Classic PTR Realm 1"] = "Default",
		["Dbldogcheck - Firemaw"] = "Default",
		["Evolvebanned - Firemaw"] = "Default",
	},
	["global"] = {
		["dbVersion"] = 6,
		["addonVersion"] = "9.2.1",
	},
	["profiles"] = {
		["Default"] = {
			["rules"] = {
				{
					["enabled"] = false,
					["patterns"] = {
						"Aura", -- [1]
						"Buff", -- [2]
						"Debuff", -- [3]
					},
					["name"] = "Auras",
					["id"] = "auras",
					["priority"] = 1,
				}, -- [1]
				{
					["enabled"] = false,
					["patterns"] = {
						"Plate", -- [1]
					},
					["name"] = "Unit Nameplates",
					["id"] = "plates",
					["priority"] = 2,
				}, -- [2]
				{
					["patterns"] = {
						"MultiBarBottomLeft", -- [1]
						"MultiBarBottomRight", -- [2]
						"MultiBarLeft", -- [3]
						"MultiBarRight", -- [4]
						"ActionButton1", -- [5]
						"ActionButton2", -- [6]
						"ActionButton3", -- [7]
						"ActionButton4", -- [8]
						"ActionButton5", -- [9]
						"ActionButton6", -- [10]
						"ActionButton7", -- [11]
						"ActionButton8", -- [12]
						"ActionButton9", -- [13]
						"ActionButton10", -- [14]
						"ActionButton11", -- [15]
						"ActionButton12", -- [16]
					},
					["id"] = "Action Bars",
					["priority"] = 3,
					["theme"] = "HIDDEN",
				}, -- [3]
			},
			["themes"] = {
				["Default"] = {
					["textStyles"] = {
						["minutes"] = {
						},
						["soon"] = {
							["b"] = 0,
							["scale"] = 1,
							["g"] = 0.8784313725490196,
						},
						["seconds"] = {
							["b"] = 1,
							["g"] = 0.984313725490196,
							["r"] = 0.9803921568627451,
						},
					},
					["timerOffset"] = 1400,
					["minDuration"] = 3,
					["tenthsDuration"] = 1,
					["fontOutline"] = "THICKOUTLINE",
					["minSize"] = 0.99,
					["effect"] = "none",
					["fontSize"] = 15,
				},
				["HIDDEN"] = {
					["textStyles"] = {
						["soon"] = {
							["b"] = 0,
							["scale"] = 1,
							["g"] = 0.8784313725490196,
						},
						["minutes"] = {
						},
						["seconds"] = {
							["b"] = 1,
							["g"] = 0.984313725490196,
							["r"] = 0.9803921568627451,
						},
					},
					["timerOffset"] = 1400,
					["minDuration"] = 3,
					["tenthsDuration"] = 1,
					["fontOutline"] = "THICKOUTLINE",
					["minSize"] = 0.99,
					["enableText"] = false,
					["effect"] = "none",
					["name"] = "HIDDEN",
					["fontSize"] = 15,
				},
			},
		},
	},
}
OmniCC4Config = nil
