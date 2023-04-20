syn.set_thread_identity(8)
local AutoTap = false
local AutoRebirth = false

--variables
shared.VapeIndependent = true
shared.CustomSaveVape = game.PlaceId
local glib = loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua", true))()
local gamename = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
local ReplicatedStorage= game:GetService("ReplicatedStorage")
local workspace = game:GetService("Workspace")
local function runFunc(func)
    func()
end
local modules = {
    ["Clicking"] = require(game:GetService("StarterPlayer").StarterPlayerScripts.Library.Clicking),
    ["Stats"] = require(game:GetService("ReplicatedStorage").Modules.Event)
}

local lplr = game.Players.LocalPlayer
local hrp = lplr.Character.HumanoidRootPart
--functions
local delay
local function autoclick()
    spawn(function()
        while AutoTap == true do
            ReplicatedStorage.Events.Click3:FireServer()
            task.wait(delay)
        end
    end)
end

--GUI
local Autofarm = glib.ObjectsThatCanBeSaved.CombatWindow.Api
runFunc(function() --AutoFarming 
    local autoclick = Autofarm.CreateOptionsButton({
        Name = "AutoClick",
        Function = function(callback)
            if callback then
                AutoTap = true
                autoclick()
            else
                AutoTap = false
            end
        end,
        HoverText = "Automatically clicks for you.",
        Default = false,
    })
    autoclick.CreateSlider({
        Name = "Delay",
        Min = 0,
        Max = 1,
        Function = function(val)
            delay = val
        end,
        HoverText = "How much time to wait before clicking again"
    })
end)


shared.VapeManualLoad = true