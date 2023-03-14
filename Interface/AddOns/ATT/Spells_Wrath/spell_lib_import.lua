local addon, ATTdbs = ...

ATTdbs.dbImport = {
	["DRUID"] = {
		{ ["ability"] = 29166, ["cooldown"] = 180, }, -- Innervate --
		{ ["ability"] = 22812, ["cooldown"] = 60, }, -- Barkskin -
		{ ["ability"] = 8983, ["cooldown"] = 60, }, -- Bash --
		{ ["ability"] = 17116, ["cooldown"] = 180, }, -- Nature's Swiftness - talent
		{ ["ability"] = 27009, ["cooldown"] = 60, }, -- Natures Grasp --talent rank
		{ ["ability"] = 33831, ["cooldown"] = 180, }, -- Force of Nature	-talent
		{ ["ability"] = 5229, ["cooldown"] = 60, }, -- Enrage
		--{	["ability"] = 27012, ["cooldown"] = 60,}, -- Hurricane
		{ ["ability"] = 26983, ["cooldown"] = 480, }, -- Tranquility
		{ ["ability"] = 33357, ["cooldown"] = 180, }, -- Dash
		{ ["ability"] = 5209, ["cooldown"] = 180, }, -- Challenging Roar *
		{ ["ability"] = 27048, ["cooldown"] = 20, }, -- Cower *
		{ ["ability"] = 27047, ["cooldown"] = 5, }, -- Growl *
		{ ["ability"] = 9913, ["cooldown"] = 10, }, -- Prowl *
		{ ["ability"] = 26994, ["cooldown"] = 600, }, -- Rebirth * !
		--{	["ability"] = 16864, ["cooldown"] = 10,},  -- Omen of Clarity *
		{ ["ability"] = 16979, ["cooldown"] = 15, }, -- Feral Charge *
		{ ["ability"] = 18562, ["cooldown"] = 15, }, -- Swiftmend * - mod -set bonus
		{ ["ability"] = 53201, ["cooldown"] = 90, }, -- Starfall : New * -mod  -glyph
		{ ["ability"] = 61336, ["cooldown"] = 180, }, -- Survival Instincts : New *
		{ ["ability"] = 50334, ["cooldown"] = 180, }, -- Bersek : New *

	},
	["HUNTER"] = {
		{ ["ability"] = 19503, ["cooldown"] = 30, }, -- Scatter Shot --talent
		{ ["ability"] = 19263, ["cooldown"] = 90, }, -- Deterrence --talent
		{ ["ability"] = 14311, ["cooldown"] = 30, }, -- Freezing Trap -mod
		{ ["ability"] = 13809, ["cooldown"] = 30, }, -- Frost Trap -mod
		{ ["ability"] = 34600, ["cooldown"] = 30, }, -- Snake Trap -mod
		{ ["ability"] = 49067, ["cooldown"] = 30, }, -- Explosive Trap -mod
		{ ["ability"] = 49056, ["cooldown"] = 30, }, -- Immolation Trap
		{ ["ability"] = 34490, ["cooldown"] = 20, }, -- Silencing Shot -- talent
		{ ["ability"] = 27068, ["cooldown"] = 60, }, -- Wyvern Sting -- talent rank
		{ ["ability"] = 19577, ["cooldown"] = 60, }, -- Intimidation -- talent
		{ ["ability"] = 3045, ["cooldown"] = 300, }, -- Rapid Fire --mod
		{ ["ability"] = 5384, ["cooldown"] = 30, }, -- Feign Death
		{ ["ability"] = 19574, ["cooldown"] = 120, }, -- Bestial Wrath
		{ ["ability"] = 23989, ["cooldown"] = 180, }, -- Readiness
		{ ["ability"] = 34477, ["cooldown"] = 30, }, -- Misdirection
		{ ["ability"] = 1543, ["cooldown"] = 20, }, -- Flare
		{ ["ability"] = 14327, ["cooldown"] = 30, }, -- Scare Beast
		{ ["ability"] = 27019, ["cooldown"] = 6, }, -- Arcane Shot *
		{ ["ability"] = 36916, ["cooldown"] = 5, }, -- Mongoose Bite *
		{ ["ability"] = 27021, ["cooldown"] = 10, }, -- Multi-Shot *
		{ ["ability"] = 27014, ["cooldown"] = 6, }, -- Raptor Strike *
		{ ["ability"] = 19801, ["cooldown"] = 8, }, -- Tranquilizing Shot *
		--{	["ability"] = 27022, ["cooldown"] = 60,},  -- Volley *
		{ ["ability"] = 27065, ["cooldown"] = 10, }, -- Aimed Shot *
		{ ["ability"] = 27067, ["cooldown"] = 5, }, -- Counterattack *
		{ ["ability"] = 49012, ["cooldown"] = 60, }, -- Wyvern Sting: New * -mod glyph
		{ ["ability"] = 60192, ["cooldown"] = 30, }, -- Freezing Arrow: New * -mod
		{ ["ability"] = 67481, ["cooldown"] = 60, }, -- Roar of Sacrifice: New *
		{ ["ability"] = 53271, ["cooldown"] = 60, }, -- Master's Call: New *
		{ ["ability"] = 63672, ["cooldown"] = 30, }, -- Black Arrow New *

	},
	["MAGE"] = {
		{ ["ability"] = 1953, ["cooldown"] = 15, }, -- Blink
		{ ["ability"] = 2139, ["cooldown"] = 24, }, -- Counterspell
		{ ["ability"] = 45438, ["cooldown"] = 300, }, -- Ice Block -mod
		{ ["ability"] = 12472, ["cooldown"] = 180, }, -- Icy Veins -- talent
		{ ["ability"] = 31687, ["cooldown"] = 180, }, -- Summon Water Elemental -- talent -mod
		{ ["ability"] = 12043, ["cooldown"] = 120, }, -- Presence of Mind -- talent -mod
		{ ["ability"] = 11129, ["cooldown"] = 120, }, -- Combustion -- talent
		{ ["ability"] = 27087, ["cooldown"] = 10, }, -- Cone of Cold
		{ ["ability"] = 33043, ["cooldown"] = 20, }, -- Dragon's Breath -- talent rank
		{ ["ability"] = 12042, ["cooldown"] = 120, }, -- Arcane Power -- talent
		{ ["ability"] = 11958, ["cooldown"] = 480, }, -- Cold Snap	 -- talent -mod
		{ ["ability"] = 42917, ["cooldown"] = 25, }, -- Frost Nova -mod
		{ ["ability"] = 33405, ["cooldown"] = 30, }, -- Ice Barrier
		{ ["ability"] = 42945, ["cooldown"] = 30, }, -- Blast Wave
		{ ["ability"] = 66, ["cooldown"] = 180, }, -- Invisibility -mod
		--{   ["ability"] = 28734,  ["cooldown"] = 30, ["race"] = {[1] = 10}, }, --Manatap belf
		{ ["ability"] = 32796, ["cooldown"] = 30, }, -- Frost Ward
		{ ["ability"] = 27128, ["cooldown"] = 30, }, -- Fire Ward
		{ ["ability"] = 27079, ["cooldown"] = 8, }, -- Fire Blast
		{ ["ability"] = 12051, ["cooldown"] = 240, }, -- Evocation
		--{	["ability"] = 33938, ["cooldown"] = 6,},  -- Pyroblast	 -- talent *
		{ ["ability"] = 42950, ["cooldown"] = 20, }, -- Dragon's Breath : New
		{ ["ability"] = 44572, ["cooldown"] = 30, }, -- Deep Freeze : New

	},
	["PALADIN"] = {
		{ ["ability"] = 10308, ["cooldown"] = 60, }, -- Hammer of Justice  -mod
		{ ["ability"] = 10278, ["cooldown"] = 300, }, -- Blessing of Protection -mod
		{ ["ability"] = 1044, ["cooldown"] = 25, }, -- Blessing of Freedom
		--{	["ability"] = 1020, ["cooldown"] = 300,},   -- Divine Shield : Prot only?
		{ ["ability"] = 642, ["cooldown"] = 300, }, -- Divine Shield : NEW -mod
		{ ["ability"] = 498, ["cooldown"] = 180, }, -- Divine Protection : NEW -mod
		{ ["ability"] = 31884, ["cooldown"] = 180, }, -- Avenging Wrath
		{ ["ability"] = 20066, ["cooldown"] = 60, }, -- Repentance
		{ ["ability"] = 31842, ["cooldown"] = 180, }, -- Divine Illumination --talent
		{ ["ability"] = 32700, ["cooldown"] = 30, }, -- Avengers Shield -- talent rank
		{ ["ability"] = 20216, ["cooldown"] = 120, }, -- Divine Favor
		{ ["ability"] = 27139, ["cooldown"] = 30, }, -- Holy Wrath
		--{	["ability"] = 10326, ["cooldown"] = 30,}, -- Turn Evil
		{ ["ability"] = 27154, ["cooldown"] = 1200, }, -- Lay on Hands -mod
		{ ["ability"] = 20271, ["cooldown"] = 10, }, -- Judgement * -mod
		{ ["ability"] = 27180, ["cooldown"] = 6, }, -- Hammer of Wrath *
		{ ["ability"] = 27138, ["cooldown"] = 15, }, -- Exorcism *
		{ ["ability"] = 19752, ["cooldown"] = 600, }, -- Divine Intervention *
		{ ["ability"] = 27173, ["cooldown"] = 8, }, -- Consecration *  Light's Grace!!!!!!! cdr
		{ ["ability"] = 27179, ["cooldown"] = 8, }, -- Holy Shield *
		{ ["ability"] = 48825, ["cooldown"] = 6, }, -- Holy Shock * - new id --mod Glyph
		{ ["ability"] = 31821, ["cooldown"] = 120, }, -- Aura Mastery :New *
		{ ["ability"] = 64205, ["cooldown"] = 120, }, -- Divne Sacrifice :New *
		{ ["ability"] = 48827, ["cooldown"] = 30, }, -- Avenger's Shield :New *
		{ ["ability"] = 66008, ["cooldown"] = 60, }, -- Repentance :New *
		{ ["ability"] = 54428, ["cooldown"] = 60, }, -- Divine Plea :New *
		{ ["ability"] = 6940, ["cooldown"] = 120, }, --  Hand of Sacrifice :New *

	},
	["PRIEST"] = {
		{ ["ability"] = 10890, ["cooldown"] = 30, }, -- Psychic Scream  --mod and glyph?
		{ ["ability"] = 34433, ["cooldown"] = 300, }, -- Shadowfiend --here
		{ ["ability"] = 15487, ["cooldown"] = 45, }, -- Silence  --talent
		{ ["ability"] = 10060, ["cooldown"] = 120, }, -- Power Infusion --talent
		{ ["ability"] = 33206, ["cooldown"] = 180, }, -- Pain Suppression --talent -mod
		{ ["ability"] = 33072, ["cooldown"] = 6, }, -- Holy Shock
		{ ["ability"] = 14751, ["cooldown"] = 180, }, -- Inner Focus -mod
		{ ["ability"] = 6346, ["cooldown"] = 180, }, -- Fear Ward
		--{   ["ability"] = 25467,  ["cooldown"] = 180 ,["race"] = {[1] = 5} ,}, --Devouring Plague --undead
		{ ["ability"] = 25437, ["cooldown"] = 120, }, --Desperate Prayer --human dwarf
		{ ["ability"] = 28734, ["cooldown"] = 30, ["race"] = { [1] = 10 }, }, --Manatap belf
		{ ["ability"] = 28275, ["cooldown"] = 180, }, -- Lightwell
		--{	["ability"] = 15286, ["cooldown"] = 10,}, -- Vampiric Embrace
		{ ["ability"] = 25375, ["cooldown"] = 8, }, --  Mind Blast -mod
		{ ["ability"] = 47585, ["cooldown"] = 120, }, --  Dispersion : New -mod Glyph
		{ ["ability"] = 64044, ["cooldown"] = 120, }, --  Psychic Horror : New
		{ ["ability"] = 48158, ["cooldown"] = 12, }, --  Shadow World: Death : New
		{ ["ability"] = 586, ["cooldown"] = 30, }, --  Fade : New

	},
	["ROGUE"] = {
		{ ["ability"] = 1766, ["cooldown"] = 10, }, -- Kick
		{ ["ability"] = 8643, ["cooldown"] = 20, }, -- Kidney Shot
		{ ["ability"] = 26669, ["cooldown"] = 180, }, -- Evasion
		{ ["ability"] = 31224, ["cooldown"] = 90, }, -- Cloak of Shadows -mod
		{ ["ability"] = 26889, ["cooldown"] = 180, }, -- Vanish  -mod
		{ ["ability"] = 2094, ["cooldown"] = 180, }, -- Blind -mod
		{ ["ability"] = 11305, ["cooldown"] = 180, }, -- Sprint
		{ ["ability"] = 14177, ["cooldown"] = 180, }, -- Cold Blood --talent
		{ ["ability"] = 13750, ["cooldown"] = 180, }, -- Adrenaline Rush --talent
		{ ["ability"] = 13877, ["cooldown"] = 120, }, -- Blade Flurry --talent
		{ ["ability"] = 36554, ["cooldown"] = 30, }, -- Shadowstep --talent -mod
		{ ["ability"] = 14185, ["cooldown"] = 480, }, -- Preparation --talent -mod
		{ ["ability"] = 1725, ["cooldown"] = 30, }, -- Distract
		{ ["ability"] = 27448, ["cooldown"] = 10, }, -- Feint
		{ ["ability"] = 38764, ["cooldown"] = 10, }, -- Gouge *
		{ ["ability"] = 1787, ["cooldown"] = 10, }, -- Stealth * -mod
		{ ["ability"] = 14278, ["cooldown"] = 20, }, -- Ghostly Strike *
		{ ["ability"] = 14183, ["cooldown"] = 20, }, -- Premeditation *
		{ ["ability"] = 14251, ["cooldown"] = 6, }, -- Riposte *
		{ ["ability"] = 51713, ["cooldown"] = 60, }, -- Shadow Dance: New *
		{ ["ability"] = 51690, ["cooldown"] = 120, }, -- Killing Spree: New *
		{ ["ability"] = 51722, ["cooldown"] = 60, }, -- Dismantle
		{ ["ability"] = 57934, ["cooldown"] = 30, }, -- Tricks of the Trade: New *


	},
	["SHAMAN"] = {
		{ ["ability"] = 16188, ["cooldown"] = 180, }, -- Nature's Swiftness --talent --mod set bonus
		{ ["ability"] = 8177, ["cooldown"] = 15, }, -- Grounding Totem
		{ ["ability"] = 30823, ["cooldown"] = 60, }, -- Shamanistic Rage - talent rank
		{ ["ability"] = 16166, ["cooldown"] = 180, }, -- Elemental Mastery - talent
		{ ["ability"] = 25454, ["cooldown"] = 6, }, -- Earth Shock
		{ ["ability"] = 25464, ["cooldown"] = 6, }, -- Frost Shock
		{ ["ability"] = 25457, ["cooldown"] = 6, }, -- Flame Shock
		{ ["ability"] = 16190, ["cooldown"] = 300, }, -- Mana Tide Totem --talent
		{ ["ability"] = 25525, ["cooldown"] = 30, }, -- Stoneclaw Totem
		{ ["ability"] = 2062, ["cooldown"] = 600, }, -- Earth Elemental Totem
		{ ["ability"] = 2894, ["cooldown"] = 600, }, -- Fire Elemental Totem
		{ ["ability"] = 32182, ["cooldown"] = 300, }, -- Heroism	--dranei
		{ ["ability"] = 2825, ["cooldown"] = 300, }, -- Bloodlust	--orc , tauren , troll
		{ ["ability"] = 25442, ["cooldown"] = 6, }, -- Chain Lightning*
		{ ["ability"] = 2484, ["cooldown"] = 15, }, -- Earthbind Totem
		{ ["ability"] = 25547, ["cooldown"] = 10, }, -- Fire Nova Totem*
		{ ["ability"] = 17364, ["cooldown"] = 8, }, -- Stormstrike
		{ ["ability"] = 51490, ["cooldown"] = 45, }, -- Thunderstorm :New -mod glyph
		{ ["ability"] = 57994, ["cooldown"] = 6, }, -- Wind Shear : New -mod
		{ ["ability"] = 51514, ["cooldown"] = 45, }, -- Hex: New

	},
	["WARLOCK"] = {
		{ ["ability"] = 19647, ["cooldown"] = 24, }, -- Spell Lock
		{ ["ability"] = 17928, ["cooldown"] = 40, }, -- Howl of Terror
		{ ["ability"] = 17925, ["cooldown"] = 120, }, -- Death Coil
		{ ["ability"] = 30414, ["cooldown"] = 20, }, -- Shadowfury --talent rank
		{ ["ability"] = 30546, ["cooldown"] = 15, }, -- Shadowburn -- talent rank
		{ ["ability"] = 18708, ["cooldown"] = 180, }, -- Fel Domination --talent
		--{	["ability"] = 18288, ["cooldown"] = 180,}, -- Amplify Curse
		{ ["ability"] = 29858, ["cooldown"] = 180, }, -- Soulshatter
		{ ["ability"] = 30910, ["cooldown"] = 60, }, -- Curse of Doom
		--{	["ability"] = 30545, ["cooldown"] = 60,}, -- Soul Fire
		{ ["ability"] = 28610, ["cooldown"] = 30, }, -- Shadow Ward
		{ ["ability"] = 1122, ["cooldown"] = 600, }, -- Inferno
		{ ["ability"] = 18540, ["cooldown"] = 1800, }, -- Ritual of Doom
		{ ["ability"] = 47847, ["cooldown"] = 20, }, -- Shadowfury : New
		{ ["ability"] = 48011, ["cooldown"] = 8, }, -- Devour Magic : New
		{ ["ability"] = 48020, ["cooldown"] = 30, }, -- Demonic Circle : New

	},
	["WARRIOR"] = {
		{ ["ability"] = 6552, ["cooldown"] = 10, }, -- Pummel
		{ ["ability"] = 23920, ["cooldown"] = 10, }, -- Spell Reflection
		{ ["ability"] = 3411, ["cooldown"] = 30, }, -- Intervene
		{ ["ability"] = 676, ["cooldown"] = 60, }, -- Disarm
		{ ["ability"] = 5246, ["cooldown"] = 120, }, --  Intimidating Shout
		{ ["ability"] = 12292, ["cooldown"] = 180, }, -- Death Wish --talent
		{ ["ability"] = 12975, ["cooldown"] = 180, }, -- Last Stand --talent
		{ ["ability"] = 12809, ["cooldown"] = 30, }, -- Concussion Blow --talent
		{ ["ability"] = 72, ["cooldown"] = 12, }, -- Shield Bash
		{ ["ability"] = 11578, ["cooldown"] = 15, }, -- Charge -mod -glyph 7%
		{ ["ability"] = 871, ["cooldown"] = 300, }, -- Shield Wall
		{ ["ability"] = 2565, ["cooldown"] = 60, }, -- Shield Block
		{ ["ability"] = 20230, ["cooldown"] = 300, }, -- Retaliation
		{ ["ability"] = 1719, ["cooldown"] = 300, }, -- Recklessness
		{ ["ability"] = 12328, ["cooldown"] = 30, }, -- Sweeping Strikes
		{ ["ability"] = 18499, ["cooldown"] = 30, }, -- Berserker Rage
		{ ["ability"] = 25266, ["cooldown"] = 120, }, -- Mocking Blow
		{ ["ability"] = 2687, ["cooldown"] = 60, }, -- Bloodrage *
		{ ["ability"] = 1161, ["cooldown"] = 180, }, -- Challenging Shout *
		{ ["ability"] = 355, ["cooldown"] = 8, }, -- Taunt *
		{ ["ability"] = 1680, ["cooldown"] = 10, }, -- Whirlwind *
		{ ["ability"] = 30335, ["cooldown"] = 4, }, -- Bloodthirst *
		{ ["ability"] = 30330, ["cooldown"] = 6, }, -- Mortal Strike *
		{ ["ability"] = 30356, ["cooldown"] = 6, }, -- Shield Slam *
		{ ["ability"] = 46924, ["cooldown"] = 90, }, -- Blade Storm : New *
		{ ["ability"] = 46968, ["cooldown"] = 20, }, -- Shockwave : New * -mod
		{ ["ability"] = 25275, ["cooldown"] = 30, }, -- intercept : New * -mod

	},
	["DEATHKNIGHT"] = {
		{ ["ability"] = 47528, ["cooldown"] = 10, }, -- Mind Freeze
		{ ["ability"] = 47481, ["cooldown"] = 60, }, -- Gnaw -mod ??
		{ ["ability"] = 48743, ["cooldown"] = 120, }, -- Death Pact
		{ ["ability"] = 49206, ["cooldown"] = 180, }, -- Summon Gargoyle
		{ ["ability"] = 51052, ["cooldown"] = 120, }, -- Anti-Magic Zone
		{ ["ability"] = 49576, ["cooldown"] = 35, }, -- Death Grip
		{ ["ability"] = 48707, ["cooldown"] = 45, }, -- Anti-Magic Shell
		{ ["ability"] = 47476, ["cooldown"] = 120, }, -- Strangulate
		{ ["ability"] = 49039, ["cooldown"] = 120, }, -- Lichborne
		{ ["ability"] = 49203, ["cooldown"] = 60, }, -- Hungering Cold
		{ ["ability"] = 51271, ["cooldown"] = 60, }, -- Unbreakable Armor
		{ ["ability"] = 48792, ["cooldown"] = 120, }, -- Icebound Fortitude
	},

}

ATTdbs.dbRacials = {
	{ ["ability"] = 59752, ["cooldown"] = 120, ["race"] = 1, ["cdshare"] = true },
	{ ["ability"] = 20572, ["cooldown"] = 120, ["race"] = 2 },
	{ ["ability"] = 20594, ["cooldown"] = 180, ["race"] = 3 },
	{ ["ability"] = 58984, ["cooldown"] = 120, ["race"] = 4 }, --changed
	{ ["ability"] = 20577, ["cooldown"] = 120, ["race"] = 5, },
	{ ["ability"] = 7744, ["cooldown"] = 120, ["race"] = 5, ["cdshare"] = true },
	{ ["ability"] = 20549, ["cooldown"] = 120, ["race"] = 6, },
	{ ["ability"] = 20589, ["cooldown"] = 180, ["race"] = 7 }, --to check
	{ ["ability"] = 26297, ["cooldown"] = 180, ["race"] = 8 },
	{ ["ability"] = 28730, ["cooldown"] = 120, ["race"] = 10 },
	{ ["ability"] = 28880, ["cooldown"] = 180, ["race"] = 11 },
}

ATTdbs.dbTrinketsMerge = {
	[37864] = 37864,
	[28237] = 37864,
	[30351] = 37864,
	[30350] = 37864,
	[30349] = 37864,
	[30348] = 37864,
	[28234] = 37864,
	[28235] = 37864,
	[28238] = 37864,
	[28236] = 37864,
	[42123] = 37864,
	[42124] = 37864,
	[51377] = 37864,


	[37865] = 37865,
	[28243] = 37865,
	[30343] = 37865,
	[30344] = 37865,
	[30345] = 37865,
	[30346] = 37865,
	[28242] = 37865,
	[28241] = 37865,
	[28240] = 37865,
	[28239] = 37865,
	[42122] = 37865,
	[42126] = 37865,
	[51378] = 37865,

	[50354] = 50354
}

ATTdbs.dbTrinkets = {
	{ ["ability"] = 42292, ["trinketId"] = 37864, ["cooldown"] = 120, ["isPvPtrinket"] = true, }, --ally
	{ ["ability"] = 42292, ["trinketId"] = 37865, ["cooldown"] = 120, ["isPvPtrinket"] = true, }, -- horde

	{ ["ability"] = 42292, ["trinketId"] = 46083, ["cooldown"] = 120, },
	{ ["ability"] = 42292, ["trinketId"] = 46085, ["cooldown"] = 120, },
	{ ["ability"] = 42292, ["trinketId"] = 46081, ["cooldown"] = 120, },
	{ ["ability"] = 42292, ["trinketId"] = 46084, ["cooldown"] = 120, },
	{ ["ability"] = 42292, ["trinketId"] = 46082, ["cooldown"] = 120, },
	---

	{ ["ability"] = 35165, ["trinketId"] = 29376, ["cooldown"] = 120, },
	{ ["ability"] = 35163, ["trinketId"] = 29370, ["cooldown"] = 120, },
	{ ["ability"] = 35169, ["trinketId"] = 29387, ["cooldown"] = 120, },
	{ ["ability"] = 71607, ["trinketId"] = 50354, ["cooldown"] = 120, },

	{ ["ability"] = 60319, ["trinketId"] = 40531, ["cooldown"] = 120, },

}
