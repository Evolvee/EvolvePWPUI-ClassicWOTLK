
BindPadVars = {
	{
		["type"] = "CLICK",
		["name"] = "MC target",
		["macrotext"] = "/cqs\n/cast Mind Control",
		["action"] = "CLICK BindPadMacro:MC target",
		["texture"] = 132089,
	}, -- [1]
	{
		["type"] = "CLICK",
		["name"] = "MC focus",
		["macrotext"] = "/cqs\n/cast [target=focus] Mind Control",
		["action"] = "CLICK BindPadMacro:MC focus",
		["texture"] = 132089,
	}, -- [2]
	{
		["type"] = "CLICK",
		["name"] = "Holy Nova",
		["macrotext"] = "/cqs\n/cast Holy Nova",
		["action"] = "CLICK BindPadMacro:Holy Nova",
		["texture"] = 132089,
	}, -- [3]
	{
		["type"] = "CLICK",
		["name"] = "CancelDispersion",
		["macrotext"] = "/cancelaura Dispersion",
		["action"] = "CLICK BindPadMacro:CancelDispersion",
		["texture"] = 132089,
	}, -- [4]
	{
		["type"] = "CLICK",
		["name"] = "CancelDispers2",
		["macrotext"] = "/cancelaura Dispersion",
		["action"] = "CLICK BindPadMacro:CancelDispers2",
		["texture"] = 132089,
	}, -- [5]
	{
		["type"] = "CLICK",
		["name"] = "Dispel Party2",
		["macrotext"] = "/cqs\n/cast [target=party2] Dispel Magic(Rank 2)\n/TargetLastTarget();",
		["action"] = "CLICK BindPadMacro:Dispel Party2",
		["texture"] = 132089,
	}, -- [6]
	{
		["type"] = "CLICK",
		["name"] = "Dispel Pet",
		["macrotext"] = "/cqs\n/cast [target=pet] Dispel Magic(Rank 2)\n",
		["action"] = "CLICK BindPadMacro:Dispel Pet",
		["texture"] = 132089,
	}, -- [7]
	{
		["type"] = "CLICK",
		["name"] = "Fear Ward Pet",
		["macrotext"] = "/cqs\n/cast [target=pet] Fear Ward",
		["action"] = "CLICK BindPadMacro:Fear Ward Pet",
		["texture"] = 132089,
	}, -- [8]
	{
		["type"] = "CLICK",
		["name"] = "Focus Silence",
		["macrotext"] = "/cqs\n/use [target=focus] Silence",
		["action"] = "CLICK BindPadMacro:Focus Silence",
		["texture"] = 132089,
	}, -- [9]
	{
		["type"] = "CLICK",
		["name"] = "Shackle Gargoyle",
		["macrotext"] = "/cqs\n/target Ebon Gargoyle\n/cast Shackle Undead\n/targetlasttarget",
		["action"] = "CLICK BindPadMacro:Shackle Gargoyle",
		["texture"] = 132089,
	}, -- [10]
	{
		["type"] = "CLICK",
		["name"] = "Mass Dispel",
		["macrotext"] = "/cqs\n/cast !Mass Dispel",
		["action"] = "CLICK BindPadMacro:Mass Dispel",
		["texture"] = 132089,
	}, -- [11]
	{
		["type"] = "CLICK",
		["name"] = "Mind Flay Focus",
		["macrotext"] = "/cqs\n/cast [target=focus] Mind Flay",
		["action"] = "CLICK BindPadMacro:Mind Flay Focus",
		["texture"] = 132089,
	}, -- [12]
	{
		["type"] = "CLICK",
		["name"] = "wotf",
		["macrotext"] = "/cqs\n/cast Will of the Forsaken(Racial)",
		["action"] = "CLICK BindPadMacro:wotf",
		["texture"] = 132089,
	}, -- [13]
	["PROFILE_Firemaw_Evolvepwp"] = {
		{
			["CharacterSpecificTab3"] = {
				["numSlot"] = 42,
			},
			["CharacterSpecificTab1"] = {
				["numSlot"] = 42,
			},
			["AllKeyBindings"] = {
				["CTRL-P"] = "TOGGLEFPS",
				["SHIFT-C"] = "MULTIACTIONBAR3BUTTON12",
				["SHIFT-P"] = "TOGGLECHARACTER3",
				["SHIFT-F3"] = "TARGETPARTYPET2",
				["CTRL-F3"] = "SHAPESHIFTBUTTON3",
				["CTRL-4"] = "BONUSACTIONBUTTON4",
				["DOWN"] = "CAMERAZOOMOUT",
				["CTRL--"] = "MASTERVOLUMEDOWN",
				["CTRL-2"] = "BONUSACTIONBUTTON2",
				["INSERT"] = "PITCHUP",
				["CTRL-6"] = "BONUSACTIONBUTTON6",
				["CTRL-0"] = "BONUSACTIONBUTTON10",
				["SHIFT-I"] = "TOGGLEPETBOOK",
				["CTRL-C"] = "CLICK BindPadMacro:Dispel Party2",
				["F2"] = "TARGETPARTYMEMBER1",
				["SHIFT-X"] = "CLICK BindPadMacro:Shackle Gargoyle",
				["SHIFT-TAB"] = "TARGETPREVIOUSENEMY",
				["S"] = "MOVEBACKWARD",
				["BUTTON4"] = "CLICK BindPadMacro:Mass Dispel",
				["LEFT"] = "TURNLEFT",
				["CTRL-SHIFT-PAGEDOWN"] = "COMBATLOGBOTTOM",
				["CTRL-PAGEUP"] = "COMBATLOGPAGEUP",
				["CTRL-F2"] = "SHAPESHIFTBUTTON2",
				["F12"] = "TOGGLEBACKPACK",
				["CTRL-PAGEDOWN"] = "COMBATLOGPAGEDOWN",
				["CAPSLOCK"] = "MULTIACTIONBAR1BUTTON2",
				["V"] = "ACTIONBUTTON9",
				["CTRL-7"] = "BONUSACTIONBUTTON7",
				["F11"] = "TOGGLEBAG4",
				["CTRL-TAB"] = "TARGETNEARESTFRIEND",
				["SHIFT-3"] = "CLICK BindPadMacro:Mind Flay Focus",
				["R"] = "MULTIACTIONBAR2BUTTON2",
				["CTRL-="] = "MASTERVOLUMEUP",
				["END"] = "NEXTVIEW",
				["NUMLOCK"] = "SITORSTAND",
				["CTRL-9"] = "BONUSACTIONBUTTON9",
				["BUTTON3"] = "MOVEANDSTEER",
				["F10"] = "TOGGLEBAG3",
				["ENTER"] = "OPENCHAT",
				["UP"] = "CAMERAZOOMIN",
				["CTRL-F9"] = "SHAPESHIFTBUTTON9",
				["SHIFT-F4"] = "TARGETPARTYPET3",
				["CTRL-SHIFT-TAB"] = "TARGETPREVIOUSFRIEND",
				["F9"] = "TOGGLEBAG2",
				["CTRL-BUTTON4"] = "CLICK BindPadMacro:MC focus",
				["F1"] = "TARGETSELF",
				["SHIFT-M"] = "TOGGLEBATTLEFIELDMINIMAP",
				["SPACE"] = "JUMP",
				["F5"] = "TARGETPARTYMEMBER4",
				["CTRL-F7"] = "SHAPESHIFTBUTTON7",
				["NUMPADPLUS"] = "MINIMAPZOOMIN",
				["SHIFT-T"] = "PETATTACK",
				["NUMPADMINUS"] = "MINIMAPZOOMOUT",
				["PRINTSCREEN"] = "SCREENSHOT",
				["D"] = "TURNRIGHT",
				["MOUSEWHEELDOWN"] = "MULTIACTIONBAR1BUTTON6",
				["SHIFT-PAGEDOWN"] = "CHATBOTTOM",
				["CTRL-8"] = "BONUSACTIONBUTTON8",
				["HOME"] = "STARTAUTORUN",
				["CTRL-F8"] = "SHAPESHIFTBUTTON8",
				["SHIFT-BUTTON4"] = "CLICK BindPadMacro:MC target",
				["SHIFT-SPACE"] = "TOGGLEWORLDSTATESCORES",
				["A"] = "TURNLEFT",
				["CTRL-F1"] = "SHAPESHIFTBUTTON1",
				["/"] = "OPENCHATSLASH",
				["CTRL-R"] = "CLICK BindPadMacro:Fear Ward Pet",
				["CTRL-F10"] = "SHAPESHIFTBUTTON10",
				["SHIFT-F5"] = "TARGETPARTYPET4",
				["MOUSEWHEELUP"] = "CLICK BindPadMacro:Holy Nova",
				["1"] = "ACTIONBUTTON1",
				["CTRL-F4"] = "SHAPESHIFTBUTTON4",
				["ALT-Z"] = "TOGGLEUI",
				["PAGEDOWN"] = "CHATPAGEDOWN",
				["ALT-MOUSEWHEELDOWN"] = "CLICK BindPadMacro:CancelDispersion",
				["BUTTON5"] = "MULTIACTIONBAR2BUTTON1",
				["."] = "NAMEPLATES",
				["CTRL-5"] = "BONUSACTIONBUTTON5",
				["0"] = "ACTIONBUTTON10",
				["3"] = "ACTIONBUTTON3",
				["2"] = "ACTIONBUTTON2",
				["RIGHT"] = "TURNRIGHT",
				["F4"] = "TARGETPARTYMEMBER3",
				["7"] = "ACTIONBUTTON7",
				["6"] = "ACTIONBUTTON6",
				["CTRL-F5"] = "SHAPESHIFTBUTTON5",
				["8"] = "ACTIONBUTTON8",
				["4"] = "ACTIONBUTTON4",
				["5"] = "ACTIONBUTTON5",
				["="] = "ACTIONBUTTON12",
				["NUMPADDIVIDE"] = "TOGGLERUN",
				["F8"] = "TOGGLEBAG1",
				["CTRL-3"] = "BONUSACTIONBUTTON3",
				["SHIFT-R"] = "CLICK BindPadMacro:Dispel Pet",
				["SHIFT-F1"] = "TARGETPET",
				["C"] = "MULTIACTIONBAR4BUTTON12",
				["B"] = "TOGGLEBACKPACK",
				["E"] = "STRAFERIGHT",
				["CTRL-1"] = "BONUSACTIONBUTTON1",
				["G"] = "MULTIACTIONBAR1BUTTON1",
				["F"] = "MULTIACTIONBAR1BUTTON7",
				["CTRL-F6"] = "SHAPESHIFTBUTTON6",
				["H"] = "TOGGLECHARACTER4",
				["K"] = "TOGGLECHARACTER1",
				["SHIFT-MOUSEWHEELDOWN"] = "CLICK BindPadMacro:CancelDispers2",
				["M"] = "TOGGLEWORLDMAP",
				["L"] = "TOGGLEQUESTLOG",
				["O"] = "TOGGLESOCIAL",
				["N"] = "TOGGLETALENTS",
				["Q"] = "STRAFELEFT",
				["P"] = "TOGGLESPELLBOOK",
				["SHIFT-B"] = "OPENALLBAGS",
				["F3"] = "TARGETPARTYMEMBER2",
				["U"] = "TOGGLECHARACTER2",
				["T"] = "ATTACKTARGET",
				["TAB"] = "TARGETNEARESTENEMY",
				["CTRL-M"] = "TOGGLEMUSIC",
				["ESCAPE"] = "TOGGLEGAMEMENU",
				["X"] = "ACTIONBUTTON11",
				["W"] = "MOVEFORWARD",
				["Z"] = "TOGGLESHEATH",
				["SHIFT-F2"] = "TARGETPARTYPET1",
				["PAGEUP"] = "CHATPAGEUP",
				["SHIFT-V"] = "CLICK BindPadMacro:Focus Silence",
				["DELETE"] = "PITCHDOWN",
			},
			["CharacterSpecificTab2"] = {
				["numSlot"] = 42,
			},
		}, -- [1]
		["profileForTalentGroup"] = {
			1, -- [1]
		},
	},
	["PROFILE_Gehennas_Evolvebanned"] = {
		{
			["CharacterSpecificTab2"] = {
				["numSlot"] = 42,
			},
			["AllKeyBindings"] = {
				["CTRL-P"] = "TOGGLEFPS",
				["SHIFT-C"] = "MULTIACTIONBAR3BUTTON12",
				["CTRL--"] = "MASTERVOLUMEDOWN",
				["SHIFT-I"] = "TOGGLEPETBOOK",
				["DOWN"] = "CAMERAZOOMOUT",
				["CTRL-F3"] = "SHAPESHIFTBUTTON3",
				["CTRL-4"] = "BONUSACTIONBUTTON4",
				["SHIFT-G"] = "CLICK BindPadMacro:wotf",
				["SHIFT-P"] = "TOGGLECHARACTER3",
				["CTRL-2"] = "BONUSACTIONBUTTON2",
				["INSERT"] = "PITCHUP",
				["CTRL-SHIFT-PAGEDOWN"] = "COMBATLOGBOTTOM",
				["CTRL-0"] = "BONUSACTIONBUTTON10",
				["SHIFT-F3"] = "TARGETPARTYPET2",
				["CTRL-C"] = "CLICK BindPadMacro:Dispel Party2",
				["F2"] = "TARGETPARTYMEMBER1",
				["SHIFT-X"] = "CLICK BindPadMacro:Shackle Gargoyle",
				["SHIFT-TAB"] = "TARGETPREVIOUSENEMY",
				["SHIFT-B"] = "OPENALLBAGS",
				["BUTTON4"] = "CLICK BindPadMacro:Mass Dispel",
				["LEFT"] = "TURNLEFT",
				["CTRL-6"] = "BONUSACTIONBUTTON6",
				["CTRL-PAGEUP"] = "COMBATLOGPAGEUP",
				["CTRL-F2"] = "SHAPESHIFTBUTTON2",
				["F12"] = "TOGGLEBACKPACK",
				["CTRL-PAGEDOWN"] = "COMBATLOGPAGEDOWN",
				["CAPSLOCK"] = "MULTIACTIONBAR1BUTTON2",
				["CTRL-M"] = "TOGGLEMUSIC",
				["W"] = "MOVEFORWARD",
				["F11"] = "TOGGLEBAG4",
				["T"] = "ATTACKTARGET",
				["UP"] = "CAMERAZOOMIN",
				["F3"] = "TARGETPARTYMEMBER2",
				["CTRL-="] = "MASTERVOLUMEUP",
				["F1"] = "TARGETSELF",
				["NUMLOCK"] = "SITORSTAND",
				["CTRL-9"] = "BONUSACTIONBUTTON9",
				["Q"] = "STRAFELEFT",
				["F10"] = "TOGGLEBAG3",
				["ENTER"] = "OPENCHAT",
				["SHIFT-3"] = "CLICK BindPadMacro:Mind Flay Focus",
				["CTRL-F9"] = "SHAPESHIFTBUTTON9",
				["NUMPADMINUS"] = "MINIMAPZOOMOUT",
				["L"] = "TOGGLEQUESTLOG",
				["PRINTSCREEN"] = "SCREENSHOT",
				["CTRL-BUTTON4"] = "CLICK BindPadMacro:MC focus",
				["END"] = "NEXTVIEW",
				["D"] = "TURNRIGHT",
				["SPACE"] = "JUMP",
				["F5"] = "TARGETPARTYMEMBER4",
				["B"] = "TOGGLEBACKPACK",
				["NUMPADPLUS"] = "MINIMAPZOOMIN",
				["SHIFT-T"] = "PETATTACK",
				["F"] = "MULTIACTIONBAR1BUTTON7",
				["F9"] = "TOGGLEBAG2",
				["CTRL-1"] = "BONUSACTIONBUTTON1",
				["MOUSEWHEELDOWN"] = "MULTIACTIONBAR1BUTTON6",
				["SHIFT-PAGEDOWN"] = "CHATBOTTOM",
				["CTRL-8"] = "BONUSACTIONBUTTON8",
				["/"] = "OPENCHATSLASH",
				["CTRL-F8"] = "SHAPESHIFTBUTTON8",
				["SHIFT-BUTTON4"] = "CLICK BindPadMacro:MC target",
				["SHIFT-SPACE"] = "TOGGLEWORLDSTATESCORES",
				["A"] = "TURNLEFT",
				["HOME"] = "STARTAUTORUN",
				["MOUSEWHEELUP"] = "CLICK BindPadMacro:Holy Nova",
				["CTRL-R"] = "CLICK BindPadMacro:Fear Ward Pet",
				["CTRL-F10"] = "SHAPESHIFTBUTTON10",
				["NUMPADDIVIDE"] = "TOGGLERUN",
				["BUTTON5"] = "MULTIACTIONBAR2BUTTON1",
				["CTRL-F4"] = "SHAPESHIFTBUTTON4",
				["F4"] = "TARGETPARTYMEMBER3",
				["ALT-Z"] = "TOGGLEUI",
				["PAGEDOWN"] = "CHATPAGEDOWN",
				["ALT-MOUSEWHEELDOWN"] = "CLICK BindPadMacro:CancelDispersion",
				["CTRL-F1"] = "SHAPESHIFTBUTTON1",
				["."] = "NAMEPLATES",
				["CTRL-5"] = "BONUSACTIONBUTTON5",
				["0"] = "ACTIONBUTTON10",
				["3"] = "ACTIONBUTTON3",
				["2"] = "ACTIONBUTTON2",
				["5"] = "ACTIONBUTTON5",
				["4"] = "ACTIONBUTTON4",
				["7"] = "ACTIONBUTTON7",
				["6"] = "ACTIONBUTTON6",
				["8"] = "ACTIONBUTTON8",
				["CTRL-F5"] = "SHAPESHIFTBUTTON5",
				["RIGHT"] = "TURNRIGHT",
				["1"] = "ACTIONBUTTON1",
				["="] = "ACTIONBUTTON12",
				["SHIFT-F5"] = "TARGETPARTYPET4",
				["F8"] = "TOGGLEBAG1",
				["CTRL-3"] = "BONUSACTIONBUTTON3",
				["SHIFT-R"] = "CLICK BindPadMacro:Dispel Pet",
				["SHIFT-F1"] = "TARGETPET",
				["C"] = "MULTIACTIONBAR4BUTTON12",
				["CTRL-F7"] = "SHAPESHIFTBUTTON7",
				["E"] = "STRAFERIGHT",
				["SHIFT-M"] = "TOGGLEBATTLEFIELDMINIMAP",
				["G"] = "MULTIACTIONBAR1BUTTON1",
				["SHIFT-F4"] = "TARGETPARTYPET3",
				["CTRL-F6"] = "SHAPESHIFTBUTTON6",
				["H"] = "TOGGLECHARACTER4",
				["K"] = "TOGGLECHARACTER1",
				["SHIFT-MOUSEWHEELDOWN"] = "CLICK BindPadMacro:CancelDispers2",
				["M"] = "TOGGLEWORLDMAP",
				["CTRL-SHIFT-TAB"] = "TARGETPREVIOUSFRIEND",
				["O"] = "TOGGLESOCIAL",
				["N"] = "TOGGLETALENTS",
				["BUTTON3"] = "MOVEANDSTEER",
				["P"] = "TOGGLESPELLBOOK",
				["S"] = "MOVEBACKWARD",
				["R"] = "MULTIACTIONBAR2BUTTON2",
				["U"] = "TOGGLECHARACTER2",
				["CTRL-TAB"] = "TARGETNEARESTFRIEND",
				["TAB"] = "TARGETNEARESTENEMY",
				["V"] = "ACTIONBUTTON9",
				["ESCAPE"] = "TOGGLEGAMEMENU",
				["X"] = "ACTIONBUTTON11",
				["CTRL-7"] = "BONUSACTIONBUTTON7",
				["Z"] = "TOGGLESHEATH",
				["SHIFT-F2"] = "TARGETPARTYPET1",
				["PAGEUP"] = "CHATPAGEUP",
				["SHIFT-V"] = "CLICK BindPadMacro:Focus Silence",
				["DELETE"] = "PITCHDOWN",
			},
			["CharacterSpecificTab1"] = {
				["numSlot"] = 42,
			},
			["CharacterSpecificTab3"] = {
				["numSlot"] = 42,
			},
		}, -- [1]
		["profileForTalentGroup"] = {
			1, -- [1]
		},
	},
	["GeneralKeyBindings"] = {
	},
	["numSlot"] = 42,
	["PROFILE_Firemaw_Evolvebanned"] = {
		{
			["CharacterSpecificTab2"] = {
				["numSlot"] = 42,
			},
			["AllKeyBindings"] = {
				["CTRL-P"] = "TOGGLEFPS",
				["SHIFT-C"] = "MULTIACTIONBAR3BUTTON12",
				["CTRL--"] = "MASTERVOLUMEDOWN",
				["SHIFT-I"] = "TOGGLEPETBOOK",
				["SHIFT-TAB"] = "TARGETPREVIOUSENEMY",
				["CTRL-F3"] = "SHAPESHIFTBUTTON3",
				["CTRL-4"] = "BONUSACTIONBUTTON4",
				["SHIFT-G"] = "CLICK BindPadMacro:WILL",
				["SHIFT-P"] = "TOGGLECHARACTER3",
				["BUTTON4"] = "CLICK BindPadMacro:Mass Dispel",
				["CTRL-6"] = "BONUSACTIONBUTTON6",
				["CTRL-SHIFT-PAGEDOWN"] = "COMBATLOGBOTTOM",
				["CTRL-0"] = "BONUSACTIONBUTTON10",
				["SHIFT-F3"] = "TARGETPARTYPET2",
				["CTRL-C"] = "CLICK BindPadMacro:Dispel Party2",
				["F2"] = "TARGETPARTYMEMBER1",
				["SHIFT-X"] = "CLICK BindPadMacro:Shackle Gargoyle",
				["DOWN"] = "CAMERAZOOMOUT",
				["SHIFT-B"] = "OPENALLBAGS",
				["CTRL-2"] = "BONUSACTIONBUTTON2",
				["LEFT"] = "TURNLEFT",
				["INSERT"] = "PITCHUP",
				["CTRL-PAGEUP"] = "COMBATLOGPAGEUP",
				["CTRL-F2"] = "SHAPESHIFTBUTTON2",
				["F12"] = "TOGGLEBACKPACK",
				["CTRL-PAGEDOWN"] = "COMBATLOGPAGEDOWN",
				["CAPSLOCK"] = "MULTIACTIONBAR1BUTTON2",
				["CTRL-M"] = "TOGGLEMUSIC",
				["CTRL-7"] = "BONUSACTIONBUTTON7",
				["F11"] = "TOGGLEBAG4",
				["T"] = "ATTACKTARGET",
				["UP"] = "CAMERAZOOMIN",
				["F3"] = "TARGETPARTYMEMBER2",
				["S"] = "MOVEBACKWARD",
				["END"] = "NEXTVIEW",
				["NUMLOCK"] = "SITORSTAND",
				["CTRL-9"] = "BONUSACTIONBUTTON9",
				["Q"] = "STRAFELEFT",
				["F10"] = "TOGGLEBAG3",
				["ENTER"] = "OPENCHAT",
				["SHIFT-3"] = "CLICK BindPadMacro:Mind Flay Focus",
				["NUMPADPLUS"] = "MINIMAPZOOMIN",
				["F"] = "MULTIACTIONBAR1BUTTON7",
				["L"] = "TOGGLEQUESTLOG",
				["CTRL-F8"] = "SHAPESHIFTBUTTON8",
				["SHIFT-MOUSEWHEELDOWN"] = "CLICK BindPadMacro:CancelDispers2",
				["F1"] = "TARGETSELF",
				["CTRL-1"] = "BONUSACTIONBUTTON1",
				["SPACE"] = "JUMP",
				["F5"] = "TARGETPARTYMEMBER4",
				["B"] = "TOGGLEBACKPACK",
				["CTRL-F9"] = "SHAPESHIFTBUTTON9",
				["SHIFT-T"] = "PETATTACK",
				["NUMPADMINUS"] = "MINIMAPZOOMOUT",
				["F9"] = "TOGGLEBAG2",
				["SHIFT-M"] = "TOGGLEBATTLEFIELDMINIMAP",
				["MOUSEWHEELDOWN"] = "MULTIACTIONBAR1BUTTON6",
				["SHIFT-F1"] = "TARGETPET",
				["CTRL-F7"] = "SHAPESHIFTBUTTON7",
				["CTRL-R"] = "CLICK BindPadMacro:Fear Ward Pet",
				["PRINTSCREEN"] = "SCREENSHOT",
				["SHIFT-BUTTON4"] = "CLICK BindPadMacro:MC target",
				["SHIFT-PAGEDOWN"] = "CHATBOTTOM",
				["SHIFT-R"] = "CLICK BindPadMacro:Dispel Pet",
				["CTRL-F1"] = "SHAPESHIFTBUTTON1",
				["/"] = "OPENCHATSLASH",
				["HOME"] = "STARTAUTORUN",
				["CTRL-F10"] = "SHAPESHIFTBUTTON10",
				["SHIFT-F5"] = "TARGETPARTYPET4",
				["1"] = "ACTIONBUTTON1",
				["MOUSEWHEELUP"] = "CLICK BindPadMacro:Holy Nova",
				["CTRL-F4"] = "SHAPESHIFTBUTTON4",
				["ALT-Z"] = "TOGGLEUI",
				["PAGEDOWN"] = "CHATPAGEDOWN",
				["ALT-MOUSEWHEELDOWN"] = "CLICK BindPadMacro:CancelDispersion",
				["BUTTON5"] = "MULTIACTIONBAR2BUTTON1",
				["."] = "NAMEPLATES",
				["CTRL-5"] = "BONUSACTIONBUTTON5",
				["0"] = "ACTIONBUTTON10",
				["3"] = "ACTIONBUTTON3",
				["2"] = "ACTIONBUTTON2",
				["5"] = "ACTIONBUTTON5",
				["4"] = "ACTIONBUTTON4",
				["7"] = "ACTIONBUTTON7",
				["6"] = "ACTIONBUTTON6",
				["8"] = "ACTIONBUTTON8",
				["CTRL-F5"] = "SHAPESHIFTBUTTON5",
				["F4"] = "TARGETPARTYMEMBER3",
				["RIGHT"] = "TURNRIGHT",
				["="] = "ACTIONBUTTON12",
				["NUMPADDIVIDE"] = "TOGGLERUN",
				["F8"] = "TOGGLEBAG1",
				["CTRL-3"] = "BONUSACTIONBUTTON3",
				["A"] = "TURNLEFT",
				["SHIFT-SPACE"] = "TOGGLEWORLDSTATESCORES",
				["C"] = "MULTIACTIONBAR4BUTTON12",
				["CTRL-8"] = "BONUSACTIONBUTTON8",
				["E"] = "STRAFERIGHT",
				["D"] = "TURNRIGHT",
				["G"] = "MULTIACTIONBAR1BUTTON1",
				["SHIFT-F4"] = "TARGETPARTYPET3",
				["CTRL-F6"] = "SHAPESHIFTBUTTON6",
				["H"] = "TOGGLECHARACTER4",
				["K"] = "TOGGLECHARACTER1",
				["CTRL-BUTTON4"] = "CLICK BindPadMacro:MC focus",
				["M"] = "TOGGLEWORLDMAP",
				["CTRL-SHIFT-TAB"] = "TARGETPREVIOUSFRIEND",
				["O"] = "TOGGLESOCIAL",
				["N"] = "TOGGLETALENTS",
				["BUTTON3"] = "MOVEANDSTEER",
				["P"] = "TOGGLESPELLBOOK",
				["CTRL-="] = "MASTERVOLUMEUP",
				["R"] = "MULTIACTIONBAR2BUTTON2",
				["U"] = "TOGGLECHARACTER2",
				["CTRL-TAB"] = "TARGETNEARESTFRIEND",
				["W"] = "MOVEFORWARD",
				["V"] = "ACTIONBUTTON9",
				["ESCAPE"] = "TOGGLEGAMEMENU",
				["X"] = "ACTIONBUTTON11",
				["TAB"] = "TARGETNEARESTENEMY",
				["Z"] = "TOGGLESHEATH",
				["SHIFT-F2"] = "TARGETPARTYPET1",
				["PAGEUP"] = "CHATPAGEUP",
				["SHIFT-V"] = "CLICK BindPadMacro:Focus Silence",
				["DELETE"] = "PITCHDOWN",
			},
			["CharacterSpecificTab1"] = {
				["numSlot"] = 42,
			},
			["CharacterSpecificTab3"] = {
				["numSlot"] = 42,
			},
		}, -- [1]
		["profileForTalentGroup"] = {
			1, -- [1]
		},
	},
	["version"] = 1.3,
	["showHotkey"] = true,
	["tab"] = 1,
	["PROFILE_Gehennas_Evolvebank"] = {
		{
			["CharacterSpecificTab2"] = {
				["numSlot"] = 42,
			},
			["AllKeyBindings"] = {
				["CTRL-P"] = "TOGGLEFPS",
				["SHIFT-C"] = "MULTIACTIONBAR3BUTTON12",
				["CTRL-F3"] = "SHAPESHIFTBUTTON3",
				["CTRL-4"] = "BONUSACTIONBUTTON4",
				["SHIFT-P"] = "TOGGLECHARACTER3",
				["CTRL-0"] = "BONUSACTIONBUTTON10",
				["SHIFT-F3"] = "TARGETPARTYPET2",
				["F2"] = "TARGETPARTYMEMBER1",
				["SHIFT-TAB"] = "TARGETPREVIOUSENEMY",
				["CTRL-2"] = "BONUSACTIONBUTTON2",
				["LEFT"] = "TURNLEFT",
				["CTRL-SHIFT-PAGEDOWN"] = "COMBATLOGBOTTOM",
				["CTRL-PAGEUP"] = "COMBATLOGPAGEUP",
				["F12"] = "TOGGLEBACKPACK",
				["CTRL-PAGEDOWN"] = "COMBATLOGPAGEDOWN",
				["CAPSLOCK"] = "MULTIACTIONBAR1BUTTON2",
				["F11"] = "TOGGLEBAG4",
				["DOWN"] = "CAMERAZOOMOUT",
				["CTRL--"] = "MASTERVOLUMEDOWN",
				["CTRL-6"] = "BONUSACTIONBUTTON6",
				["INSERT"] = "PITCHUP",
				["CTRL-F2"] = "SHAPESHIFTBUTTON2",
				["NUMLOCK"] = "SITORSTAND",
				["CTRL-9"] = "BONUSACTIONBUTTON9",
				["TAB"] = "TARGETNEARESTENEMY",
				["F10"] = "TOGGLEBAG3",
				["ENTER"] = "OPENCHAT",
				["UP"] = "CAMERAZOOMIN",
				["CTRL-="] = "MASTERVOLUMEUP",
				["CTRL-F9"] = "SHAPESHIFTBUTTON9",
				["CTRL-M"] = "TOGGLEMUSIC",
				["CTRL-7"] = "BONUSACTIONBUTTON7",
				["T"] = "ATTACKTARGET",
				["END"] = "NEXTVIEW",
				["CTRL-F8"] = "SHAPESHIFTBUTTON8",
				["F3"] = "TARGETPARTYMEMBER2",
				["F5"] = "TARGETPARTYMEMBER4",
				["SHIFT-B"] = "OPENALLBAGS",
				["NUMPADPLUS"] = "MINIMAPZOOMIN",
				["SHIFT-T"] = "PETATTACK",
				["MOUSEWHEELDOWN"] = "MULTIACTIONBAR1BUTTON6",
				["BUTTON3"] = "MOVEANDSTEER",
				["F9"] = "TOGGLEBAG2",
				["SPACE"] = "JUMP",
				["CTRL-F4"] = "SHAPESHIFTBUTTON4",
				["L"] = "TOGGLEQUESTLOG",
				["NUMPADMINUS"] = "MINIMAPZOOMOUT",
				["PRINTSCREEN"] = "SCREENSHOT",
				["CTRL-F7"] = "SHAPESHIFTBUTTON7",
				["NUMPADDIVIDE"] = "TOGGLERUN",
				["CTRL-5"] = "BONUSACTIONBUTTON5",
				["RIGHT"] = "TURNRIGHT",
				["F"] = "MULTIACTIONBAR1BUTTON7",
				["HOME"] = "STARTAUTORUN",
				["CTRL-F10"] = "SHAPESHIFTBUTTON10",
				["4"] = "ACTIONBUTTON4",
				["SHIFT-M"] = "TOGGLEBATTLEFIELDMINIMAP",
				["8"] = "ACTIONBUTTON8",
				["CTRL-8"] = "BONUSACTIONBUTTON8",
				["ALT-Z"] = "TOGGLEUI",
				["PAGEDOWN"] = "CHATPAGEDOWN",
				["SHIFT-F5"] = "TARGETPARTYPET4",
				["BUTTON5"] = "MULTIACTIONBAR2BUTTON1",
				["."] = "NAMEPLATES",
				["1"] = "ACTIONBUTTON1",
				["0"] = "ACTIONBUTTON10",
				["3"] = "ACTIONBUTTON3",
				["2"] = "ACTIONBUTTON2",
				["5"] = "ACTIONBUTTON5",
				["F4"] = "TARGETPARTYMEMBER3",
				["7"] = "ACTIONBUTTON7",
				["6"] = "ACTIONBUTTON6",
				["SHIFT-SPACE"] = "TOGGLEWORLDSTATESCORES",
				["CTRL-F5"] = "SHAPESHIFTBUTTON5",
				["SHIFT-F1"] = "TARGETPET",
				["/"] = "OPENCHATSLASH",
				["="] = "ACTIONBUTTON12",
				["D"] = "TURNRIGHT",
				["F8"] = "TOGGLEBAG1",
				["CTRL-3"] = "BONUSACTIONBUTTON3",
				["A"] = "TURNLEFT",
				["SHIFT-PAGEDOWN"] = "CHATBOTTOM",
				["C"] = "MULTIACTIONBAR4BUTTON12",
				["B"] = "TOGGLEBACKPACK",
				["E"] = "STRAFERIGHT",
				["CTRL-1"] = "BONUSACTIONBUTTON1",
				["G"] = "MULTIACTIONBAR1BUTTON1",
				["SHIFT-F4"] = "TARGETPARTYPET3",
				["CTRL-F6"] = "SHAPESHIFTBUTTON6",
				["H"] = "TOGGLECHARACTER4",
				["K"] = "TOGGLECHARACTER1",
				["CTRL-F1"] = "SHAPESHIFTBUTTON1",
				["M"] = "TOGGLEWORLDMAP",
				["CTRL-SHIFT-TAB"] = "TARGETPREVIOUSFRIEND",
				["O"] = "TOGGLESOCIAL",
				["N"] = "TOGGLETALENTS",
				["Q"] = "STRAFELEFT",
				["P"] = "TOGGLESPELLBOOK",
				["S"] = "MOVEBACKWARD",
				["R"] = "MULTIACTIONBAR2BUTTON2",
				["U"] = "TOGGLECHARACTER2",
				["CTRL-TAB"] = "TARGETNEARESTFRIEND",
				["W"] = "MOVEFORWARD",
				["V"] = "ACTIONBUTTON9",
				["ESCAPE"] = "TOGGLEGAMEMENU",
				["X"] = "ACTIONBUTTON11",
				["F1"] = "TARGETSELF",
				["Z"] = "TOGGLESHEATH",
				["SHIFT-F2"] = "TARGETPARTYPET1",
				["PAGEUP"] = "CHATPAGEUP",
				["SHIFT-I"] = "TOGGLEPETBOOK",
				["DELETE"] = "PITCHDOWN",
			},
			["CharacterSpecificTab1"] = {
				["numSlot"] = 42,
			},
			["CharacterSpecificTab3"] = {
				["numSlot"] = 42,
			},
		}, -- [1]
		["profileForTalentGroup"] = {
			1, -- [1]
		},
	},
	["PROFILE_Sulfuron_Wotlkprep"] = {
		{
			["CharacterSpecificTab2"] = {
				["numSlot"] = 42,
			},
			["AllKeyBindings"] = {
				["CTRL-P"] = "TOGGLEFPS",
				["SHIFT-C"] = "MULTIACTIONBAR3BUTTON12",
				["CTRL--"] = "MASTERVOLUMEDOWN",
				["SHIFT-I"] = "TOGGLEPETBOOK",
				["CTRL-F3"] = "SHAPESHIFTBUTTON3",
				["CTRL-4"] = "BONUSACTIONBUTTON4",
				["SHIFT-G"] = "CLICK BindPadMacro:WILL",
				["SHIFT-P"] = "TOGGLECHARACTER3",
				["SHIFT-TAB"] = "TARGETPREVIOUSENEMY",
				["CTRL-6"] = "BONUSACTIONBUTTON6",
				["BUTTON4"] = "CLICK BindPadMacro:Mass Dispel",
				["CTRL-0"] = "BONUSACTIONBUTTON10",
				["SHIFT-F3"] = "TARGETPARTYPET2",
				["CTRL-C"] = "CLICK BindPadMacro:Dispel Party2",
				["F2"] = "TARGETPARTYMEMBER1",
				["SHIFT-X"] = "CLICK BindPadMacro:Shackle Gargoyle",
				["DOWN"] = "CAMERAZOOMOUT",
				["W"] = "MOVEFORWARD",
				["CTRL-2"] = "BONUSACTIONBUTTON2",
				["LEFT"] = "TURNLEFT",
				["INSERT"] = "PITCHUP",
				["CTRL-PAGEUP"] = "COMBATLOGPAGEUP",
				["CTRL-="] = "MASTERVOLUMEUP",
				["F12"] = "TOGGLEBACKPACK",
				["CTRL-PAGEDOWN"] = "COMBATLOGPAGEDOWN",
				["CAPSLOCK"] = "MULTIACTIONBAR1BUTTON2",
				["ENTER"] = "OPENCHAT",
				["CTRL-M"] = "TOGGLEMUSIC",
				["F11"] = "TOGGLEBAG4",
				["TAB"] = "TARGETNEARESTENEMY",
				["T"] = "ATTACKTARGET",
				["F1"] = "TARGETSELF",
				["F3"] = "TARGETPARTYMEMBER2",
				["SHIFT-B"] = "OPENALLBAGS",
				["NUMLOCK"] = "SITORSTAND",
				["CTRL-9"] = "BONUSACTIONBUTTON9",
				["NUMPADPLUS"] = "MINIMAPZOOMIN",
				["F10"] = "TOGGLEBAG3",
				["CTRL-F2"] = "SHAPESHIFTBUTTON2",
				["UP"] = "CAMERAZOOMIN",
				["Q"] = "STRAFELEFT",
				["PRINTSCREEN"] = "SCREENSHOT",
				["NUMPADMINUS"] = "MINIMAPZOOMOUT",
				["L"] = "TOGGLEQUESTLOG",
				["MOUSEWHEELDOWN"] = "MULTIACTIONBAR1BUTTON6",
				["END"] = "NEXTVIEW",
				["SHIFT-MOUSEWHEELDOWN"] = "CLICK BindPadMacro:CancelDispers2",
				["D"] = "TURNRIGHT",
				["F5"] = "TARGETPARTYMEMBER4",
				["CTRL-8"] = "BONUSACTIONBUTTON8",
				["CTRL-F9"] = "SHAPESHIFTBUTTON9",
				["SHIFT-T"] = "PETATTACK",
				["CTRL-F8"] = "SHAPESHIFTBUTTON8",
				["F"] = "MULTIACTIONBAR1BUTTON7",
				["SHIFT-SPACE"] = "TOGGLEWORLDSTATESCORES",
				["SPACE"] = "JUMP",
				["CTRL-1"] = "BONUSACTIONBUTTON1",
				["CTRL-R"] = "CLICK BindPadMacro:Fear Ward Pet",
				["B"] = "TOGGLEBACKPACK",
				["F9"] = "TOGGLEBAG2",
				["SHIFT-BUTTON4"] = "CLICK BindPadMacro:MC target",
				["MOUSEWHEELUP"] = "CLICK BindPadMacro:Holy Nova",
				["SHIFT-F1"] = "TARGETPET",
				["SHIFT-R"] = "CLICK BindPadMacro:Dispel Pet",
				["ALT-MOUSEWHEELDOWN"] = "CLICK BindPadMacro:CancelDispersion",
				["HOME"] = "STARTAUTORUN",
				["CTRL-F10"] = "SHAPESHIFTBUTTON10",
				["/"] = "OPENCHATSLASH",
				["CTRL-F1"] = "SHAPESHIFTBUTTON1",
				["CTRL-5"] = "BONUSACTIONBUTTON5",
				["5"] = "ACTIONBUTTON5",
				["ALT-Z"] = "TOGGLEUI",
				["PAGEDOWN"] = "CHATPAGEDOWN",
				["SHIFT-F5"] = "TARGETPARTYPET4",
				["BUTTON5"] = "MULTIACTIONBAR2BUTTON1",
				["."] = "NAMEPLATES",
				["1"] = "ACTIONBUTTON1",
				["0"] = "ACTIONBUTTON10",
				["3"] = "ACTIONBUTTON3",
				["2"] = "ACTIONBUTTON2",
				["CTRL-F4"] = "SHAPESHIFTBUTTON4",
				["4"] = "ACTIONBUTTON4",
				["7"] = "ACTIONBUTTON7",
				["6"] = "ACTIONBUTTON6",
				["F4"] = "TARGETPARTYMEMBER3",
				["8"] = "ACTIONBUTTON8",
				["CTRL-F5"] = "SHAPESHIFTBUTTON5",
				["RIGHT"] = "TURNRIGHT",
				["="] = "ACTIONBUTTON12",
				["NUMPADDIVIDE"] = "TOGGLERUN",
				["F8"] = "TOGGLEBAG1",
				["CTRL-3"] = "BONUSACTIONBUTTON3",
				["A"] = "TURNLEFT",
				["SHIFT-PAGEDOWN"] = "CHATBOTTOM",
				["C"] = "MULTIACTIONBAR4BUTTON12",
				["CTRL-F7"] = "SHAPESHIFTBUTTON7",
				["E"] = "STRAFERIGHT",
				["SHIFT-M"] = "TOGGLEBATTLEFIELDMINIMAP",
				["G"] = "MULTIACTIONBAR1BUTTON1",
				["SHIFT-F4"] = "TARGETPARTYPET3",
				["CTRL-F6"] = "SHAPESHIFTBUTTON6",
				["H"] = "TOGGLECHARACTER4",
				["K"] = "TOGGLECHARACTER1",
				["CTRL-BUTTON4"] = "CLICK BindPadMacro:MC focus",
				["M"] = "TOGGLEWORLDMAP",
				["CTRL-SHIFT-TAB"] = "TARGETPREVIOUSFRIEND",
				["O"] = "TOGGLESOCIAL",
				["N"] = "TOGGLETALENTS",
				["BUTTON3"] = "MOVEANDSTEER",
				["P"] = "TOGGLESPELLBOOK",
				["S"] = "MOVEBACKWARD",
				["R"] = "MULTIACTIONBAR2BUTTON2",
				["U"] = "TOGGLECHARACTER2",
				["CTRL-TAB"] = "TARGETNEARESTFRIEND",
				["CTRL-7"] = "BONUSACTIONBUTTON7",
				["V"] = "ACTIONBUTTON9",
				["ESCAPE"] = "TOGGLEGAMEMENU",
				["X"] = "ACTIONBUTTON11",
				["CTRL-SHIFT-PAGEDOWN"] = "COMBATLOGBOTTOM",
				["Z"] = "TOGGLESHEATH",
				["SHIFT-F2"] = "TARGETPARTYPET1",
				["PAGEUP"] = "CHATPAGEUP",
				["SHIFT-V"] = "CLICK BindPadMacro:Focus Silence",
				["DELETE"] = "PITCHDOWN",
			},
			["CharacterSpecificTab1"] = {
				["numSlot"] = 42,
			},
			["CharacterSpecificTab3"] = {
				["numSlot"] = 42,
			},
		}, -- [1]
		["profileForTalentGroup"] = {
			1, -- [1]
		},
	},
	["PROFILE_Classic Beta PvP_Evolve"] = {
		{
			["CharacterSpecificTab2"] = {
				["numSlot"] = 42,
			},
			["AllKeyBindings"] = {
				["CTRL-P"] = "TOGGLEFPS",
				["SHIFT-C"] = "MULTIACTIONBAR3BUTTON12",
				["SHIFT-P"] = "TOGGLECHARACTER3",
				["SHIFT-F3"] = "TARGETPARTYPET2",
				["CTRL-F3"] = "SHAPESHIFTBUTTON3",
				["CTRL-4"] = "BONUSACTIONBUTTON4",
				["DOWN"] = "CAMERAZOOMOUT",
				["CTRL--"] = "MASTERVOLUMEDOWN",
				["BUTTON4"] = "CLICK BindPadMacro:Mass Dispel",
				["F6"] = "Open Bug Report",
				["CTRL-6"] = "BONUSACTIONBUTTON6",
				["CTRL-0"] = "BONUSACTIONBUTTON10",
				["SHIFT-I"] = "TOGGLEPETBOOK",
				["CTRL-C"] = "CLICK BindPadMacro:Dispel Party2",
				["F2"] = "TARGETPARTYMEMBER1",
				["SHIFT-X"] = "CLICK BindPadMacro:Shackle Gargoyle",
				["SHIFT-TAB"] = "TARGETPREVIOUSENEMY",
				["CTRL-7"] = "BONUSACTIONBUTTON7",
				["CTRL-2"] = "BONUSACTIONBUTTON2",
				["LEFT"] = "TURNLEFT",
				["CTRL-SHIFT-PAGEDOWN"] = "COMBATLOGBOTTOM",
				["CTRL-PAGEUP"] = "COMBATLOGPAGEUP",
				["SHIFT-B"] = "OPENALLBAGS",
				["F12"] = "TOGGLEBACKPACK",
				["CTRL-PAGEDOWN"] = "COMBATLOGPAGEDOWN",
				["CAPSLOCK"] = "MULTIACTIONBAR1BUTTON2",
				["CTRL-M"] = "TOGGLEMUSIC",
				["W"] = "MOVEFORWARD",
				["F11"] = "TOGGLEBAG4",
				["T"] = "ATTACKTARGET",
				["CTRL-F2"] = "SHAPESHIFTBUTTON2",
				["F3"] = "TARGETPARTYMEMBER2",
				["S"] = "MOVEBACKWARD",
				["F1"] = "TARGETSELF",
				["NUMLOCK"] = "SITORSTAND",
				["CTRL-9"] = "BONUSACTIONBUTTON9",
				["Q"] = "STRAFELEFT",
				["F10"] = "TOGGLEBAG3",
				["ENTER"] = "OPENCHAT",
				["UP"] = "CAMERAZOOMIN",
				["NUMPADPLUS"] = "MINIMAPZOOMIN",
				["F"] = "MULTIACTIONBAR1BUTTON7",
				["L"] = "TOGGLEQUESTLOG",
				["PRINTSCREEN"] = "SCREENSHOT",
				["SHIFT-MOUSEWHEELDOWN"] = "CLICK BindPadMacro:CancelDispers2",
				["END"] = "NEXTVIEW",
				["D"] = "TURNRIGHT",
				["MOUSEWHEELDOWN"] = "MULTIACTIONBAR1BUTTON6",
				["F5"] = "TARGETPARTYMEMBER4",
				["B"] = "TOGGLEBACKPACK",
				["CTRL-F9"] = "SHAPESHIFTBUTTON9",
				["SHIFT-T"] = "PETATTACK",
				["SHIFT-F4"] = "TARGETPARTYPET3",
				["CTRL-F8"] = "SHAPESHIFTBUTTON8",
				["SHIFT-M"] = "TOGGLEBATTLEFIELDMINIMAP",
				["SPACE"] = "JUMP",
				["SHIFT-F1"] = "TARGETPET",
				["CTRL-F7"] = "SHAPESHIFTBUTTON7",
				["CTRL-R"] = "CLICK BindPadMacro:Fear Ward Pet",
				["F9"] = "TOGGLEBAG2",
				["SHIFT-BUTTON4"] = "CLICK BindPadMacro:MC target",
				["SHIFT-PAGEDOWN"] = "CHATBOTTOM",
				["SHIFT-R"] = "CLICK BindPadMacro:Dispel Pet",
				["/"] = "OPENCHATSLASH",
				["CTRL-F1"] = "SHAPESHIFTBUTTON1",
				["HOME"] = "STARTAUTORUN",
				["CTRL-F10"] = "SHAPESHIFTBUTTON10",
				["SHIFT-F5"] = "TARGETPARTYPET4",
				["CTRL-5"] = "BONUSACTIONBUTTON5",
				["1"] = "ACTIONBUTTON1",
				["RIGHT"] = "TURNRIGHT",
				["ALT-Z"] = "TOGGLEUI",
				["PAGEDOWN"] = "CHATPAGEDOWN",
				["ALT-MOUSEWHEELDOWN"] = "CLICK BindPadMacro:CancelDispersion",
				["BUTTON5"] = "MULTIACTIONBAR2BUTTON1",
				["NUMPADDIVIDE"] = "TOGGLERUN",
				["MOUSEWHEELUP"] = "CLICK BindPadMacro:Holy Nova",
				["0"] = "ACTIONBUTTON10",
				["3"] = "ACTIONBUTTON3",
				["2"] = "ACTIONBUTTON2",
				["CTRL-F4"] = "SHAPESHIFTBUTTON4",
				["F4"] = "TARGETPARTYMEMBER3",
				["7"] = "ACTIONBUTTON7",
				["6"] = "ACTIONBUTTON6",
				["CTRL-F5"] = "SHAPESHIFTBUTTON5",
				["8"] = "ACTIONBUTTON8",
				["4"] = "ACTIONBUTTON4",
				["5"] = "ACTIONBUTTON5",
				["="] = "ACTIONBUTTON12",
				["."] = "NAMEPLATES",
				["F8"] = "TOGGLEBAG1",
				["CTRL-3"] = "BONUSACTIONBUTTON3",
				["A"] = "TURNLEFT",
				["SHIFT-SPACE"] = "TOGGLEWORLDSTATESCORES",
				["C"] = "MULTIACTIONBAR4BUTTON12",
				["CTRL-8"] = "BONUSACTIONBUTTON8",
				["E"] = "STRAFERIGHT",
				["CTRL-1"] = "BONUSACTIONBUTTON1",
				["G"] = "MULTIACTIONBAR1BUTTON1",
				["NUMPADMINUS"] = "MINIMAPZOOMOUT",
				["CTRL-F6"] = "SHAPESHIFTBUTTON6",
				["H"] = "TOGGLECHARACTER4",
				["K"] = "TOGGLECHARACTER1",
				["CTRL-BUTTON4"] = "CLICK BindPadMacro:MC focus",
				["M"] = "TOGGLEWORLDMAP",
				["CTRL-SHIFT-TAB"] = "TARGETPREVIOUSFRIEND",
				["O"] = "TOGGLESOCIAL",
				["N"] = "TOGGLETALENTS",
				["BUTTON3"] = "MOVEANDSTEER",
				["P"] = "TOGGLESPELLBOOK",
				["CTRL-="] = "MASTERVOLUMEUP",
				["R"] = "MULTIACTIONBAR2BUTTON2",
				["U"] = "TOGGLECHARACTER2",
				["CTRL-TAB"] = "TARGETNEARESTFRIEND",
				["TAB"] = "TARGETNEARESTENEMY",
				["V"] = "ACTIONBUTTON9",
				["ESCAPE"] = "TOGGLEGAMEMENU",
				["X"] = "ACTIONBUTTON11",
				["INSERT"] = "PITCHUP",
				["Z"] = "TOGGLESHEATH",
				["SHIFT-F2"] = "TARGETPARTYPET1",
				["PAGEUP"] = "CHATPAGEUP",
				["SHIFT-V"] = "CLICK BindPadMacro:Focus Silence",
				["DELETE"] = "PITCHDOWN",
			},
			["CharacterSpecificTab1"] = {
				["numSlot"] = 42,
			},
			["CharacterSpecificTab3"] = {
				["numSlot"] = 42,
			},
		}, -- [1]
		["profileForTalentGroup"] = {
			1, -- [1]
		},
	},
}
