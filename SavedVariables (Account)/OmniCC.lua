
OmniCCDB = {
	["profileKeys"] = {
		["Evolvexd - Classic Arena - EU"] = "Default",
		["Evolve - Badge of Justice"] = "Default",
		["Evolve - Classic Arena - EU"] = "Default",
		["Evolve - Launch Test"] = "Default",
		["Evolvelulw - Earthshaker"] = "Default",
		["Magetest - Classic Arena - EU"] = "Default",
		["Qwdqwdw - Badge of Justice"] = "Default",
		["Evolvepwp - Earthshaker"] = "Default",
		["Wotlkprep - Sulfuron"] = "Default",
		["Evolve - Classic Beta PvP"] = "Default",
		["Evolve - Classic PTR Realm 1"] = "Default",
		["Evolvepwe - Classic Arena - EU"] = "Default",
		["Evolvepwp - Firemaw"] = "Default",
		["Evolvebank - Gehennas"] = "Default",
		["Dbldogcheck - Firemaw"] = "Default",
		["Evolvebanned - Gehennas"] = "Default",
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
					["enabled"] = false,
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
							["r"] = 0.9803921568627451,
							["g"] = 0.984313725490196,
							["b"] = 1,
						},
						["minutes"] = {
						},
						["soon"] = {
							["b"] = 0,
							["scale"] = 1,
							["g"] = 0.8784313725490196,
						},
					},
					["timerOffset"] = 1400,
					["fontOutline"] = "THICKOUTLINE",
					["minSize"] = 0.99,
					["effect"] = "none",
					["fontSize"] = 15,
					["minDuration"] = 3,
				},
				["Plater Nameplates Theme"] = {
					["textStyles"] = {
						["seconds"] = {
						},
						["minutes"] = {
						},
						["soon"] = {
						},
					},
				},
			},
		},
	},
}
OmniCC4Config = nil
