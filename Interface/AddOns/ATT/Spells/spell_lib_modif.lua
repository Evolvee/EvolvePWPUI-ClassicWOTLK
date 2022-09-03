local addon, ATTdbs = ...

ATTdbs.cooldownResetters = {
	[GetSpellInfo(11958)] = { -- Cold Snap
		[42931] = 1, -- Cone of Cold
		[42917] = 1, -- Frost Nova
		[43012] = 1, -- Frost Ward
		[43039] = 1, -- Ice Barrier
		[45438] = 1, -- Ice Block
		[31687] = 1, -- Summon Water Elemental
		[44572] = 1, -- Deep Freeze
		[44545] = 1, -- Fingers of Frost
		[12472] = 1, -- Icy Veins	
	},
	[GetSpellInfo(14185)] = { -- 2
		[14177] = 1, -- Cold Blood
		[26669] = 1, -- Evasion
		[11305] = 1, -- Sprint
		[26889] = 1, -- Vanish
		[36554] = 1, -- Shadowstep
		[1766] = 10, -- Kick
		[51722] = 60,-- Dismantle
	},
	[GetSpellInfo(23989)] = { -- 2
        [19503] = 1, -- Scatter Shot
		[60192] = 1, -- Freezing Arrow
		[13809] = 1, -- Frost Trap
		[14311] = 1, -- Freezing Trap
		[19574] = 1, -- Bestial Wrath
		[34490] = 1, -- Silencing Shot
		[19263] = 1, -- Deterrence
		[53271] = 1, -- Master's Call
		[49012] = 1, -- Wyvern Sting
	},
}

ATTdbs.ShareCD = {
	
	[GetSpellInfo(16979)] = { [49376] = 1, }, 
	[GetSpellInfo(49376)] = { [16979] = 1, }, 
	
	[GetSpellInfo(43010)] = { [43012] = 1, }, 
	[GetSpellInfo(43012)] = { [43010] = 1, }, 

	[GetSpellInfo(49231)] = { [49233] = 1, [49236] = 1,},
	[GetSpellInfo(49233)] = { [49231] = 1, [49233] = 1,},
	[GetSpellInfo(49236)] = { [49231] = 1, [49236] = 1,},
		
	--traps
	[GetSpellInfo(60192)] = { [14311] = 1, [13809] = 1,},
	[GetSpellInfo(14311)] = { [60192] = 1, [13809] = 1,},
	[GetSpellInfo(13809)] = { [60192] = 1, [14311] = 1,},
	
	[GetSpellInfo(49067)] = { [49056] = 1,},
	[GetSpellInfo(49056)] = { [49067] = 1,},
}

ATTdbs.dbModif = {

     [14311] = { ["mod"]= GetSpellInfo(34493), ["rank"] ={2, 4, 6,}, },
     [13809] = { ["mod"]= GetSpellInfo(34493), ["rank"] ={2, 4, 6,}, },
     [34600] = { ["mod"]= GetSpellInfo(34493), ["rank"] ={2, 4, 6,}, },
     [27025] = { ["mod"]= GetSpellInfo(34493), ["rank"] ={2, 4, 6,}, },
     [27023] = { ["mod"]= GetSpellInfo(34493), ["rank"] ={2, 4, 6,}, },
     [60192] = { ["mod"]= GetSpellInfo(34493), ["rank"] ={2, 4, 6,}, },
     [3045] = { ["mod"]= GetSpellInfo(34949), ["rank"] ={60, 120,}, }, -- Rapid Fire
     
     [45438] = { ["mod"]= GetSpellInfo(31672), ["rank"] ={21, 42, 60,}, }, --% 10 20 -- Ice Block  7% 14% 20%
     [27087] = { ["mod"]= GetSpellInfo(31672), ["rank"] ={0.7, 1.4, 2,}, }, --% Cone of Cold
     [42917] = { ["mod"]= GetSpellInfo(31672), ["rank"] ={1.75, 3.5, 5}, },  -- Frost Nova
     [12472] = { ["mod"]= GetSpellInfo(31672), ["rank"] ={12.5, 25,36}, },  -- Icy Veins
     [11958] = { ["mod"]= GetSpellInfo(55092), ["rank"] ={48, 96,}, }, --% Cold Snap
     [33405] = { ["mod"]= GetSpellInfo(55092), ["rank"] ={3, 6,}, }, --% Ice Barrier
     [31687] = { ["mod"]= GetSpellInfo(55092), ["rank"] ={18, 36,}, }, --% Summon Water Elemental
     [66] = { ["mod"]= GetSpellInfo(44379), ["rank"] ={27, 54,}, }, --% invis
     [12043] = { ["mod"]= GetSpellInfo(44379), ["rank"] ={18, 36,}, }, --% presence of mind
     [12042] = { ["mod"]= GetSpellInfo(44379), ["rank"] ={18, 36,}, }, --% presence of mind
    
     [10308] = { ["mod"]= GetSpellInfo(20488), ["rank"] ={10, 20,}, }, --hoj *
     [10278] = { ["mod"]= GetSpellInfo(20175), ["rank"] ={60, 120,}, }, --blessing *
     [642] = { ["mod"]= GetSpellInfo(31849), ["rank"] ={30, 60,}, }, --divine shield *
     [498] = { ["mod"]= GetSpellInfo(31849), ["rank"] ={30, 60,}, }, --divine protection * 
     [27154] = { ["mod"]= GetSpellInfo(20235), ["rank"] ={120, 240,}, }, -- Lay on Hands

     
     [10890] = { ["mod"]= GetSpellInfo(15448), ["rank"] ={2, 4, 4,}, }, -- Psychic Scream
     
     [33206] = { ["mod"]= GetSpellInfo(47508), ["rank"] ={18, 36,}, }, -- Pain sup
     [10060] = { ["mod"]= GetSpellInfo(47508), ["rank"] ={12, 24,}, }, -- power infu
     [14751] = { ["mod"]= GetSpellInfo(47508), ["rank"] ={18,36,}, }, -- inner focus


     [31224] = { ["mod"]= GetSpellInfo(14066), ["rank"] ={15, 30,}, },  -- cloack of shadows
     [2094] = { ["mod"]= GetSpellInfo(14066), ["rank"] ={30, 60,}, }, --blind
     [26889] = { ["mod"]= GetSpellInfo(14066), ["rank"] ={30, 60,}, }, -- vanish

     [36554] = { ["mod"]= GetSpellInfo(58415), ["rank"] ={5, 10,}, }, -- shadowstep
     [57934] = { ["mod"]= GetSpellInfo(58415), ["rank"] ={5, 10,}, }, -- Tricks of the Trade
     [1725] = { ["mod"]= GetSpellInfo(58415), ["rank"] ={5, 10,}, }, -- Distract
     [14185] = { ["mod"]= GetSpellInfo(58415), ["rank"] ={90, 180,}, }, -- prepar

     [26669] = { ["mod"]= GetSpellInfo(13872), ["rank"] ={60, 60,}, },  -- Evasion
     [11305] = { ["mod"]= GetSpellInfo(13872), ["rank"] ={60, 60,}, }, -- Sprint
     
     [8177] = { ["mod"]= GetSpellInfo(16293), ["rank"] ={1, 2,}, }, -- Grounding Totem
     [25454] = { ["mod"]= GetSpellInfo(16116), ["rank"] ={0.2, 0.4,0.6,0.8,1,}, },  -- Earth Shock
     [25464] = { ["mod"]= GetSpellInfo(16116), ["rank"] ={0.2, 0.4,0.6,0.8,1,}, },  --Frost Shock
     [25457] = { ["mod"]= GetSpellInfo(16116), ["rank"] ={0.2, 0.4,0.6,0.8,1,}, },  -- Flame Shock
     [57994] = { ["mod"]= GetSpellInfo(16116), ["rank"] ={0.2, 0.4,0.6,0.8,1,}, },  -- Wind Shear
     
     [586] = { ["mod"]= GetSpellInfo(15311), ["rank"] ={3, 6,}, }, --to add fade
     [34433] = { ["mod"]= GetSpellInfo(15311), ["rank"] ={60, 120,}, }, -- Shadowfiend 
     
     [25275] = { ["mod"]= GetSpellInfo(29889), ["rank"] ={5, 10,}, }, -- intercept
     [27079] = {["mod"] = GetSpellInfo(11080), ["rank"] = {1,2,},}, -- Fire Blast
     [20271] = {["mod"] = GetSpellInfo(25957), ["rank"] = {1, 2,},}, -- Judgement of Light
     [25375] = {["mod"] = GetSpellInfo(15316), ["rank"] = {0.5, 1, 1.5,2,2.5,},}, -- Mind Blast
     [1787] = {["mod"] = GetSpellInfo(14063), ["rank"] = {2,4,6,},}, -- stealth?
     [30330] = {["mod"] = GetSpellInfo(35449), ["rank"] = {0.3, 0.7, 1,},}, -- Mortal Strike
 }

ATTdbs.dbAuraRemoved = {
	[GetSpellInfo(14177)]   = true,
	[GetSpellInfo(17116)]   = true,
	--[GetSpellInfo(20580)]   = true,
	[GetSpellInfo(16166)]   = true,
	[GetSpellInfo(18288)]   = true,
	[GetSpellInfo(15473)]   = true,
	[GetSpellInfo(14751)]   = true,
	[GetSpellInfo(20216)]   = true,
	[GetSpellInfo(12043)]   = true,
	[GetSpellInfo(11129)]   = true,
	[GetSpellInfo(1787)]   = true,
	[GetSpellInfo(9913)]   = true,
	--[GetSpellInfo(16188)]   = true,
}

ATTdbs.dbAuraApplied = {
   [GetSpellInfo(11129)]   = true,
}
