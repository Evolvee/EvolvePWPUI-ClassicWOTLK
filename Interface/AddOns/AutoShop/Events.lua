local addonName = ...

----------------------------------------------------------------------------------------------------
-- helper functions
----------------------------------------------------------------------------------------------------
-- return a money string like "2g10s83c" or "4s49c"
local function FormatMoney(amount)
	if amount and amount > 0 then
		local gold = floor(amount/100/100)
		local silver = floor((amount/100)%100)
		local copper = amount%100
		local text = ""
		if gold > 0   then text = " |cffffd700"..gold.."g|r"           end
		if silver > 0 then text = text .. " |cffc7c7cf"..silver.."s|r" end
		if copper > 0 then text = text .. " |cffeda55f"..copper.."c|r" end
		return text
	end
	return " none"
end

-- return the reputation value of a reaction string like "exalted"
-- the strings can be partial, so anything from "e" to "exalted" counts as exalted
local function ReactionValue(reaction)
	if reaction then
		reaction = "^" .. reaction
		local string_match = string.match
		if string_match("exalted", reaction) then return 8 end
		if string_match("revered", reaction) then return 7 end
		if string_match("honored", reaction) then return 6 end
		if string_match("honoured", reaction) then return 6 end
		if string_match("friendly", reaction) then return 5 end
		if string_match("neutral", reaction) then return 4 end
	end
	return 4
end

-- return the lowest durability percentage of worn equipment
local function LowestDurabilityPercent()
	local current, maximum, percent, lowest
	for i=1,18 do
		current, maximum = GetInventoryItemDurability(i)
		if current then
			percent = current / maximum * 100
			if not lowest or percent < lowest then
				lowest = percent
			end
		end
	end
	return lowest
end

----------------------------------------------------------------------------------------------------
-- tooltip scanning
----------------------------------------------------------------------------------------------------
-- create a scanning tooltip and references to the first few lines
local tooltipFrame = CreateFrame("GameTooltip", "AutoShopTooltip", UIParent)
local tooltipLeftLines = {}
local tooltipRightLines = {}
for i=1,5 do
	local left, right = tooltipFrame:CreateFontString(), tooltipFrame:CreateFontString()
	left:SetFontObject(GameFontNormal)
	right:SetFontObject(GameFontNormal)
	tooltipFrame:AddFontStrings(left, right)
	tooltipLeftLines[i], tooltipRightLines[i] = left, right
end
tooltipFrame:SetOwner(UIParent, "ANCHOR_NONE")

-- return true if the item is both soulbound and unusable
local function IsBoundAndUnusable(bag, slot)
	tooltipFrame:ClearLines()
	tooltipFrame:SetBagItem(bag, slot)
	local r, g, b, found
	-- red text can be on the right side on lines 3 or 4, and on the left side on line 3 to 5. If
	-- on the left, 3-4 is "Main Hand/Off Hand" text and 5 is a class restriction. Check if unusable
	-- first since those will be much rarer than soulbound items.
	for i=3,5 do
		-- the values are like 0.99999779462814. Also, make sure text is actually there for the right
		-- side or else these will be old values.

		-- check right side first - if GetText() returns nil then the values are old
		if i < 5 then
			r, g, b = tooltipRightLines[i]:GetTextColor()
			-- the values are like 0.99999779462814 instead of the nice 1, 0, 0 I was expecting
			if b < .13 and g < .13 and r > .99 and tooltipRightLines[i]:GetText() then
				found = true
			end
		end
		-- now check left side if needed - it will always have text so no need to check for old values
		if not found then
			r, g, b = tooltipLeftLines[i]:GetTextColor()
			if b < .13 and g < .13 and r > .99 then
				found = true
			end
		end
		if found then
			-- The soulbound line can be from line 2 to the line before the red text from above
			for j=2,i-1 do
				if tooltipLeftLines[j]:GetText() == ITEM_SOULBOUND then
					return true
				end
			end
			return nil
		end
	end
	return nil
end

-- do some final checking to see if the item should really be sold
local tooltipMoneyName -- the item name of the last tooltip that had a money line added to it
local tooltipMoneyAmount
tooltipFrame:SetScript("OnTooltipAddMoney", function(self, amount)
	tooltipMoneyName = tooltipLeftLines[1]:GetText()
	tooltipMoneyAmount = amount
end)

local function FinalSellChecks(bag, slot, name)
	-- it must have a sale price
	tooltipFrame:ClearLines()
	tooltipFrame:SetBagItem(bag, slot) -- OnTooltipAddMoney will be used now if it has money
	if tooltipMoneyName ~= name then
		return nil
	end
	-- don't sell tabard or shirts unless they're actually on the sell list
	local text
	for i=2,4 do
		text = tooltipLeftLines[i]:GetText()
		if (text == INVTYPE_TABARD or text == INVTYPE_BODY) and not AutoShopSave.autoSellList[name:lower()] then
			return nil
		end
	end
	return true
end

----------------------------------------------------------------------------------------------------
-- handling events / autoselling / autobuying
----------------------------------------------------------------------------------------------------
-- white quality armor and weapons used in professions that shouldn't be sold automatically
local professionItemIds = {
	[6219]  = true, -- Arclight Spanner
	[5956]  = true, -- Blacksmith Hammer
	[2901]  = true, -- Mining Pick
	[7005]  = true, -- Skinning Knife
	[6256]  = true, -- Fishing Pole
	[6365]  = true, -- Strong Fishing Pole
	[12225] = true, -- Blump Family Fishing Pole
	[6367]  = true, -- Big Iron Fishing Pole
	[6366]  = true, -- Darkwood Fishing Pole
	[7996]  = true, -- Lucky Fishing Hat - not sure this white version exists, but just in case
}

--------------------------------------------------
-- Autosell things
--------------------------------------------------
-- it seems selling a lot at once will cause some items to be ignored, so keep trying to sell every
-- second until all those item slots are locked (being sold) or gone
local autoSellFrame = CreateFrame("frame")
autoSellFrame:Hide() -- so OnUpdate won't be used
autoSellFrame.sellList = nil -- {{id, bag, slot}, ...}

function autoSellFrame:AutoSell()
	local sold_something
	local id, _, locked
	for _,v in ipairs(self.sellList) do
		_, _, locked, _, _, _, _, _, _, id = GetContainerItemInfo(v[2], v[3])
		if id then
			if not locked and id == v[1] then
				sold_something = true
				UseContainerItem(v[2], v[3])
			end
		end
	end
	return sold_something
end

autoSellFrame:SetScript("OnShow", function(self) self.totalElapsed = 1 end)
autoSellFrame:SetScript("OnHide", function(self) self.sellList = nil end)
autoSellFrame:SetScript("OnUpdate", function(self, elapsed)
	self.totalElapsed = self.totalElapsed + elapsed
	if self.totalElapsed > 1 then
		self.totalElapsed = 0
		if not MerchantFrame:IsVisible() or not UnitExists("npc") or not self:AutoSell() then
			self:Hide()
		end
	end
end)

-- build a list of all the items to sell and optionally show a report about it
function autoSellFrame:BuildSellList()
	self.sellList = {}

	local sell_gray            = AutoShopSave.autoSellGray
	local sell_white           = AutoShopSave.autoSellWhite
	local sell_green_ilvl      = AutoShopSave.autoSellGreen  and AutoShopSave.autoSellGreenIlvl  or 0
	local sell_blue_ilvl       = AutoShopSave.autoSellBlue   and AutoShopSave.autoSellBlueIlvl   or 0
	local sell_purple_ilvl     = AutoShopSave.autoSellPurple and AutoShopSave.autoSellPurpleIlvl or 0
	local sell_green_unusable  = sell_green_ilvl  > 0 and AutoShopSave.autoSellGreenUnusable
	local sell_blue_unusable   = sell_blue_ilvl   > 0 and AutoShopSave.autoSellBlueUnusable
	local sell_purple_unusable = sell_purple_ilvl > 0 and AutoShopSave.autoSellPurpleUnusable
	local sell_recipe          = AutoShopSave.autoSellRecipe

	local link, id
	local sold_list = {} -- to save how many of each item is sold instead of spamming multiple lines
	local profit = 0
	local name, lower_name

	local personal_sell_list = AutoShopSave.autoSellList
	local shared_sell_list = AutoShopSharedSave.autoSellList

	local personal_exclude_list = AutoShopSave.excludeList
	local shared_exclude_list = AutoShopSharedSave.excludeList

	for bag=0,4 do
		for slot=1,GetContainerNumSlots(bag) do
			link = GetContainerItemLink(bag, slot)
			if link then
				id = tonumber(link:match(":(%d+)"))
				name = link:match("%[(.-)]") -- GetItemInfo() doesn't always show full names
				lower_name = name:lower()
				local _, _, quality, ilvl, _, itype = GetItemInfo(id)
				if (sell_gray and quality == 0)
				or ((itype == "Armor" or itype == "Weapon")
					and ((quality == 1 and sell_white and not professionItemIds[id])
						or (quality == 2 and (ilvl < sell_green_ilvl  or (sell_green_unusable  and IsBoundAndUnusable(bag, slot))))
						or (quality == 3 and (ilvl < sell_blue_ilvl   or (sell_blue_unusable   and IsBoundAndUnusable(bag, slot))))
						or (quality == 4 and (ilvl < sell_purple_ilvl or (sell_purple_unusable and IsBoundAndUnusable(bag, slot))))))
				or (sell_recipe and itype == "Recipe" and IsBoundAndUnusable(bag, slot))
				or shared_sell_list[lower_name]
				or personal_sell_list[lower_name] then
					if not personal_exclude_list[lower_name] and not shared_exclude_list[lower_name]
					and (not ItemProtectorOrDestroyerSave or not ItemProtectorOrDestroyerSave.protectedItems[lower_name])
					and FinalSellChecks(bag, slot, name) then
						local _, amount = GetContainerItemInfo(bag, slot)
						sold_list[link] = sold_list[link] and sold_list[link] + amount or amount
						profit = profit + tooltipMoneyAmount
						autoSellFrame.sellList[#autoSellFrame.sellList+1] = {id, bag, slot}
					end
				end
			end
		end
	end
	if next(sold_list) ~= nil then
		autoSellFrame:Show()
		if AutoShopSave.showSellActivity then
			for link,amount in pairs(sold_list) do
				DEFAULT_CHAT_FRAME:AddMessage("Selling " .. (amount > 1 and (amount .. " ") or " ") .. link)
			end
			if profit > 0 then
				DEFAULT_CHAT_FRAME:AddMessage("Selling profit:" .. FormatMoney(profit))
			end
		end
	end
end

--------------------------------------------------
-- Autobuy things
--------------------------------------------------
local autoBuyFrame = CreateFrame("frame")
autoBuyFrame:Hide() -- so OnUpdate won't run

function autoBuyFrame:AutoBuy()
	local personal_list = AutoShopSave.autoBuyList
	local shared_list = AutoShopSharedSave.autoBuyList
	if next(personal_list) == nil and next(shared_list) == nil then
		return
	end

	-- if information isn't known about an item yet, try again soon
	local rechecking
	for i=1,GetMerchantNumItems() do
		if not (GetMerchantItemInfo(i)) then
			rechecking = true
		end
	end
	if rechecking then
		autoBuyFrame:Show() -- enables OnUpdate to recheck items soon
		return
	end

	local npc_reaction = UnitReaction("npc", "player") or 4
	local buy_reaction = AutoShopSave.reactionBuy or 4

	local reaction
	for i=1,GetMerchantNumItems() do
		local list_item
		local name, _, _, quantity, available, _, _, currency = GetMerchantItemInfo(i)
		if name then
			name = name:lower()
			list_item = personal_list[name] or shared_list[name]
		end

		if list_item then
			reaction = list_item.reaction and ReactionValue(list_item.reaction) or buy_reaction
			if npc_reaction >= reaction or available ~= -1 then
				if not currency then
					quantity = 1
				end

				if list_item.wanted and available ~= 0 then
					local buy
					-- if wanted is 0 then get as many as possible if it's a limited item
					if list_item.wanted == 0 then
						buy = available ~= -1 and available * quantity or 0
					else
						buy = list_item.wanted - GetItemCount(name, AutoShopSave.countBankItems)
						if quantity > 1 then
							buy = AutoShopSave.noMoreThanWanted and math.floor(buy / quantity) or math.ceil(buy / quantity)
						end
					end

					if available ~= -1 and buy > available then
						buy = available
					end
					if buy > 0 then
						if AutoShopSave.showBuyActivity then
							local amount = buy * quantity
							DEFAULT_CHAT_FRAME:AddMessage("Buying " .. (amount > 1 and (amount .. " ") or " ") .. GetMerchantItemLink(i))
						end
						-- buy in stacks/batches in case there's not enough inventory space for all of it
						local stack_buy = quantity > 1 and quantity or GetMerchantItemMaxStack(i)
						while buy > 0 do
							if quantity > 1 then
								BuyMerchantItem(i, quantity)
								buy = buy - 1
							else
								local amount = buy > stack_buy and stack_buy or buy
								BuyMerchantItem(i, amount)
								buy = buy - amount
							end
						end
					end
				end
			end
		end
	end
end

-- unknown items won't have any information when the merchant window is first opened - this will
-- check AutoBuy() again after waiting a bit for the data to download
autoBuyFrame:SetScript("OnShow", function(self) self.recheckTime = 0 end)
autoBuyFrame:SetScript("OnUpdate", function(self, elapsed)
	self.recheckTime = self.recheckTime + elapsed
	if self.recheckTime >= 0.5 then
		self:Hide() -- stops OnUpdate
		if MerchantFrame:IsVisible() and UnitExists("npc") then
			self:AutoBuy()
		end
	end
end)

--------------------------------------------------
-- handle events
--------------------------------------------------
local eventFrame = CreateFrame("frame")
eventFrame:Hide()

eventFrame:SetScript("OnEvent", function(self, event, arg1)
	-- react to the shop window opening
	if event == "MERCHANT_SHOW" then
		autoSellFrame:BuildSellList()
		autoBuyFrame:AutoBuy()

		if CanMerchantRepair() and AutoShopSave.autoRepair then
			local cost, can_repair = GetRepairAllCost()
			local npc_reaction = UnitReaction("npc", "player") or 4
			local minimum_reaction = AutoShopSave.reactionRepair or 4
			local _, instance = IsInInstance()
			if AutoShopSave.instanceRepair and (instance == "raid" or instance == "party") then
				if LowestDurabilityPercent() < AutoShopSave.instanceRepairDurability then
					minimum_reaction = 0
				end
			end
			if can_repair and npc_reaction >= minimum_reaction then
				if AutoShopSave.autoRepairGuild and IsInGuild() then
					RepairAllItems(1)
				end
				if GetMoney() >= cost then
					RepairAllItems()
				end
				DEFAULT_CHAT_FRAME:AddMessage("Repair cost:" .. FormatMoney(cost))
			end
		end
		return
	end

	-- react to the shop window closing
	if event == "MERCHANT_CLOSED" then
		autoBuyFrame:Hide()
		autoSellFrame:Hide()
	end

	-- set up default settings if needed
	if event == "ADDON_LOADED" and arg1 == addonName then
		eventFrame:UnregisterEvent(event)

		-- per-character settings
		if AutoShopSave                          == nil then AutoShopSave                          = {}    end
		if AutoShopSave.autoSellGray             == nil then AutoShopSave.autoSellGray             = true  end
		if AutoShopSave.autoSellWhite            == nil then AutoShopSave.autoSellWhite            = false end
		if AutoShopSave.autoSellGreen            == nil then AutoShopSave.autoSellGreen            = false end
		if AutoShopSave.autoSellGreenIlvl        == nil then AutoShopSave.autoSellGreenIlvl        = 1     end
		if AutoShopSave.autoSellGreenUnusable    == nil then AutoShopSave.autoSellGreenUnusable    = false end
		if AutoShopSave.autoSellBlue             == nil then AutoShopSave.autoSellBlue             = false end
		if AutoShopSave.autoSellBlueIlvl         == nil then AutoShopSave.autoSellBlueIlvl         = 1     end
		if AutoShopSave.autoSellBlueUnusable     == nil then AutoShopSave.autoSellBlueUnusable     = false end
		if AutoShopSave.autoSellPurple           == nil then AutoShopSave.autoSellPurple           = false end
		if AutoShopSave.autoSellPurpleIlvl       == nil then AutoShopSave.autoSellPurpleIlvl       = 1     end
		if AutoShopSave.autoSellPurpleUnusable   == nil then AutoShopSave.autoSellPurpleUnusable   = false end
		if AutoShopSave.autoSellRecipe           == nil then AutoShopSave.autoSellRecipe           = false end
	-- if AutoShopSave.hardWantedLimit          == nil then AutoShopSave.hardWantedLimit          = false end
		if AutoShopSave.showBuyActivity          == nil then AutoShopSave.showBuyActivity          = true  end
		if AutoShopSave.showSellActivity         == nil then AutoShopSave.showSellActivity         = true  end
		if AutoShopSave.autoRepair               == nil then AutoShopSave.autoRepair               = false end
		if AutoShopSave.autoRepairGuild          == nil then AutoShopSave.autoRepairGuild          = false end
		if AutoShopSave.countBankItems           == nil then AutoShopSave.countBankItems           = true  end
		if AutoShopSave.autoSellList             == nil then AutoShopSave.autoSellList             = {}    end
		if AutoShopSave.excludeList              == nil then AutoShopSave.excludeList              = {}    end
		if AutoShopSave.autoBuyList              == nil then AutoShopSave.autoBuyList              = {}    end
		if AutoShopSave.reactionRepair           == nil then AutoShopSave.reactionRepair           = 4     end
		if AutoShopSave.reactionBuy              == nil then AutoShopSave.reactionBuy              = 4     end
		if AutoShopSave.instanceRepair           == nil then AutoShopSave.instanceRepair           = false end
		if AutoShopSave.instanceRepairDurability == nil then AutoShopSave.instanceRepairDurability = 80    end
		if AutoShopSave.noMoreThanWanted         == nil then AutoShopSave.noMoreThanWanted         = true  end

		-- convert buy list items to a table to be able to support minimum reputation reactions
		if AutoShopSave.saveVersion == nil then
			AutoShopSave.saveVersion = 1
			for k,v in pairs(AutoShopSave.autoBuyList) do
				AutoShopSave.autoBuyList[k] = {wanted = v}
			end
		end

		-- shared settings
		if AutoShopSharedSave              == nil then AutoShopSharedSave              = {} end
		if AutoShopSharedSave.autoSellList == nil then AutoShopSharedSave.autoSellList = {} end
		if AutoShopSharedSave.excludeList  == nil then AutoShopSharedSave.excludeList  = {} end
		if AutoShopSharedSave.autoBuyList  == nil then AutoShopSharedSave.autoBuyList  = {} end

		return
	end
end)
eventFrame:RegisterEvent("ADDON_LOADED")    -- temporary - to set up default settings if needed
eventFrame:RegisterEvent("MERCHANT_SHOW")   -- merchant window has opened
eventFrame:RegisterEvent("MERCHANT_CLOSED") -- merchant window has closed
