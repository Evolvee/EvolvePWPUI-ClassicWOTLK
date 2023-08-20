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
                name = "|cff1fd700Version:|r " .. C_AddOns.GetAddOnMetadata("DeBuffFilter", "Version") .. "\n",
                type = "description"
            },
            moreoptions = {
                name = "General",
                type = "group",
                args = {
                    buffNameInput = {
                        order = 1,
                        width = 1.5,
                        name = "Add (De)Buff By Name / Spell Id",
                        desc = "Type the name or spell id of a (de)buff to hide",
                        type = "input",
                        set = function(info, val)
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
                        set = function(info, val)
                            table.remove(self.db.profile.hiddenBuffs, val);
                        end,
                        confirm = function(info, val, v2)
                            return "Delete " .. self.db.profile.hiddenBuffs[val] .. "?"
                        end
                    },
                },
            },
            sizeoptions={
                name = "Resizer",
                type = "group",
                args = {
                    selfSize = {
                        order = 1,
                        width = 2,
                        name = "My Debuffs/Buffs size",
                        desc = "Resize your own (de)buffs displayed on target",
                        type = "range",
                        min = 17,
                        max = 34,
                        step = 1,
                        get = function(info, val)
                            return self.db.profile.selfSize
                        end,
                        set = function(info, val)
                            self.db.profile.selfSize = val
                            TargetFrame_UpdateAuras(TargetFrame);
                            TargetFrame_UpdateAuras(FocusFrame);
                        end

                    },
                    otherSize = {
                        order = 2,
                        width = 2,
                        name = "Others Debuffs/Buffs size",
                        desc = "Resize the (de)buffs casted by others that are displayed on target",
                        type = "range",
                        min = 17,
                        max = 34,
                        step = 1,
                        get = function(info, val)
                            return self.db.profile.otherSize
                        end,
                        set = function(info, val)
                            self.db.profile.otherSize = val
                            TargetFrame_UpdateAuras(TargetFrame);
                            TargetFrame_UpdateAuras(FocusFrame);
                        end
                    },
                    auraWidth = {
                        order = 3,
                        width = 2,
                        name = "Aura row width",
                        desc = "How many aura's do you want to show per row?",
                        type = "range",
                        min = 108,
                        max = 178,
                        step = 14,
                        get = function(info, val)
                            return self.db.profile.auraWidth
                        end,
                        set = function(info, val)
                            self.db.profile.auraWidth = val
                            TargetFrame_UpdateAuras(TargetFrame);
                            TargetFrame_UpdateAuras(FocusFrame);
                        end
                    },
                },
            },
        },
    }
    LibStub("AceConfig-3.0"):RegisterOptionsTable("|cff1fd700DeBuffFilter|r", self.options)
    LibStub("AceConfigDialog-3.0"):AddToBlizOptions("|cff1fd700DeBuffFilter|r", "|cff1fd700DeBuffFilter|r")
    self:RegisterChatCommand("dbf", function()
        InterfaceOptionsFrame_OpenToCategory("|cff1fd700DeBuffFilter|r")
        InterfaceOptionsFrame_OpenToCategory("|cff1fd700DeBuffFilter|r")
    end)
    self:RegisterChatCommand("DeBuffFilter", function()
        InterfaceOptionsFrame_OpenToCategory("|cff1fd700DeBuffFilter|r")
        InterfaceOptionsFrame_OpenToCategory("|cff1fd700DeBuffFilter|r")
    end)
end
