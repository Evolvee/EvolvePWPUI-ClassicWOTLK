local DeBuffFilter = LibStub("AceAddon-3.0"):GetAddon("DeBuffFilter")
function DeBuffFilter:UpdateOptions()

end
function DeBuffFilter:SetupOptions()
	DeBuffFilter:UpdateOptions()
	self.options = {
		type = "group",
		childGroups = "tab",
		plugins = {},
		args = {
			author = {
			  name = "|cff1fd700Author:|r Xyz - discord.gg/CtxPasSQnQ",
			  type = "description"
			},
			version = {
			  name = "|cff1fd700Version:|r "..C_AddOns.GetAddOnMetadata("DeBuffFilter", "Version").."\n",
			  type = "description"
			},
			moreoptions={
			  name = "General",
			  type = "group",
			  args={
				 buffNameInput = {
				  order = 1,
				  width = 1.5,
				  name = "Add (De)Buff By Name / Spell Id",
				  desc = "Type the name or spell id of a (de)buff to hide",
				  type = "input",
				  set = function(info,val)
					  if tonumber(val) then
						  val = select(1, GetSpellInfo(val))
					  end

					  for _, value in ipairs(self.db.profile.hiddenBuffs) do
						  if value == val then
							  return
						  end
					  end
							table.insert(self.db.profile.hiddenBuffs, val);
					  		table.sort(self.db.profile.hiddenBuffs)
					  TargetFrame_UpdateAuras(TargetFrame);
							TargetFrame_UpdateAuras(FocusFrame);
						end,
				},
				buffList = {
					order = 3,
					width = 1,
					name = "Buff List",
					type = "multiselect",
					values = self.db.profile.hiddenBuffs,
					get = function(info, val)
						return true;
					end,
					set = function(info,val)
						table.remove(self.db.profile.hiddenBuffs, val);
					end,
					confirm = function(info, val, v2)
						return "Delete "..self.db.profile.hiddenBuffs[val].."?"
					end
				}

			  }
			}
		}
	}
	LibStub("AceConfig-3.0"):RegisterOptionsTable("|cff1fd700DeBuffFilter|r", self.options)
	LibStub("AceConfigDialog-3.0"):AddToBlizOptions("|cff1fd700DeBuffFilter|r", "|cff1fd700DeBuffFilter|r")
	self:RegisterChatCommand("dbf", function() InterfaceOptionsFrame_OpenToCategory("|cff1fd700DeBuffFilter|r") InterfaceOptionsFrame_OpenToCategory("|cff1fd700DeBuffFilter|r") end)
	self:RegisterChatCommand("DeBuffFilter", function() InterfaceOptionsFrame_OpenToCategory("|cff1fd700DeBuffFilter|r") InterfaceOptionsFrame_OpenToCategory("|cff1fd700DeBuffFilter|r") end)
end
