local LibDD = LibStub:GetLibrary("LibUIDropDownMenu-4.0")

----------------------------------------------------------------------------------------------------
-- helper functions
----------------------------------------------------------------------------------------------------
-- clear focus from any input field
local function ClearFocus()
	if GetCurrentKeyBoardFocus() then GetCurrentKeyBoardFocus():ClearFocus() end
end

----------------------------------------------------------------------------------------------------
-- Settings window
----------------------------------------------------------------------------------------------------
local window = nil -- created on first use

local function CreateGUI()
	if window then
		return
	end

	window = CreateFrame("Frame", "AutoShopFrame", UIParent, "BackdropTemplate")
	table.insert(UISpecialFrames, window:GetName()) -- make it closable with escape key
	window:SetFrameStrata("HIGH")
	window:SetBackdrop({
		bgFile="Interface/Tooltips/UI-Tooltip-Background",
		edgeFile="Interface/DialogFrame/UI-DialogBox-Border",
		tile=1, tileSize=32, edgeSize=32,
		insets={left=11, right=12, top=12, bottom=11}
	})
	window:SetBackdropColor(0,0,0,1)
	window:SetPoint("CENTER")
	window:SetSize(880, 540)
	window:SetMovable(true)
	window:EnableMouse(true)
	window:RegisterForDrag("LeftButton")
	window:SetScript("OnDragStart", window.StartMoving)
	window:SetScript("OnDragStop", window.StopMovingOrSizing)
	window:SetScript("OnMouseDown", function(self, button)
		if button == "LeftButton" and not self.isMoving then
			self:StartMoving()
			self.isMoving = true
		end
	end)
	window:SetScript("OnMouseUp", function(self, button)
		if button == "LeftButton" and self.isMoving then
			self:StopMovingOrSizing()
			self.isMoving = false
		end
	end)
	window:SetScript("OnHide", function(self)
		if self.isMoving then
			self:StopMovingOrSizing()
			self.isMoving = false
		end
	end)
	window:Hide()

	--------------------------------------------------
	-- header title
	--------------------------------------------------
	local textureHeader = window:CreateTexture(nil, "ARTWORK")
	textureHeader:SetTexture("Interface\\DialogFrame\\UI-DialogBox-Header")
	textureHeader:SetWidth(315)
	textureHeader:SetHeight(64)
	textureHeader:SetPoint("TOP", 0, 12)
	local textHeader = window:CreateFontString(nil, "OVERLAY", "GameFontNormal")
	textHeader:SetPoint("TOP", textureHeader, "TOP", 0, -14)
	textHeader:SetText("AutoShop 1.2.1")

	--------------------------------------------------
	-- checkbox options
	--------------------------------------------------
	-- create a checkbox and fix the hit detection on it
	local function CreateCheckbox(name, text, tooltip)
		local frame = CreateFrame("CheckButton", "AutoshopCheckbox"..name, window, "OptionsCheckButtonTemplate")
		_G[frame:GetName().."Text"]:SetText(text)
		local width = _G[frame:GetName().."Text"]:GetStringWidth()
		frame:SetHitRectInsets(0, -width, 4, 4)
		frame.tooltipText = tooltip
		return frame
	end

	-- Autosell gray items
	local checkboxAutoSellGray = CreateCheckbox("AutoSellGray", "Sell gray quality items.")
	checkboxAutoSellGray:SetPoint("TOPLEFT", window, "TOPLEFT", 12, -36)
	checkboxAutoSellGray:SetScript("OnClick", function(this)
		ClearFocus()
		AutoShopSave.autoSellGray = this:GetChecked() or false
	end)

	-- Autosell white equipment
	local checkboxAutoSellWhite = CreateCheckbox("AutoSellWhite", "Sell white equipment except profession tools.",
		"Only sells armor and weapons (not shirts, tabards, and tools like blacksmith hammers and fishing poles).")
	checkboxAutoSellWhite:SetPoint("TOPLEFT", checkboxAutoSellGray, "BOTTOMLEFT", 0, 6)
	checkboxAutoSellWhite:SetScript("OnClick", function(this)
		ClearFocus()
		AutoShopSave.autoSellWhite = this:GetChecked() or false
	end)

	-- Autosell green/blue/purple equipment
	local function CreateQualityOption(color, widget_above_this)
		-- checkbox to enable the option
		local checkbox1 = CreateCheckbox("AutoSell"..color, "Sell " .. color:lower() .. " equipment below ilvl")
		checkbox1:SetPoint("TOPLEFT", widget_above_this, "BOTTOMLEFT", 0, 6)
		checkbox1:SetScript("OnClick", function(this)
			ClearFocus()
			AutoShopSave["autoSell"..color] = this:GetChecked() or false
		end)

		-- input to set the ilvl
		local input = CreateFrame("EditBox", "AutoshopInputAutoSell"..color, window, "InputBoxTemplate")
		input:SetWidth(28)
		input:SetHeight(16)
		input:SetNumeric(true)
		input:SetMaxLetters(3)
		input:SetPoint("LEFT", _G[checkbox1:GetName().."Text"], "RIGHT", 8, 0)
		input:SetAutoFocus(false)
		input:SetScript("OnEnterPressed", function(this) this:ClearFocus() end)
		input:SetScript("OnEditFocusLost", function(this)
			AutoShopSave["autoSell"..color.."Ilvl"] = tonumber(this:GetText()) or 0
			input:SetText(AutoShopSave["autoSell"..color.."Ilvl"])
		end)

		-- checkbox to also sell soulbound/unusable equipment no matter what the ilvl is
		local checkbox2 = CreateFrame("CheckButton", "AutoshopCheckboxUnusable"..color, window, "OptionsCheckButtonTemplate")
		checkbox2:SetPoint("LEFT", input, "RIGHT", 0, 0)
		_G[checkbox2:GetName().."Text"]:SetText("or unusable & bound.")
		checkbox2.tooltipText = "It only counts as unusable from incompatible wear types (like plate or wand) or class restrictions."
		checkbox2:SetScript("OnClick", function(this)
			ClearFocus()
			AutoShopSave["autoSell"..color.."Unusable"] = this:GetChecked() or false
		end)

		return checkbox1, input, checkbox2
	end
	local checkboxAutoSellGreen,  inputGreenIlvl,  checkboxAutoSellGreenUnusable  = CreateQualityOption("Green",  checkboxAutoSellWhite)
	local checkboxAutoSellBlue,   inputBlueIlvl,   checkboxAutoSellBlueUnusable   = CreateQualityOption("Blue",   checkboxAutoSellGreen)
	local checkboxAutoSellPurple, inputPurpleIlvl, checkboxAutoSellPurpleUnusable = CreateQualityOption("Purple", checkboxAutoSellBlue)
	checkboxAutoSellGreen.tooltipText  = "Only sells armor and weapons (not shirts and tabards)."
	checkboxAutoSellBlue.tooltipText   = "Only sells armor and weapons (not shirts and tabards)."
	checkboxAutoSellPurple.tooltipText = "Only sells armor and weapons (not shirts and tabards)."

	-- Autosell recipes
	local checkboxAutoSellRecipe = CreateCheckbox("AutoSellRecipe", "Sell recipes that are both unusable & bound.",
		"|cffff0000Warning: this includes recipes you don't have a high enough skill for, so you may want to wait until maxed to enable this.|r\n\nThis also seems less useful on Classic now that most BoP recipes can't be looted again!")
	checkboxAutoSellRecipe:SetPoint("TOPLEFT", checkboxAutoSellPurple, "BOTTOMLEFT", 0, 6)
	checkboxAutoSellRecipe:SetScript("OnClick", function(this)
		ClearFocus()
		AutoShopSave.autoSellRecipe = this:GetChecked() or false
	end)

	-- show buy activity
	local checkboxShowBuyActivity = CreateCheckbox("ShowBuyActivity", "Show chat window messages about buying items.")
	checkboxShowBuyActivity:SetPoint("TOPLEFT", checkboxAutoSellGray, "TOPLEFT", window:GetWidth()/2, 0)
	checkboxShowBuyActivity:SetScript("OnClick", function(this)
		ClearFocus()
		AutoShopSave.showBuyActivity = this:GetChecked() or false
	end)

	-- show sell activity
	local checkboxShowSellActivity = CreateCheckbox("ShowSellActivity", "Show chat window messages about selling items.")
	checkboxShowSellActivity:SetPoint("TOPLEFT", checkboxShowBuyActivity, "BOTTOMLEFT", 0, 6)
	checkboxShowSellActivity:SetScript("OnClick", function(this)
		ClearFocus()
		AutoShopSave.showSellActivity = this:GetChecked() or false
	end)

	-- never buy more than the wanted amount
	local checkboxNoMoreThanWanted = CreateCheckbox("LessThanStack", "Never buy more than the wanted amount (special batches)",
		"Some items cost special currency and come in batches (like 3x Cenarion Mana Salves). If checked, if you wanted 5 more of those then only 1 batch will be bought. If not checked, 2 batches would be bought even though it will get an extra one. Normal money items like most food/drinks aren't affected by this setting and can always be bought in an exact amount.")
	checkboxNoMoreThanWanted:SetPoint("TOPLEFT", checkboxShowSellActivity, "BOTTOMLEFT", 0, 6)
	checkboxNoMoreThanWanted:SetScript("OnClick", function(this)
		ClearFocus()
		AutoShopSave.noMoreThanWanted = this:GetChecked() or false
	end)

	-- count bank items
	local checkboxCountBankItems = CreateCheckbox("CountBankItems", "Count items in the bank when restocking.",
		"If checked, items in the bank will count as you having them when figuring out how many more to buy.")
	checkboxCountBankItems:SetPoint("TOPLEFT", checkboxNoMoreThanWanted, "BOTTOMLEFT", 0, 6)
	checkboxCountBankItems:SetScript("OnClick", function(this)
		ClearFocus()
		AutoShopSave.countBankItems = this:GetChecked() or false
	end)

	-- repair items
	local checkboxAutoRepair = CreateCheckbox("AutoRepair", "Repair automatically")
	checkboxAutoRepair:SetPoint("TOPLEFT", checkboxCountBankItems, "BOTTOMLEFT", 0, 6)
	checkboxAutoRepair:SetScript("OnClick", function(this)
		ClearFocus()
		AutoShopSave.autoRepair = this:GetChecked() or false
	end)

	local checkboxAutoRepairGuild = CreateCheckbox("AutoRepairGuild", "and try using guild money.")
	checkboxAutoRepairGuild:SetPoint("LEFT", _G[checkboxAutoRepair:GetName().."Text"], "RIGHT", 0, 0)
	checkboxAutoRepairGuild:SetScript("OnClick", function(this)
		ClearFocus()
		AutoShopSave.autoRepairGuild = this:GetChecked() or false
	end)

	-- repair items in instances
	local checkboxInstanceRepair = CreateCheckbox("InstanceRepair", "Ignore repair reputation in instances if below durability:",
		"If checked, the minimum reputation requirement will be ignored if you're inside an instance with equipment durability below the set percentage. This is to allow using things like repair bots or Karazhan merchants while still using a minimum reputation for other places.")
	checkboxInstanceRepair:SetPoint("TOPLEFT", checkboxAutoRepair, "BOTTOMLEFT", 0, 6)
	checkboxInstanceRepair:SetScript("OnClick", function(this)
		ClearFocus()
		AutoShopSave.instanceRepair = this:GetChecked() or false
	end)

	local inputInstanceRepair = CreateFrame("EditBox", "AutoshopInputInstanceRepair", window, "InputBoxTemplate")
	inputInstanceRepair:SetWidth(28)
	inputInstanceRepair:SetHeight(16)
	inputInstanceRepair:SetNumeric(true)
	inputInstanceRepair:SetMaxLetters(3)
	inputInstanceRepair:SetPoint("LEFT", _G[checkboxInstanceRepair:GetName().."Text"], "RIGHT", 8, 0)
	inputInstanceRepair:SetAutoFocus(false)
	inputInstanceRepair:SetScript("OnEnterPressed", function(this) this:ClearFocus() end)
	inputInstanceRepair:SetScript("OnEditFocusLost", function(this)
		local durability = tonumber(this:GetText()) or 0
		if durability > 100 then
			durability = 100
		elseif durability < 0 then
			durability = 0
		end
		AutoShopSave.instanceRepairDurability = durability
		inputInstanceRepair:SetText(durability)
	end)

	-- minimum repair reputation
	local textRepairReputation = window:CreateFontString(nil, "ARTWORK", "GameFontNormal")
	textRepairReputation:SetPoint("TOPLEFT", checkboxInstanceRepair, "BOTTOMLEFT", 0, -6)
	textRepairReputation:SetText("Min. repair reputation:")

	local dropdownRepairReputation = LibDD:Create_UIDropDownMenu("AutoShopDropdownRepairReputation", window)
	dropdownRepairReputation:SetPoint("TOPLEFT", textRepairReputation, "BOTTOMLEFT", -18, -3)
	LibDD:UIDropDownMenu_SetWidth(dropdownRepairReputation, 120)

	-- minimum buy reputation
	local textBuyReputation = window:CreateFontString(nil, "ARTWORK", "GameFontNormal")
	textBuyReputation:SetPoint("LEFT", textRepairReputation, "LEFT", 170, 0)
	textBuyReputation:SetText("Min. buy reputation:")

	local dropdownBuyReputation = LibDD:Create_UIDropDownMenu("AutoShopDropdownBuyReputation", window)
	dropdownBuyReputation:SetPoint("TOPLEFT", textBuyReputation, "BOTTOMLEFT", -18, -3)
	LibDD:UIDropDownMenu_SetWidth(dropdownBuyReputation, 120)

	-- dropdowns
	local dropdownReputations = {"Neutral", "Friendly", "Honored", "Revered", "Exalted"}

	local function DropdownRepair_OnClick(item)
		ClearFocus()
		LibDD:UIDropDownMenu_SetSelectedValue(dropdownRepairReputation, item.value)
		AutoShopSave.reactionRepair = item.value
	end

	local function DropdownBuy_OnClick(item)
		ClearFocus()
		LibDD:UIDropDownMenu_SetSelectedValue(dropdownBuyReputation, item.value)
		AutoShopSave.reactionBuy = item.value
	end

	local dropdownMenuItem = {}
	local function DropdownReputation_Initialize(dropdown)
		local func
		if dropdown == dropdownRepairReputation then
			func = DropdownRepair_OnClick
		elseif dropdown == dropdownBuyReputation then
			func = DropdownBuy_OnClick
		end

		for i=1,#dropdownReputations do
			dropdownMenuItem.func = func
			dropdownMenuItem.checked = nil
			dropdownMenuItem.value = i + 3
			dropdownMenuItem.text = dropdownReputations[i]
			LibDD:UIDropDownMenu_AddButton(dropdownMenuItem)
		end
	end

	LibDD:UIDropDownMenu_Initialize(dropdownRepairReputation, DropdownReputation_Initialize)
	LibDD:UIDropDownMenu_Initialize(dropdownBuyReputation, DropdownReputation_Initialize)
	LibDD:UIDropDownMenu_SetSelectedValue(dropdownRepairReputation, 4)
	LibDD:UIDropDownMenu_SetSelectedValue(dropdownBuyReputation, 4)

	--------------------------------------------------
	-- editboxes
	--------------------------------------------------
	local function CreateEditBox(name, position, title, showPersonalByDefault)
		local container = CreateFrame("Frame", "AutoshopEdit"..name, window, "BackdropTemplate")
		local input = CreateFrame("EditBox", "AutoshopEdit"..name.."Input", container)
		local scroll = CreateFrame("ScrollFrame", "AutoshopEdit"..name.."Scroll", container, "UIPanelScrollFrameTemplate")

		-- header title
		local header = window:CreateFontString(nil, "ARTWORK", "GameFontNormal")
		if position == 1 then
			header:SetPoint("LEFT", window, "LEFT", 16, 0)
		elseif position == 2 then
			header:SetPoint("LEFT", window, "LEFT", (window:GetWidth() / 2) - (125+8), 0)
		elseif position == 3 then
			header:SetPoint("RIGHT", window, "RIGHT", -(250+8), 0)
		end
		header:SetPoint("TOP", dropdownRepairReputation, "BOTTOM", 0, -20)
		header:SetText(title)

		-- editbox container
		container:SetPoint("TOPLEFT", header, "BOTTOMLEFT", 0, -2)
		container:SetPoint("BOTTOM", window, "BOTTOM", 0, 12)
		container:SetWidth(250)
		container:SetBackdrop({
			bgFile = "Interface/Tooltips/UI-Tooltip-Background",
			edgeFile = "Interface/DialogFrame/UI-DialogBox-Border",
			tile=1, tileSize=32, edgeSize=16,
			insets={left=5, right=5, top=5, bottom=5}})
		container:SetBackdropColor(0,0,0,1)

		-- shared tab
		local tabShared = CreateFrame("Button", "AutoShopTabShared"..name, window, "TabButtonTemplate")
		tabShared:SetSize(150, 25)
		tabShared:SetPoint("BOTTOMRIGHT", container, "TOPRIGHT", -4, -3)
		tabShared:SetFrameStrata("DIALOG")
		_G[tabShared:GetName().."Text"]:SetText("Shared")
		PanelTemplates_TabResize(tabShared, 0)
		_G[tabShared:GetName().."HighlightTexture"]:SetWidth(tabShared:GetTextWidth() + 31)

		-- personal tab
		local tabPersonal = CreateFrame("Button", "AutoShopTabPersonal"..name, window, "TabButtonTemplate")
		tabPersonal:SetSize(150, 25)
		tabPersonal:SetPoint("RIGHT", tabShared, "LEFT", 0, 0)
		tabPersonal:SetFrameStrata("DIALOG")
		_G[tabPersonal:GetName().."Text"]:SetText("Personal")
		PanelTemplates_TabResize(tabPersonal, 0)
		_G[tabPersonal:GetName().."HighlightTexture"]:SetWidth(tabPersonal:GetTextWidth() + 31)

		-- input part
		input.tabPersonal = tabPersonal
		input.tabShared = tabShared
		input.showingPersonal = showPersonalByDefault
		input:SetMultiLine(true)
		input:SetAutoFocus(false)
		input:EnableMouse(true)
		input:SetFont("Fonts/ARIALN.ttf", 14)
		input:SetWidth(container:GetWidth()-20)
		input:SetHeight(container:GetHeight()-8)
		input:SetScript("OnEscapePressed", function() input:ClearFocus() end)

		-- scroll part
		scroll:SetPoint("TOPLEFT", container, "TOPLEFT", 8, -8)
		scroll:SetPoint("BOTTOMRIGHT", container, "BOTTOMRIGHT", -6, 8)
		scroll:EnableMouse(true)
		scroll:SetScript("OnMouseDown", function() input:SetFocus() end)
		scroll:SetScrollChild(input)

		input:SetScript("OnTextChanged", function(self) ScrollingEdit_OnTextChanged(self, self:GetParent()) end)
		input:SetScript("OnUpdate", function(self, elapsed) ScrollingEdit_OnUpdate(self, elapsed, self:GetParent()) end)
		input:SetScript("OnCursorChanged", ScrollingEdit_OnCursorChanged)

		-- allow items to be dragged into the lists
		local function InputReceiveItem(input)
			local cursor_type, _, cursor_link = GetCursorInfo()
			if cursor_type == "item" and input:IsVisible() then
				local name = cursor_link:match("%[(.+)]"):lower()
				local original = input:GetText()
				if original == "" or original:sub(-1) == "\n" then
					input:SetText(original .. name)
				else
					input:SetText(original .. "\n" .. name)
				end
				input:SetFocus()
				CloseDropDownMenus()
				ClearCursor()
			end
		end

		local function SetReceivable(widget, input)
			widget:SetScript("OnReceiveDrag", function() InputReceiveItem(input) end)
			widget.OnMouseDownOriginal = widget:GetScript("OnMouseDown")
			widget:SetScript("OnMouseDown", function(self, button)
				if button == "LeftButton" then InputReceiveItem(input) end
				if self.OnMouseDownOriginal then
					self:OnMouseDownOriginal(button)
				end
			end)
		end

		SetReceivable(scroll, input) -- has to affect the scroll part too to cover all areas
		SetReceivable(input, input)
		return input
	end

	local inputSell    = CreateEditBox("Sell", 1, "Sell:", false)
	local inputExclude = CreateEditBox("Exclude", 2, "Sell exclusions:", false)
	local inputBuy     = CreateEditBox("Buy", 3, "Buy:", true)

	-- saving the lists
	inputSell:SetScript("OnEditFocusLost", function(this)
		local list = {}
		for line in string.gmatch(this:GetText(), "[^\r\n]+") do
			list[line:trim():lower()] = true
		end
		if this.showingPersonal then
			AutoShopSave.autoSellList = list
		else
			AutoShopSharedSave.autoSellList = list
		end
	end)

	inputExclude:SetScript("OnEditFocusLost", function(this)
		local list = {}
		for line in string.gmatch(this:GetText(), "[^\r\n]+") do
			list[line:trim():lower()] = true
		end
		if this.showingPersonal then
			AutoShopSave.excludeList = list
		else
			AutoShopSharedSave.excludeList = list
		end
	end)

	inputBuy:SetScript("OnEditFocusLost", function(this)
		local list = {}
		local string_match = string.match
		for line in string.gmatch(this:GetText(), "[^\r\n]+") do
			local amount, name, reaction = line:match("^%s*(%d*)%s*([^/]+)%s*/?%s*(.*)")
			local item = {}
			item.wanted = amount == "" and 0 or tonumber(amount)
			reaction = reaction:trim():lower()
			if reaction ~= "" then
				item.reaction = reaction
			end
			list[name:trim():lower()] = item
		end
		if this.showingPersonal then
			AutoShopSave.autoBuyList = list
		else
			AutoShopSharedSave.autoBuyList = list
		end
	end)

--------------------------------------------------
	-- help button
	--------------------------------------------------
	local buttonHelp = CreateFrame("Button", "AutoShopButtonHelp", window)
	buttonHelp:SetSize(16, 16)
	buttonHelp:SetNormalTexture("Interface/FriendsFrame/InformationIcon")
	buttonHelp:SetPoint("TOPLEFT", window, "TOPLEFT", 14, -14)
	buttonHelp:SetScript("OnEnter", function()
		GameTooltip:SetOwner(window, "ANCHOR_NONE")
		GameTooltip:SetPoint("BOTTOM", window, "TOP", 0, 0)
		GameTooltip:SetText(
[[|cffffff00Notes:|r
|cffffffffWrite each item name on a separate line - they're not case sensitive.
You can drag and drop items onto the editboxes.
Lists are saved when the editbox loses focus (so pressing escape/closing the window/etc).|r

|cffffff00Buying:|r
|cffffffffAdd a number to restock to that amount: |r|cffcccc0060 wild quillvine|r
|cffffffffTo buy all of a limited quantity item, just use the name without a wanted amount.|r

|cffffff00Minimum reputation:|r
|cffffffffLimited quantity items don't care about minimum reputation settings.
You can override this setting per item, like: |r|cffcccc0020 noggenfogger elixir / neutral|r
|cffffffffYou can shorten reputation names by any amount - even just "n" counts as neutral.|r]])
		GameTooltip:Show()
	end)
	buttonHelp:SetScript("OnLeave", function()
		GameTooltip:Hide()
	end)

	--------------------------------------------------
	-- close button
	--------------------------------------------------
	local buttonClose = CreateFrame("Button", "AutoshopButtonClose", window, "UIPanelCloseButton")
	buttonClose:SetPoint("TOPRIGHT", window, "TOPRIGHT", -8, -8)
	buttonClose:SetScript("OnClick", function(this)
		ClearFocus()
		window:Hide()
	end)

	--------------------------------------------------
	-- clicking tabs
	--------------------------------------------------
	local function SellTab_OnClick(isPersonal)
		ClearFocus()

		local list
		if isPersonal then
			PanelTemplates_SelectTab(inputSell.tabPersonal);
			PanelTemplates_DeselectTab(inputSell.tabShared);
			list = AutoShopSave.autoSellList
		else
			PanelTemplates_SelectTab(inputSell.tabShared);
			PanelTemplates_DeselectTab(inputSell.tabPersonal);
			list = AutoShopSharedSave.autoSellList
		end

		local lines = {}
		for name in pairs(list) do
			lines[#lines+1] = name
		end
		table.sort(lines)
		inputSell:SetText(table.concat(lines, "\n"))
		inputSell.showingPersonal = isPersonal
	end

	local function ExcludeTab_OnClick(isPersonal)
		ClearFocus()

		local list
		if isPersonal then
			PanelTemplates_SelectTab(inputExclude.tabPersonal);
			PanelTemplates_DeselectTab(inputExclude.tabShared);
			list = AutoShopSave.excludeList
		else
			PanelTemplates_SelectTab(inputExclude.tabShared);
			PanelTemplates_DeselectTab(inputExclude.tabPersonal);
			list = AutoShopSharedSave.excludeList
		end

		local lines = {}
		for name in pairs(list) do
			lines[#lines+1] = name
		end
		table.sort(lines)
		inputExclude:SetText(table.concat(lines, "\n"))
		inputExclude.showingPersonal = isPersonal
	end

	local function BuyTab_OnClick(isPersonal)
		ClearFocus()

		local list
		if isPersonal then
			PanelTemplates_SelectTab(inputBuy.tabPersonal);
			PanelTemplates_DeselectTab(inputBuy.tabShared);
			list = AutoShopSave.autoBuyList
		else
			PanelTemplates_SelectTab(inputBuy.tabShared);
			PanelTemplates_DeselectTab(inputBuy.tabPersonal);
			list = AutoShopSharedSave.autoBuyList
		end

		local lines = {}
		local line
		for name,item in pairs(list) do
			if item.wanted and item.wanted > 0 then
				line = item.wanted .. " " .. name
			else
				line = name
			end
			if item.reaction then
				line = line .. " / " .. item.reaction
			end
			lines[#lines+1] = line
		end
		table.sort(list, function(text1, text2) return text1:match("^%d*%s*(.+)") < text2:match("^%d*%s*(.+)") end)
		table.sort(lines)
		inputBuy:SetText(table.concat(lines, "\n"))
		inputBuy.showingPersonal = isPersonal
	end

	inputSell.tabPersonal:SetScript("OnClick", function() SellTab_OnClick(true)  end)
	inputSell.tabShared:SetScript("OnClick",   function() SellTab_OnClick(false) end)

	inputExclude.tabPersonal:SetScript("OnClick", function() ExcludeTab_OnClick(true)  end)
	inputExclude.tabShared:SetScript("OnClick",   function() ExcludeTab_OnClick(false) end)

	inputBuy.tabPersonal:SetScript("OnClick", function() BuyTab_OnClick(true)  end)
	inputBuy.tabShared:SetScript("OnClick",   function() BuyTab_OnClick(false) end)

	--------------------------------------------------
	-- showing the window
	--------------------------------------------------
	window:SetScript("OnShow", function()
		checkboxAutoSellGray:SetChecked(AutoShopSave.autoSellGray)
		checkboxAutoSellWhite:SetChecked(AutoShopSave.autoSellWhite)
		checkboxAutoSellGreen:SetChecked(AutoShopSave.autoSellGreen)
		checkboxAutoSellGreenUnusable:SetChecked(AutoShopSave.autoSellGreenUnusable)
		checkboxAutoSellBlue:SetChecked(AutoShopSave.autoSellBlue)
		checkboxAutoSellBlueUnusable:SetChecked(AutoShopSave.autoSellBlueUnusable)
		checkboxAutoSellPurple:SetChecked(AutoShopSave.autoSellPurple)
		checkboxAutoSellPurpleUnusable:SetChecked(AutoShopSave.autoSellPurpleUnusable)
		checkboxAutoSellRecipe:SetChecked(AutoShopSave.autoSellRecipe)

		checkboxShowBuyActivity:SetChecked(AutoShopSave.showBuyActivity)
		checkboxShowSellActivity:SetChecked(AutoShopSave.showSellActivity)
		checkboxAutoRepair:SetChecked(AutoShopSave.autoRepair)
		checkboxAutoRepairGuild:SetChecked(AutoShopSave.autoRepairGuild)
		checkboxNoMoreThanWanted:SetChecked(AutoShopSave.noMoreThanWanted)
		checkboxCountBankItems:SetChecked(AutoShopSave.countBankItems)
		checkboxInstanceRepair:SetChecked(AutoShopSave.instanceRepair)
		inputInstanceRepair:SetText(AutoShopSave.instanceRepairDurability)

		inputGreenIlvl:SetText(AutoShopSave.autoSellGreenIlvl)
		inputBlueIlvl:SetText(AutoShopSave.autoSellBlueIlvl)
		inputPurpleIlvl:SetText(AutoShopSave.autoSellPurpleIlvl)

		LibDD:UIDropDownMenu_Initialize(dropdownRepairReputation, DropdownReputation_Initialize)
		LibDD:UIDropDownMenu_Initialize(dropdownBuyReputation, DropdownReputation_Initialize)
		LibDD:UIDropDownMenu_SetSelectedValue(dropdownRepairReputation, AutoShopSave.reactionRepair or 4)
		LibDD:UIDropDownMenu_SetSelectedValue(dropdownBuyReputation, AutoShopSave.reactionBuy or 4)

		SellTab_OnClick(inputSell.showingPersonal)
		ExcludeTab_OnClick(inputExclude.showingPersonal)
		BuyTab_OnClick(inputBuy.showingPersonal)
	end)

	return
end

----------------------------------------------------------------------------------------------------
-- slash command to open the options window
----------------------------------------------------------------------------------------------------
_G.SLASH_AUTOSHOP1 = "/autoshop"
function SlashCmdList.AUTOSHOP()
	if not window then
		CreateGUI()
	end
	window:Show()
end
