-- This is an edited version for ClassicWOTLK, for 2.4.3 go see https://github.com/Evolvee/EvolvePWPUI/blob/master/EvolvePWPUI/Interface/Addons/HideChatButton/HideChatButton.lua

-- HideChatButton : a button to hide your chat.
local HCBframe      -- our button frame

-- initialize the frame
if not HCBframe then
    -- make a  button frame
    HCBframe = CreateFrame("Button", "HCBframe", UIParent, "UIPanelButtonTemplate")
    -- make it movable
    HCBframe:SetClampedToScreen(true)
    HCBframe:SetMovable(true)
    HCBframe:EnableMouse(true)
    HCBframe:RegisterForDrag("RightButton")
    HCBframe:SetScript("OnDragStart", HCBframe.StartMoving)
    HCBframe:SetScript("OnDragStop", HCBframe.StopMovingOrSizing)
    -- size
    HCBframe:SetWidth(10)
    HCBframe:SetHeight(10)
    -- anchor it
    HCBframe:SetPoint("BOTTOMLEFT", HCBxpos or 0, HCBypos or 0)
    -- vars
    HCBframe.ChatIsShown = true
    HCBframe.ActiveTabs = { [1] = true }
    HCBkeyable = HCBkeyable or false
    HCBchatIsShown = HCBchatIsShown or true
    -- mouse wheel
    HCBframe:EnableMouseWheel(true)
end

-- enter key or / key to show or not
-- either way you still get the edit frame
-- but chat may or may not show based on this
HCBframe.ToggleKeyable = function(frame)
    if not HCBkeyable then
        HCBkeyable = true
    else
        HCBkeyable = false
    end
    HCBframe:Paint()
end

-- painter for alpha paint based on keyablility
HCBframe.Paint = function(frame, text)
    HCBframe:SetAlpha(HCBkeyable and 1.0 or .25)
    HCBframe:SetText(text or "")
end

-- restore defaults
HCBframe.RestoreDefaults = function(frame)
    HCBkeyable = true
    HCBxpos = 0
    HCBypos = 0
    HCBframe:ClearAllPoints()
    HCBframe:SetPoint("BOTTOMLEFT", HCBxpos, HCBypos)
    HCBframe:Paint()
end

-- hide chats
HCBframe.HideChat = function(frame)
    -- find visible windows
    for i = 1, NUM_CHAT_WINDOWS do
        local f = _G["ChatFrame" .. i]
        if f then
            if f.minimized then
                local fm = _G["ChatFrame" .. i .. "Minimized"]
                if fm then
                    fm:SetAlpha(0)
                end
                -- minimized, so no visible tab
                frame.ActiveTabs[i] = false
            elseif f:GetAlpha() > 0 then
                frame.ActiveTabs[i] = true
                f:SetAlpha(0)
            else
                frame.ActiveTabs[i] = false
            end
        end
    end
    -- hide floating window tabs
    for i = 1, NUM_CHAT_WINDOWS do
        local f = _G["ChatFrame" .. i .. "Tab"]
        if f then
            if frame.ActiveTabs[i] == true and f:GetAlpha() > 0 then
                f:SetAlpha(0)
            end
        end
    end
    GeneralDockManager:SetAlpha(0)   -- tabs
    ChatFrameMenuButton:SetAlpha(0)  -- menu button
    ChatFrameChannelButton:SetAlpha(0) -- classic cancer
    frame.ChatIsShown = false        -- toggle shown state
end

-- show chats
-- I am intentionally not showing certain cancer buttons here that are hidden in TextureScript by default...
HCBframe.ShowChat = function(frame)
    -- revert override functionality while we're visible
    GeneralDockManager:SetAlpha(1)    -- the tabs

    for i = 1, NUM_CHAT_WINDOWS do
        -- chats
        local f = _G["ChatFrame" .. i]
        if f then
            -- restore overrides
            if f.minimized then
                local fm = _G["ChatFrame" .. i .. "Minimized"]
                if fm then
                    fm:SetAlpha(1)
                end
            elseif frame.ActiveTabs[i] == true then
                f:SetAlpha(1)
            end
        end
        -- tabs
        local f = _G["ChatFrame" .. i .. "Tab"]
        if f then
            -- restore overrides
            if frame.ActiveTabs[i] == true then
                f:SetAlpha(1)
            end
        end
    end
    frame.ChatIsShown = true         -- toggle shown state
end

-- toggle visible
HCBframe.ToggleVisible = function(frame)
    if HCBframe.ChatIsShown == false then
        HCBframe:ShowChat()
    else
        HCBframe:HideChat()
    end
    HCBframe:Paint()
end

-- clicker
HCBframe:SetScript("OnMouseUp", function(frame, button)
    if IsControlKeyDown() then
        HCBframe:RestoreDefaults()
    elseif IsShiftKeyDown() then
        HCBframe:ToggleKeyable()
    elseif button == "LeftButton" then
        HCBframe:ToggleVisible()
    end
end)

-- mouse wheel
HCBframe:SetScript("OnMouseWheel", function(frame, delta)
    if IsShiftKeyDown() then
        HCBframe.ToggleKeyable()
    else
        HCBframe.ToggleVisible()
    end
end)

-- hook chat show
hooksecurefunc("ChatEdit_ActivateChat", function(frame)
    -- thanks Treader of Cenarion Circle
    if HCBkeyable == true and HCBframe.ChatIsShown == false then
        HCBframe:ToggleVisible()
    end
end)

local function RenderChatOnStartup (frame)
    if HCBchatIsShown == false then
        HCBframe:ToggleVisible()
    end
end

-- events
-- TODO: these 2 events are causing LUA errors on clASSic client: CHAT_MSG_BATTLEGROUND + CHAT_MSG_BATTLEGROUND_LEADER 
HCBframe:RegisterEvent("CHAT_MSG_GUILD")
HCBframe:RegisterEvent("CHAT_MSG_OFFICER")
HCBframe:RegisterEvent("CHAT_MSG_PARTY")
HCBframe:RegisterEvent("CHAT_MSG_PARTY_LEADER")
HCBframe:RegisterEvent("CHAT_MSG_RAID")
HCBframe:RegisterEvent("CHAT_MSG_RAID_LEADER")
HCBframe:RegisterEvent("CHAT_MSG_WHISPER")
HCBframe:RegisterEvent("ADDON_LOADED")
HCBframe:RegisterEvent("PLAYER_LOGOUT")

HCBframe.OnEvent = function(frame, event, ...)
    local eventcolors = {
        -- registered event name           RRGGBB+letter
        CHAT_MSG_GUILD = "66cc00G",
        CHAT_MSG_GUILD_OFFICER = "66cc00O",
        CHAT_MSG_PARTY = "6666FFP",
        CHAT_MSG_PARTY_LEADER = "6666FFP",
        CHAT_MSG_RAID = "cc6600R",
        CHAT_MSG_RAID_LEADER = "cc6600R",
        CHAT_MSG_WHISPER = "ff00ffW",
        -- we don't make one for ADDON_LOADED
    }
    if HCBframe.ChatIsShown == false and eventcolors[event] then
        HCBframe:Paint("|cff" .. eventcolors[event] .. "|r")
    elseif event == "ADDON_LOADED" then
        -- I don't like to do this here, but without it we have paint issues.
        -- Making it an else should save on wasted if checks though.
        HCBframe:Paint()
        RenderChatOnStartup()
    elseif event == "PLAYER_LOGOUT" then
        HCBchatIsShown = HCBframe.ChatIsShown
    end
end

HCBframe:SetScript("OnEvent", HCBframe.OnEvent);

-- Binding Variables
BINDING_HEADER_HIDECHATBUTTON = "Hide Chat Button";
BINDING_NAME_HCB_TOGGLE = "Toggle Chat Visibility";

-- Slash Commands for convenience :shrug: - might just use this in the future instead of displaying any button whatsoever, or make the button appear only on mouseover similarly to the cancer Raid Manager clASSic button...
SLASH_HCB1 = "/hcb"
SlashCmdList["HCB"] = function(arg)
    if arg == "default" or arg == "reset" then
        HCBframe:RestoreDefaults()
    else
        HCBframe:ToggleVisible()
    end
end