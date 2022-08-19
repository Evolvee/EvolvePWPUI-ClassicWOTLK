
OmniCCDB = {
	["global"] = {
		["dbVersion"] = 6,
		["addonVersion"] = "9.2.0",
	},
	["profileKeys"] = {
		["Evolvexd - Classic Arena - EU"] = "Default",
		["Evolve - Badge of Justice"] = "Default",
		["Evolve - Classic Arena - EU"] = "Default",
		["Evolvebanned - Gehennas"] = "Default",
		["Magetest - Classic Arena - EU"] = "Default",
		["Qwdqwdw - Badge of Justice"] = "Default",
		["Evolvepwp - Earthshaker"] = "Default",
		["Evolvepwe - Classic Arena - EU"] = "Default",
		["Evolve - Classic Beta PvP"] = "Default",
		["Evolve - Classic PTR Realm 1"] = "Default",
		["Dbldogcheck - Firemaw"] = "Default",
		["Evolvepwp - Firemaw"] = "Default",
		["Evolvebank - Gehennas"] = "Default",
		["Evolvelulw - Earthshaker"] = "Default",
		["Evolve - Launch Test"] = "Default",
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
				}, -- [1]
				{
					["enabled"] = false,
					["patterns"] = {
						"Plate", -- [1]
					},
					["name"] = "Unit Nameplates",
					["id"] = "plates",
				}, -- [2]
				{
					["patterns"] = {
						"PlaterMainAuraIcon", -- [1]
						"PlaterSecondaryAuraIcon", -- [2]
						"ExtraIconRowIcon", -- [3]
					},
					["id"] = "Plater Nameplates Rule",
					["priority"] = 3,
					["theme"] = "Plater Nameplates Theme",
				}, -- [3]
			},
			["themes"] = {
				["Default"] = {
					["textStyles"] = {
						["seconds"] = {
							["b"] = 1,
							["g"] = 0.984313725490196,
							["r"] = 0.9803921568627451,
						},
						["soon"] = {
							["b"] = 0,
							["scale"] = 1,
							["g"] = 0.8784313725490196,
						},
						["minutes"] = {
						},
					},
					["timerOffset"] = 1400,
					["minDuration"] = 3,
					["tenthsDuration"] = 1,
					["fontOutline"] = "THICKOUTLINE",
					["minSize"] = 1.1,
					["effect"] = "none",
					["fontSize"] = 15,
				},
				["Plater Nameplates Theme"] = {
					["textStyles"] = {
						["seconds"] = {
						},
						["soon"] = {
						},
						["minutes"] = {
						},
					},
				},
			},
		},
	},
}
OmniCC4Config = nil
