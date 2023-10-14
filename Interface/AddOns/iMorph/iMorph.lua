IMorphInfo = {} 
iMorphCall = nil

local oldSendChatMessage = SendChatMessage
SendChatMessage = function(msg, ...)
	if msg:len() < 4 or msg:sub(1, 1) ~= '.' or not msg:sub(2, 2):match('%a') then
		oldSendChatMessage(msg, ...)
		return
	end
	iMorphChatHandler(msg, ...)
end

local oldBNSendWhisper = BNSendWhisper
BNSendWhisper = function(bnetAccountID, message)
	if message:len() < 4 or message:sub(1, 1) ~= '.' or not message:sub(2, 2):match('%a') then
		oldBNSendWhisper(bnetAccountID, message)
		return
	end
	iMorphChatHandler(message)
end

function iMorphChatHandler(msg, ...)
	local command, arg = strsplit(' ', msg:sub(2), 2)

	if command == 'help' then
		print('|cFFDC143CiMorph|r commands:')
		print('  .site')
		print('  .discord')
		print('  .reset')
		print('  .unload')
		print('  .disablesm')
		print('  .enablesm')
		print('  .gender')
		print('  .scale |cFFCCCCCC<0.5-3.0>|r')
		print('  .scalepet |cFFCCCCCCscale>|r')
		print('  .morph |cFFCCCCCC<display id>|r')
		print('  .morphpet |cFFCCCCCC<display id>|r')
		print('  .race |cFFCCCCCC<1-77> <form 0-1>|r')
		print('  .mount |cFFCCCCCC<display id> | <1 ground, 2 flying>|r')
		print('  .item |cFFCCCCCC<1-19> <item id> <version> <secondary appearance>|r')
		print('  .itemset |cFFCCCCCC<itemset id> <version>|r')
		print('  .enchant |cFFCCCCCC<1-2> <enchant id>|r')
		print('  .title |cFFCCCCCC<0-128>|r')
		print('  .medal |cFFCCCCCC<0-8>|r')
		print('  .customization |cFFCCCCCC<name> <id>|r')
		print('  .shapeshift |cFFCCCCCC<form id> <display id>|r')
		print('  .spell |cFFCCCCCC<spell id> <spell id>|r')
		print('  .spellvisual |cFFCCCCCC<spell visual id> <spell visual id>|r')
		print('  .spellvisualkit |cFFCCCCCC<spell visual kit id> <spell visual kit id>|r')
		print('  .visualeffect |cFFCCCCCC<spell effect id> <spell effect id>|r')		
		print('  .loadingscreen |cFFCCCCCC<loading screen id>|r')
		print('  .light |cFFCCCCCC<light id>|r')
		print('  .itemswap |cFFCCCCCC<item id> <item id>|r')
		print('  .weather |cFFCCCCCC<weatherId> <0.0-1.0>|r')
		print('  .time |cFFCCCCCC<hours> <minutes>|r')
		print('  .customtitle |cFFCCCCCC<title text> <0-1>|r')
		print('  .playeffect |cFFCCCCCC<effect id> <positioner id>|r')
		print('  .exp')
		print('  .console')
		return
	end

	if command == 'exp' then
		iMorphMiddleware('exp')
		return
	end

	if command == 'unload' then
		iMorphMiddleware('unload')
		return
	end

	if command == 'site' then
		iMorphMiddleware('site')
		return
	end

	if command == 'discord' then
		iMorphMiddleware('discord')
		return
	end

	if command == 'health' then
		iMorphMiddleware('health')
		return
	end

	if command == 'debug' then
		iMorphMiddleware('debug')
		return
	end

	if command == 'reset' then
		ResetIds()
		return
	end

	if command == 'disablesm' then
		SetFlag(2, 0)
		return
	end

	if command == 'enablesm' then
		SetFlag(2, 1)
		return
	end

	if command == 'gender' then
		SetGender()
		return
	end
	
	if command == 'console' then
		SetConsole(arg)
		return
	end

	if command == 'menu' then
		SetMenu(arg)
		return
	end

	if command == 'helmshow' then
		HelmShow()
		return
	end

	if command == 'scale' and tonumber(arg) ~= nil then
		SetScale(arg)
		return
	end

	if command == 'scalepet' and tonumber(arg) ~= nil then
		SetScalePet(arg)
		return
	end

	if command == 'morph' and tonumber(arg) ~= nil then
		Morph(arg)
		return
	end

	if command == 'morphpet' and tonumber(arg) ~= nil then
		MorphPet(arg)
		return
	end

	if command == 'class' and tonumber(arg) ~= nil then
		SetClass(arg)
		return
	end

	if command == 'npc' and (tonumber(arg) ~= nil or arg ~= nil) then
		MorphNpc(arg)
		return
	end

	if command == 'medal' and tonumber(arg) ~= nil then
		SetMedal(arg)
		return
	end

	if iMorphContains(iMorphCustomization(), command) and tonumber(arg) ~= nil then
		SetCustomization(command, arg)
		return
	end

	if command == 'loadingscreen' and tonumber(arg) ~= nil then
		SetLoadingScreen(arg)
		return
	end

	if command == 'light' and tonumber(arg) ~= nil then
		SetLightParam(arg)
		return
	end

	if command == 'customization' and arg == nil then
		Customizations()
		return
	end

	if arg then
		local arg1, arg2, arg3, arg4 = strsplit(' ', arg, 4)

		if command == 'customization' or command == 'cust' then
			Customizations(arg1, arg2, arg3)
			return
		end

		if command == 'race' and tonumber(arg1) ~= nil then
			SetRace(arg1, arg2, arg3)
			return
		end

		if command == 'item' and tonumber(arg1) ~= nil then
			SetItem(arg1, arg2, arg3, arg4)
			return
		end

		if command == 'itemset' and tonumber(arg1) ~= nil then
			SetItemSet(tonumber(arg1), tonumber(arg2))
			return
		end

		if command == 'transmog' and tonumber(arg1) ~= nil then
			SetTransmogSet(tonumber(arg1), tonumber(arg2))
			return
		end
		
		if command == 'outfit' and tonumber(arg1) ~= nil then
			SetOutfit(tonumber(arg1), tonumber(arg2))
			return
		end

		if command == 'mount' then
			SetMount(tonumber(arg1), tonumber(arg2))
			return
		end

		if command == 'log' then
			SetLogging(arg1, arg2)
			return
		end

		if command == 'enchant' and tonumber(arg1) ~= nil and tonumber(arg2) ~= nil then
			if tonumber(arg1) == 1 then
				SetEnchant(16, arg2)
			elseif tonumber(arg1) == 2 then
				SetEnchant(17, arg2)
			end
			return
		end

		if command == 'shapeshift' and tonumber(arg1) ~= nil and tonumber(arg2) ~= nil then
			SetShapeshiftForm(arg1, arg2)
			return
		end

		if command == 'weather' and tonumber(arg1) ~= nil and tonumber(arg2) ~= nil then
			SetWeather(arg1, arg2)
			return
		end

		if command == 'time' and tonumber(arg1) ~= nil and tonumber(arg2) ~= nil then
			SetTime(arg1, arg2)
			return
		end

		if command == 'spell' and tonumber(arg1) ~= nil and tonumber(arg2) ~= nil then
			SetSpell(arg1, arg2)
			return
		end

		if command == 'spellvisual' and tonumber(arg1) ~= nil and tonumber(arg2) ~= nil then
			SetSpellVisual(arg1, arg2)
			return
		end

		if command == 'spellvisualkit' and tonumber(arg1) ~= nil and tonumber(arg2) ~= nil then
			SetSpellVisualKit(arg1, arg2)
			return
		end

		if command == 'visualeffect' and tonumber(arg1) ~= nil and tonumber(arg2) ~= nil then
			SetVisualEffect(arg1, arg2)
			return
		end

		if command == 'spellvisualkitmodelattach' then
			SetSpellvisualkitmodelattach(arg1, arg2)
			return
		end

		if command == 'itemswap' and tonumber(arg1) ~= nil and tonumber(arg2) ~= nil then
			SetItemSwap(arg1, arg2)
			return
		end		
		
		if command == 'playeffect' and tonumber(arg1) ~= nil then
			PlayEffect(arg1, arg2, arg3)
			return
		end
		
		if command == 'playkit' and tonumber(arg1) ~= nil then
			PlayEffectKit(arg1, arg2, arg3)
			return
		end

		if command == 'playpetkit' and tonumber(arg1) ~= nil then
			PlayPetEffectKit(arg1, arg2, nil)
			return
		end

		if command == 'title' and tonumber(arg1) ~= nil then
			SetTitle(arg1, arg2)
			return
		end

		if command == 'customtitle' and tostring(arg1) ~= nil then
			SetCustomTitleEvent(arg1, arg2)
			return
		end

	end
end

function iMorphSetup()
	if iMorphCall == nil then
		iMorphCall = _G[string.char(67, 108, 111, 115, 101, 84, 114, 97, 100, 101)]
	end
end

function iMorphMiddleware(command, ...)
	iMorphSetup()
	iMorphCall(command, ...)
end

function iMorphCustomization()
	return {'aquaticform','armbands','armorcolor','armorstyle','armspikes','armupgrade','beard','bearform','blindfold','blindfolds','bodymarkings','bodypaint','bodypaintcolor','bodypattern','bodyscales','bodysize','bodytattoo','bracelets','breastplate','breechcloth','brow','catform','cheek','cheekbone','chest','chestspikes','chin','chindecoration','circlet','crest','eargauge','earringcolor','earrings','ears','eyebrows','eyecolor','eyes','eyesight','eyestyle','face','facefeatures','facejewelry','facemarkings','facepaint','facepaintcolor','facepattern','faceshape','facetattoo','facialhair','feather','features','feet','flightform','flower','foremane','furcolor','grime','hair','haircolor','hairdecoration','hairhighlights','hairstyle','headdress','helm','horncolor','horndecoration','hornjewelry','hornmarkings','horns','hornstyle','hornwraps','hunched','jawdecoration','jawfeatures','jawjewelry','jewelrycolor','legspikes','legupgrade','lowerarms','luminoushands','makeup','markings','markingscolor','modification','moonkinform','mustache','necklace','nose','nosepiercing','nosering','paint','paintcolor','pattern','piercing','piercings','primarycolor','rune','scalecolor','scalemarkings','scalepattern','scars','secondarycolor','secondarycolorstrength','secondaryhaircolor ','secondaryskincolor','shoulders','sideburns','skincolor','skintype','snout','tail','taildecoration','tailridge','tattoo','tattoocolor','tattoostyle','tendrils','tentacles','thighs','throat','travelform','tusks','underclothesbottom','underclothescolor','underclothestop','upperarms','upright','vinecolor','vines','waist','warpaint','warpaintcolor','wingdecoration'}
end

function iMorphContains(table, val)
    for _index, value in ipairs(table) do
        if value == val then
         return true
      end
   end
   return false
end

function SetShapeshiftForm(...) iMorphMiddleware('shapeshift', ...) end
function SetEnchant(...) iMorphMiddleware('enchant', ...) end
function SetItem(...) iMorphMiddleware('item', ...) end
function ResetIds() iMorphMiddleware('reset') end
function SetFlag(...) iMorphMiddleware('flag', ...) end
function SetWeather(...) iMorphMiddleware('weather', ...) end
function SetTime(...) iMorphMiddleware('time', ...) end
function SetConsole(...) iMorphMiddleware('console', ...) end
function SetScale(...) iMorphMiddleware('scale', ...) end
function SetScalePet(...) iMorphMiddleware('scalepet', ...) end
function Morph(...) iMorphMiddleware('morph', ...) end
function MorphPet(...) iMorphMiddleware('morphpet', ...) end
function MorphNpc(...) iMorphMiddleware('npc', ...) end
function SetGender() iMorphMiddleware('gender') end
function Customizations(...) iMorphMiddleware('customization', ...) end
function SetRace(...) iMorphMiddleware('race', ...) end
function SetLogging(...) iMorphMiddleware('logging', ...) end
function SetItemSet(...) iMorphMiddleware('itemset', ...) end
function SetTransmogSet(...) iMorphMiddleware('transmog', ...) end
function SetOutfit(...) iMorphMiddleware('outfit', ...) end
function SetMount(...) iMorphMiddleware('mount', ...) end
function SetTitle(...) iMorphMiddleware('title', ...) end
function SetCustomTitleEvent(...) iMorphMiddleware('customtitle', ...) end
function SetClass(...) iMorphMiddleware('class', ...) end
function SetMedal(...) iMorphMiddleware('medal', ...) end
function SetCustomization(...) iMorphMiddleware('setcustomization', ...) end
function SetSpell(...) iMorphMiddleware('spell', ...) end
function SetSpellVisual(...) iMorphMiddleware('spellvisual', ...) end
function SetSpellVisualKit(...) iMorphMiddleware('spellvisualkit', ...) end
function SetSpellvisualkitmodelattach(...) iMorphMiddleware('spellvisualkitmodelattach', ...) end
function SetVisualEffect(...) iMorphMiddleware('visualeffect', ...) end
function SetLoadingScreen(...) iMorphMiddleware('loadingscreen', ...) end
function SetLightParam(...) iMorphMiddleware('light', ...) end
function PlayEffect(...) iMorphMiddleware('playeffect', ...) end
function PlayEffectKit(...) iMorphMiddleware('playeffectkit', ...) end
function PlayPetEffectKit(...) iMorphMiddleware('playpeteffectkit', ...) end
function SetItemSwap(...) iMorphMiddleware('itemswap', ...) end
function SetMenu(...) iMorphMiddleware('menu', ...) end
function HelmShow() iMorphMiddleware('helmshow') end