--------------------------------------
-- Namespace
--------------------------------------
local _, core = ...;
local LibDD = LibStub:GetLibrary("LibUIDropDownMenu-4.0")


-- if WOW_PROJECT_ID ~= WOW_PROJECT_WRATH_CLASSIC then return end


core.Config = {};
core.removed_markers = {};
core.summon_after_gates = {};
local Config = core.Config;
local AMConfig;
members = GetNumGroupMembers;
core.RAID_TARGET_COLORS = {
	[1] = "|c00FFFF00", -- Star (yellow)
	[2] = "|c00FF7F00", -- Circle (orange)
	[3] = "|cffd966ff", -- Diamond (purple)
	[4] = "|c0000FF00", -- Triangle (green)
	[5] = "|cffc7c7cf", -- slightly brighter gray (moon)
	[6] = "|c000080FF", -- Square (blue)
	[7] = "|c33FF0000", -- Cross (red)
	[8] = "|c00FFFFFF", -- Skull (white)
};
core.translations = {
	["enUS"] = "The Arena battle has begun!",
	["enGB"] = "The Arena battle has begun!",
	["frFR"] = "Le combat d'arène commence !",
	["deDE"] = "Der Arenakampf hat begonnen!",
	["ptBR"] = "A batalha na Arena começou!",
	["esES"] = "¡La batalla en arena ha comenzado!",
	["esMX"] = "¡La batalla en arena ha comenzado!",
	["ruRU"] = "Бой начался!",
	["zhCN"] = "竞技场的战斗开始了！",
	["zhTW"] = "競技場戰鬥開始了!",
	["koKR"] = "투기장 전투가 시작되었습니다!",
};
core.reversed_marker_values = {
	["star"] = 8,
	["circle"] = 7,
	["diamond"] = 6,
	["triangle"] = 5,
	["moon"] = 4,
	["square"] = 3,
	["cross"] = 2,
	["skull"] = 1
};
core.marker_values = {
	["star"] = 1,
	["circle"] = 2,
	["diamond"] = 3,
	["triangle"] = 4,
	["moon"] = 5,
	["square"] = 6,
	["cross"] = 7,
	["skull"] = 8
};
core.unused_markers = {
	["star"] = 1,
	["circle"] = 2,
	["diamond"] = 3,
	["triangle"] = 4,
	["moon"] = 5,
	["square"] = 6,
	["cross"] = 7,
	["skull"] = 8
};
core.marker_strings = {
	"star",
	"circle",
	"diamond",
	"triangle",
	"moon",
	"square",
	"cross",
	"skull"
};
core.classes = {};
core.eventHandlerTable = {
	["PLAYER_LOGIN"] = function(self) Config:Player_Login(self) end,
	["CHAT_MSG_BG_SYSTEM_NEUTRAL"] = function(self, ...) AM:Main(self, ...) end,
	["UNIT_SPELLCAST_SUCCEEDED"] = function(self, ...) AM:HandleUnitSpellCastSucceeded(self, ...) end,
	["ZONE_CHANGED_NEW_AREA"] = function(self) AM:IsOutOfArena(self) end,
};
core.texture_path = "Interface\\TargetingFrame\\UI-RaidTargetingIcon_";
--------------------------------------
-- Config functions
--------------------------------------

function Config:Toggle()
	InterfaceOptionsFrame_OpenToCategory(AMConfig);
	InterfaceOptionsFrame_OpenToCategory(AMConfig);
end

function Config:CreateButton(relativeFrame, buttonText, funcName, xOff, yOff)
	local btn = CreateFrame("Button", nil, relativeFrame, "GameMenuButtonTemplate");
	btn:SetPoint("CENTER", relativeFrame, "CENTER", xOff, yOff);
	btn:SetSize(110, 30);
	btn:SetText(buttonText);
	btn:SetScript("OnClick", funcName);
	return btn;
end

function Config:CreateCheckButton(relativeFrame, buttonText, DB_var)
	local checkbtn = CreateFrame("CheckButton", nil, AMConfig, "UICheckButtonTemplate");
	checkbtn:SetPoint("CENTER", relativeFrame, "CENTER", 0, -35);
	checkbtn.Text:SetText(" " .. buttonText);
	checkbtn.Text:SetFontObject("GameFontHighlight");
	checkbtn:SetChecked(DB_var);
	checkbtn:SetScript("OnClick", function() DB_var = checkbtn:GetChecked() end);
	return checkbtn;
end

function Config:CreateDropdownTitle(relativeFrame, dropText)
	local dropTitle = AMConfig:CreateFontString(nil, "OVERLAY", "GameFontHighlight");
	dropTitle:SetText(dropText);
	dropTitle:SetPoint("CENTER", relativeFrame, 0, -32);
	return dropTitle;
end

function Config:CreateDropdown(relativeFrame, frameName)
	local dropDown = LibDD:Create_UIDropDownMenu(frameName or nil, AMConfig)
	dropDown:SetPoint("CENTER", relativeFrame, 0, -23);
	return dropDown;
end

function Config:CreateDropdownIcon(relativeFrame)
	local dropIcon = AMConfig:CreateTexture(nil, "ARTWORK", nil, 2);
	dropIcon:SetParent(relativeFrame);
	dropIcon:SetPoint("LEFT", relativeFrame, 25, 2);
	dropIcon:SetSize(16, 16);
	return dropIcon;
end

function Config:InitDropdown(dropdown, menu, clickID, markerID, frame)
	LibDD:UIDropDownMenu_SetWidth(dropdown, 93);
	LibDD:UIDropDownMenu_Initialize(dropdown, menu);
	LibDD:UIDropDownMenu_SetSelectedID(dropdown, clickID);

	if not markerID then return end
	if markerID == -1 then
		frame:SetTexture(nil);
	else
		frame:SetTexture(core.texture_path .. markerID);
	end
end

function Config:SmallMenu()
	AMConfig.dropDownTitleThree:Hide();
	AMConfig.dropDownThree:Hide();
end

function Config:LargeMenu()
	AMConfig.dropDownTitleThree:Show();
	AMConfig.dropDownThree:Show();
end

function Config:CheckMenu()
	-- both party-pet options are 'none'
	if ArenaMarkerDB.petDropDownThreeMarkerID == -1 and ArenaMarkerDB.petDropDownTwoMarkerID == -1 then
		return Config:SmallMenu();
	end
	-- atleast 1 other party-pet option isnt 'none'
	if not (ArenaMarkerDB.petDropDownThreeMarkerID == -1 and ArenaMarkerDB.petDropDownTwoMarkerID == -1) then
		return Config:LargeMenu();
	end
end

function Config:ChatFrame(t) return DEFAULT_CHAT_FRAME:AddMessage("|cff33ff99ArenaMarker|r: " .. t); end

function Config:CreateMenu()
	-- Menu
	AMConfig = CreateFrame("Frame", "ArenaMarkerConfig", UIParent);

	AMConfig.name = "ArenaMarker";

	-- Options Title
	AMConfig.title = AMConfig:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge");
	AMConfig.title:SetParent(AMConfig);
	AMConfig.title:SetPoint("TOPLEFT", 16, -16);
	AMConfig.title:SetText(AMConfig.name);

	-- Mark Pets Check Button
	AMConfig.markPetsCheckButton = self:CreateCheckButton(AMConfig.title,
		"Mark Pets When Arena Gates Open", ArenaMarkerDB.allowPets)
	AMConfig.markPetsCheckButton:SetPoint("BOTTOMLEFT", AMConfig.title, "BOTTOMLEFT", 0, -45);
	AMConfig.markPetsCheckButton:SetScript("OnClick",
		function() ArenaMarkerDB.allowPets = AMConfig.markPetsCheckButton:GetChecked() end);

	-- Pet-Summon Check Button
	AMConfig.markPetsOnSummonCheckButton = self:CreateCheckButton(AMConfig.markPetsCheckButton,
		"Mark Pets When Summoned In Arena", ArenaMarkerDB.markSummonedPets);
	AMConfig.markPetsOnSummonCheckButton:SetScript("OnClick",
		function() ArenaMarkerDB.markSummonedPets = AMConfig.markPetsOnSummonCheckButton:GetChecked() end);

	-- Mark Players Button
	AMConfig.markPlayersButton = self:CreateButton(AMConfig.markPetsOnSummonCheckButton, "Mark Players", AM.MarkPlayers,
		44
		, -40);

	-- Unmark Players Button
	AMConfig.unmarkPlayersButton = self:CreateButton(AMConfig.markPlayersButton, "Unmark Players", AM.UnmarkPlayers, 120,
		0);

	-- Mark Pets Button
	AMConfig.markPetsButton = self:CreateButton(AMConfig.markPlayersButton, "Mark Pets", AM.MarkPets, 0, -45);

	-- Unmark Pets Button
	AMConfig.unmarkPetsButton = self:CreateButton(AMConfig.markPetsButton, "Unmark Pets", AM.UnmarkPets, 120, 0);

	function Config:SetDropdownInfo(dropdown, textVal, selectedVal, iconFrame, j)
		LibDD:UIDropDownMenu_SetText(dropdown, textVal);
		LibDD:UIDropDownMenu_SetSelectedID(dropdown, selectedVal);
		if not iconFrame then return end
		if j == -1 then
			iconFrame:SetTexture(nil);
		else
			iconFrame:SetTexture(core.texture_path .. j);
		end
	end

	function Config:CreateDropdownMenu(disableOne, disableTwo, func)
		local info = LibDD:UIDropDownMenu_CreateInfo();
		info.func = func;
		local function AddMark(marker, boolean, i)
			info.text, info.checked = marker, boolean;
			if i then
				if i == disableOne or i == disableTwo then
					info.disabled = true;

					-- remove color codes
					marker = marker:gsub("|c........", ""):gsub("|r", "")

					-- set text to non color coded text
					info.text = Config:CapitalizeFirstLetter(marker);
				else
					info.disabled = false;
				end
				info.icon = core.texture_path .. i;
			else
				info.icon = nil;
				info.disabled = false;
			end
			return LibDD:UIDropDownMenu_AddButton(info);
		end

		for i = #core.marker_strings, 1, -1 do
			AddMark(core.RAID_TARGET_COLORS[i] .. Config:CapitalizeFirstLetter(core.marker_strings[i]), false, i);
		end
		AddMark("None", false, nil);
	end

	function Config:CreatePetDropdownOnClick(self, disableOne, markerIDString, clickIDString, frame, iconFrame)
		local j = -1;
		for i = #core.marker_strings + 1, 1, -1 do
			if self:GetID() == i then
				-- set marker & click ID
				ArenaMarkerDB[markerIDString] = j;
				ArenaMarkerDB[clickIDString] = self:GetID();
				break;
			end
			-- j is finding the MarkerID from the ClickID
			if j == -1 then
				j = j + 2;
			else
				j = j + 1;
			end
		end
		Config:SetDropdownInfo(frame, self.value, self:GetID(), iconFrame, j);
		Config:CheckMenu();
	end

	-- Self-Pet Priority Dropdown
	local function ArenaMarker_Pet_DropDown_OnClick(self, arg1, arg2, checked)
		return Config:CreatePetDropdownOnClick(self, nil, "petDropDownMarkerID", "petDropDownClickID", AMConfig.dropDown,
			AMConfig.dropDownIcon);
	end

	function ArenaMarkerDropDownMenu(frame, level, menuList)
		return Config:CreateDropdownMenu(ArenaMarkerDB.petDropDownThreeMarkerID, ArenaMarkerDB.petDropDownTwoMarkerID,
			ArenaMarker_Pet_DropDown_OnClick);
	end

	AMConfig.dropDownTitle = self:CreateDropdownTitle(AMConfig.markPetsButton, "Self-Pet Mark");
	AMConfig.dropDown = self:CreateDropdown(AMConfig.dropDownTitle, "ArenaMarkerDropDown");
	AMConfig.dropDownIcon = self:CreateDropdownIcon(AMConfig.dropDown);

	-- Second Prio Pet Dropdown
	local function ArenaMarker_Pet_DropDown_Two_OnClick(self, arg1, arg2, checked)
		return Config:CreatePetDropdownOnClick(self, ArenaMarkerDB.petDropDownThreeMarkerID, "petDropDownTwoMarkerID",
			"petDropDownTwoClickID", AMConfig.dropDownTwo, AMConfig.dropDownIconTwo);
	end

	function ArenaMarkerDropDownMenuTwo(frame, level, menuList)
		return Config:CreateDropdownMenu(ArenaMarkerDB.petDropDownThreeMarkerID, ArenaMarkerDB.petDropDownMarkerID,
			ArenaMarker_Pet_DropDown_Two_OnClick);
	end

	AMConfig.dropDownTitleTwo = self:CreateDropdownTitle(AMConfig.dropDown, "Party-Pet Mark");
	AMConfig.dropDownTwo = self:CreateDropdown(AMConfig.dropDownTitleTwo);
	AMConfig.dropDownIconTwo = self:CreateDropdownIcon(AMConfig.dropDownTwo);

	-- Third Prio Pet Dropdown
	local function ArenaMarker_Pet_DropDown_Three_OnClick(self, arg1, arg2, checked)
		return Config:CreatePetDropdownOnClick(self, ArenaMarkerDB.petDropDownTwoMarkerID, "petDropDownThreeMarkerID",
			"petDropDownThreeClickID", AMConfig.dropDownThree, AMConfig.dropDownIconThree);
	end

	function ArenaMarkerDropDownMenuThree(frame, level, menuList)
		return Config:CreateDropdownMenu(ArenaMarkerDB.petDropDownTwoMarkerID, ArenaMarkerDB.petDropDownMarkerID,
			ArenaMarker_Pet_DropDown_Three_OnClick);
	end

	AMConfig.dropDownTitleThree = self:CreateDropdownTitle(AMConfig.dropDownTwo, "Extra Party-Pet Mark");
	AMConfig.dropDownThree = self:CreateDropdown(AMConfig.dropDownTitleThree);
	AMConfig.dropDownIconThree = self:CreateDropdownIcon(AMConfig.dropDownThree);

	-- Class Dropdown
	AMConfig.classDropDownTitle = self:CreateDropdownTitle(AMConfig.dropDown, "Priority Class Marks");
	AMConfig.classDropDownTitle:SetPoint("TOPRIGHT", AMConfig.dropDown, "TOPRIGHT", 128, 13);
	AMConfig.classDropDown = self:CreateDropdown(AMConfig.classDropDownTitle, "ArenaMarkerClassDropDown");
	AMConfig.classDropDownIcon = self:CreateDropdownIcon(AMConfig.classDropDown);                        -- set texture
	AMConfig.classDropDownIcon:SetTexture("Interface\\GLUES\\CHARACTERCREATE\\UI-CHARACTERCREATE-CLASSES"); -- this is the image containing all class icons

	-- Class Marker Dropdown
	AMConfig.classMarkerDropDownTitle = self:CreateDropdownTitle(AMConfig.classDropDown, "Priority Marker");
	AMConfig.classMarkerDropDownTitle:SetPoint("CENTER", AMConfig.classDropDown, "CENTER", 0, -24);
	AMConfig.classMarkerDropDown = self:CreateDropdown(AMConfig.classMarkerDropDownTitle,
		"ArenaMarkerClassMarkerDropDown");
	AMConfig.classMarkerDropDownIcon = self:CreateDropdownIcon(AMConfig.classMarkerDropDown); -- set texture

	-- Reset Class Markers Button
	AMConfig.resetClassMarkersButton = self:CreateButton(AMConfig.classMarkerDropDown, "Reset To Default",
		function() StaticPopup_Show("RESET_ALL_CONFIRM") end, 0, -25);

	AMConfig.resetClassMarkersButton:SetSize(118, 23)

	-- Class Marker Dropdown Onclick function
	local function ArenaMarker_Class_Marker_DropDown_OnClick(self, arg1, arg2, checked)
		local j = -1;
		for i = #core.marker_strings + 1, 1, -1 do
			if self:GetID() == i then
				-- set marker & click ID
				ArenaMarkerDB["classMarkerDropDownClickID"] = self:GetID();
				ArenaMarkerDB["classMarkerDropDownMarkerID"] = j;
				break;
			end
			-- j is finding the MarkerID from the ClickID
			if j == -1 then
				j = j + 2;
			else
				j = j + 1;
			end
		end
		-- set dropdown info
		Config:SetDropdownInfo(AMConfig.classMarkerDropDown, self.value, self:GetID(), AMConfig.classMarkerDropDownIcon,
			j);

		-- find selected id from class dropdown
		local classID = LibDD:UIDropDownMenu_GetSelectedID(AMConfig.classDropDown);

		-- prioritize marker
		if classID == 1 then
			Config:UpdatePriorityMarker(core.classes[classID]:upper(), core.marker_strings[j]);
		else
			Config:UpdatePriorityMarker(ArenaMarkerDB["classString"], core.marker_strings[j]);
		end
	end

	-- Class Marker Dropdown Menu
	local function ArenaMarker_Class_Marker_DropDown_Menu(frame, level, menuList)
		-- Create the dropdown menu
		local info = LibDD:UIDropDownMenu_CreateInfo();
		info.func = ArenaMarker_Class_Marker_DropDown_OnClick;
		local function AddDropDownValue(marker, boolean, i)
			info.text, info.checked = marker, boolean;
			if i then
				info.icon = core.texture_path .. i;
			else
				info.icon = nil;
			end
			local markerColor = core.RAID_TARGET_COLORS[i];

			if markerColor then
				info.colorCode = markerColor;
			end

			return LibDD:UIDropDownMenu_AddButton(info);
		end

		for i = #core.marker_strings, 1, -1 do
			AddDropDownValue(Config:CapitalizeFirstLetter(core.marker_strings[i]), false, i);
		end
	end

	--Class Dropdown Onclick function
	local function ArenaMarker_Class_DropDown_OnClick(self, arg1, arg2, checked)
		for i = 1, #core.relatives do
			if self:GetID() == i then
				-- set marker & click ID
				ArenaMarkerDB["classDropDownClickID"] = self:GetID();
				break;
			end
		end

		-- instantiate value to change it later if it's a DK
		local newSelfValue = self.value;

		-- store class string
		ArenaMarkerDB["classString"] = self.value:upper();

		-- get the coordinates of the class icon we want to use
		local coords = CLASS_ICON_TCOORDS[self.value:upper()];

		-- need to change the value if it's a DK
		if self.value:upper() == "DEATH KNIGHT" then
			coords = CLASS_ICON_TCOORDS["DEATHKNIGHT"];
			newSelfValue = "DEATHKNIGHT";
		end

		-- set the coordinates of our texture
		AMConfig.classDropDownIcon:SetTexCoord(unpack(coords));

		-- set class dropdown text
		LibDD:UIDropDownMenu_SetText(AMConfig.classDropDown, self.value);
		LibDD:UIDropDownMenu_SetSelectedID(AMConfig.classDropDown, self:GetID());
		LibDD:UIDropDownMenu_SetSelectedValue(AMConfig.classDropDown, self.value);

		-- set class marker dropdown text
		LibDD:UIDropDownMenu_SetSelectedID(AMConfig.classMarkerDropDown,
			core.reversed_marker_values[core.relatives[newSelfValue:upper()][1]]);

		-- set class marker dropdown icon
		local selectedMarkerID = core.marker_values[core.relatives[newSelfValue:upper()][1]];

		-- set class marker dropdown text with colorCode
		LibDD:UIDropDownMenu_SetText(AMConfig.classMarkerDropDown,
			core.RAID_TARGET_COLORS[selectedMarkerID] ..
			Config:CapitalizeFirstLetter(core.relatives[newSelfValue:upper()][1]));

		-- set class marker dropdown icon
		AMConfig.classMarkerDropDownIcon:SetTexture(core.texture_path ..
			core.marker_values[core.relatives[newSelfValue:upper()][1]]);
	end

	-- Class Dropdown Menu
	local function ArenaMarker_Class_DropDown_Menu(frame, level, menuList)
		-- Create the dropdown menu
		local info = LibDD:UIDropDownMenu_CreateInfo();
		info.func = ArenaMarker_Class_DropDown_OnClick;
		local function AddDropDownValue(marker, boolean, i, coords)
			info.text, info.checked, info.icon = marker, boolean,
				"Interface\\GLUES\\CHARACTERCREATE\\UI-CHARACTERCREATE-CLASSES"
			-- need to change the value if it's a DK
			if marker == "DEATH KNIGHT" then
				marker = "DEATHKNIGHT";
			end

			-- get the color string for the class
			local colorStr;
			if RAID_CLASS_COLORS[marker:upper()] then
				colorStr = RAID_CLASS_COLORS[marker:upper()].colorStr;
			elseif marker:upper() == "DEATH KNIGHT" then
				colorStr = RAID_CLASS_COLORS["DEATHKNIGHT"].colorStr;
			end
			-- change color to class color
			info.colorCode = "|c" .. colorStr;

			-- set the coordinates of our texture
			if coords then
				info.tCoordLeft, info.tCoordRight, info.tCoordTop, info.tCoordBottom = unpack(coords);
			end

			return LibDD:UIDropDownMenu_AddButton(info);
		end
		for i, str in ipairs(core.classes) do
			local coords = CLASS_ICON_TCOORDS[str:upper()];
			if str:upper() == "DEATH KNIGHT" then
				coords = CLASS_ICON_TCOORDS["DEATHKNIGHT"];
			end
			AddDropDownValue(str, false, i, coords);
		end
	end

	function Config:HandleResetClick()
		-- loop through all settings and reset them to their default values
		for k, v in pairs(core.default_class_markers) do
			-- set the new values in the database
			ArenaMarkerDB.classMarkers[k] = v;

			-- set the new values in the relatives table
			core.relatives[k][1] = v[1];
		end

		-- find what value is currently selected on the class dropdown
		local dropdownValue = LibDD:UIDropDownMenu_GetText(AMConfig.classDropDown);

		-- remove color codes from the dropdown value
		dropdownValue = dropdownValue:gsub("|c........", ""):gsub("|r", "")

		if dropdownValue:upper() == "DEATH KNIGHT" then
			dropdownValue = "DEATHKNIGHT";
		end

		-- get the first marker from the class we have selected
		local newMarker = core.relatives[dropdownValue:upper()][1];

		-- get the color of the marker and capitalize the first letter
		local coloredMarkerText = core.RAID_TARGET_COLORS[core.marker_values[newMarker]] ..
			Config:CapitalizeFirstLetter(newMarker);

		-- set value of the marker dropdown
		LibDD:UIDropDownMenu_SetSelectedID(AMConfig.classMarkerDropDown, core.reversed_marker_values[newMarker]);

		-- set the marker icon on the classID we have selected
		AMConfig.classMarkerDropDownIcon:SetTexture(core.texture_path .. core.marker_values[newMarker])

		-- set the marker dropdown text on the classID we have selected
		LibDD:UIDropDownMenu_SetText(AMConfig.classMarkerDropDown, coloredMarkerText)

		-- notify the user that settings have been reset
		Config:ChatFrame("Class priority markers have been reset to their default values.")
	end

	-- Init Dropdowns
	self:InitDropdown(AMConfig.dropDown, ArenaMarkerDropDownMenu, ArenaMarkerDB.petDropDownClickID,
		ArenaMarkerDB.petDropDownMarkerID, AMConfig.dropDownIcon);
	self:InitDropdown(AMConfig.dropDownTwo, ArenaMarkerDropDownMenuTwo, ArenaMarkerDB.petDropDownTwoClickID,
		ArenaMarkerDB.petDropDownTwoMarkerID, AMConfig.dropDownIconTwo);
	self:InitDropdown(AMConfig.dropDownThree, ArenaMarkerDropDownMenuThree, ArenaMarkerDB.petDropDownThreeClickID,
		ArenaMarkerDB.petDropDownThreeMarkerID, AMConfig.dropDownIconThree);

	self:InitDropdown(AMConfig.classDropDown, ArenaMarker_Class_DropDown_Menu, 1, nil,
		nil);
	LibDD:UIDropDownMenu_SetWidth(AMConfig.classDropDown, 110);

	self:InitDropdown(AMConfig.classMarkerDropDown, ArenaMarker_Class_Marker_DropDown_Menu,
		nil, nil,
		nil);

	-- set default values for class dropdown (hunter = default because its the first class in the dropdown)
	local defaultClass = "HUNTER";
	local coords = CLASS_ICON_TCOORDS[defaultClass];
	AMConfig.classDropDownIcon:SetTexCoord(unpack(coords));
	LibDD:UIDropDownMenu_SetText(AMConfig.classMarkerDropDown, core.relatives[defaultClass][1]);

	AMConfig.classMarkerDropDownIcon:SetTexture(core.texture_path ..
		core.marker_values[core.relatives[defaultClass][1]]);

	LibDD:UIDropDownMenu_SetSelectedID(AMConfig.classMarkerDropDown,
		core.reversed_marker_values[core.relatives[defaultClass][1]]);

	self:CheckMenu();

	AMConfig:Hide();
	return InterfaceOptions_AddCategory(AMConfig);
end

-- small helper funcs
function contains(table, x)
	for _, v in pairs(table) do
		if v == x then return true end
	end
	return false;
end

function removeValue(table, value)
	local key = table[value];
	table[value] = nil;
	return key;
end

function Config:GetClasses()
	for key, _ in pairs(core.relatives) do
		table.insert(core.classes, key)
	end
	for i, str in ipairs(core.classes) do
		core.classes[i] = Config:CapitalizeFirstLetter(str:lower());
		if core.classes[i] == "Deathknight" then
			core.classes[i] = "Death Knight";
		end
	end
end

function Config:CapitalizeFirstLetter(str)
	return str:gsub("^%l", string.upper)
end

function Config:OnInitialize()
	if not ArenaMarkerDB then
		ArenaMarkerDB = {};
	end

	-- Check if saved variables have the expected structure for the current version of the addon
	if not ArenaMarkerDB.classMarkers then
		-- Saved variables are outdated, perform update
		ArenaMarkerDB.allowPets = true;
		ArenaMarkerDB.markSummonedPets = true;
		ArenaMarkerDB.petDropDownMarkerID = -1;
		ArenaMarkerDB.petDropDownClickID = -1;
		ArenaMarkerDB.petDropDownTwoMarkerID = -1;
		ArenaMarkerDB.petDropDownTwoClickID = -1;
		ArenaMarkerDB.petDropDownThreeMarkerID = -1;
		ArenaMarkerDB.petDropDownThreeClickID = -1;
		ArenaMarkerDB.classDropDownClickID = -1;
		ArenaMarkerDB.classMarkerDropDownClickID = -1;
		ArenaMarkerDB.classMarkerDropDownMarkerID = -1;
		ArenaMarkerDB.classString = "none";
		ArenaMarkerDB.classMarkers = {
		};
	end

	-- loop through ArenaMarkerDB.classMarkers and add them to core.relatives
	for key, value in pairs(ArenaMarkerDB.classMarkers) do
		core.relatives[key] = value;
	end
	Config:GetClasses();
	Config:CreateMenu();

	-- Define reset class marker priorty dialog box
	StaticPopupDialogs["RESET_ALL_CONFIRM"] = {
		text = "Are you sure you want to reset class priority marker options?",
		button1 = "Yes",
		button2 = "No",
		OnAccept = Config.HandleResetClick,
		timeout = 0,
		whileDead = true,
		hideOnEscape = true,
	}
end

function Config:UpdatePriorityMarker(class, newMarker)
	if class == "DEATH KNIGHT" then
		class = "DEATHKNIGHT";
	end

	-- if the new marker is already prioritized, do nothing
	if core.relatives[class][1] == newMarker then return end

	-- update the priority marker for the class
	core.relatives[class][1] = newMarker;

	-- update the DB
	ArenaMarkerDB.classMarkers[class] = core.relatives[class];

	-- notify the user
	self:ChatFrame("Updated priority marker for " ..
		Config:CapitalizeFirstLetter(class:lower()) ..
		" to " .. Config:CapitalizeFirstLetter(newMarker) .. ".");
end

-- init DB & menu
function Config:Player_Login()
	Config:OnInitialize();
	DEFAULT_CHAT_FRAME:AddMessage("|cff33ff99" ..
		AMConfig.name ..
		"|r by " ..
		"|cff69CCF0" ..
		GetAddOnMetadata(AMConfig.name, "Author") ..
		"|r. Type |cff33ff99/am|r for additional options.");
end
