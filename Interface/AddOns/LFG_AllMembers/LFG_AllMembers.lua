local LFG_AllMembersMainFrame = CreateFrame("Frame", "LFG_AllMembersMainFrame")
LFG_AllMembersMainFrame:RegisterEvent("PLAYER_ENTERING_WORLD")
LFG_AllMembersMainFrame:SetScript("OnEvent", function(self, event, ...) LFG_AllMembersMainFrame:onEvent(self, event, ...) end)

function LFG_AllMembersMainFrame:onEvent(self, event, ...)
	hooksecurefunc("LFGBrowseSearchEntryTooltip_UpdateAndShow", function(self, resultID)
		local searchResultInfo = C_LFGList.GetSearchResultInfo(resultID);
		local numMembers = searchResultInfo.numMembers;
		local maxNameWidth = 0;
		local lastMemberFrame = self.Leader;
		local LFGBROWSE_GROUPDATA_ATLASES = {
			TANK = "groupfinder-icon-role-large-tank",
			HEALER = "groupfinder-icon-role-large-heal",
			DAMAGER = "groupfinder-icon-role-large-dps",
		};
		self.memberPool:ReleaseAll();
		local membersToSort = {};
		for i=1, numMembers do
			local name, role, classFileName, _, level, isLeader = C_LFGList.GetSearchResultMemberInfo(resultID, i);
			if (name and not isLeader) then 
				table.insert(membersToSort, {name = name, role = role, classFileName = classFileName, level = level});
			end
		end
		table.sort(membersToSort, function (v1, v2) 
			if v1.role == v2.role then 
				return v1.name < v2.name 
			end
			return v1.role > v2.role 
		end);
		for i,v in ipairs(membersToSort) do
			local frame = self.memberPool:Acquire();
			local classColor = RAID_CLASS_COLORS[v.classFileName];
			frame.Name:SetWidth(0);
			frame.Name:SetText(v.name);
			frame.Name:SetTextColor(classColor.r, classColor.g, classColor.b)
			frame.Level:SetText(LEVEL_ABBR .. " " .. v.level);
			frame.Role:SetAtlas(LFGBROWSE_GROUPDATA_ATLASES[v.role], false);
			frame:SetPoint("TOPLEFT", lastMemberFrame, "BOTTOMLEFT", 0, 0);
			lastMemberFrame = frame;
			frame:Show();
			maxNameWidth = math.max(maxNameWidth, frame.Name:GetWidth());
		end	
		self.Comment:SetPoint("TOP", lastMemberFrame, "BOTTOM", 0, -8);
		local contentHeight = 40;
		if ( self.Delisted:IsShown() ) then
			contentHeight = contentHeight + self.Delisted:GetHeight();
			contentHeight = contentHeight + 8;
		end
		if ( self.NewPlayerFriendlyText:IsShown() ) then
			contentHeight = contentHeight + self.NewPlayerFriendlyText:GetHeight();
			contentHeight = contentHeight + 8;
		end
		contentHeight = contentHeight + self.Leader:GetHeight();
		for frame in self.memberPool:EnumerateActive() do
			contentHeight = contentHeight + frame:GetHeight();
		end
		if ( self.Comment:IsShown() ) then
			contentHeight = contentHeight + self.Comment:GetHeight();
			contentHeight = contentHeight + 8;
		end
		contentHeight = contentHeight + self.MemberCount:GetHeight();
		for fontString in self.activityPool:EnumerateActive() do
			contentHeight = contentHeight + fontString:GetHeight();
		end
		self:SetHeight(contentHeight);
	end);
end