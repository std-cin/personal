local glib = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local gamename = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name

local Window = glib.CreateLib("Sown's Script Hub: "..gamename, "Ocean")

local modules = {
    ["Clicking"] = require(game:GetService("StarterPlayer").StarterPlayerScripts.Library.Clicking),
    ["Stats"] = require(game:GetService("ReplicatedStorage").Modules.Event)
}

local lplr = game.Players.LocalPlayer
local hrp = lplr.Character.HumanoidRootPart



local Automation = Window:NewTab("Automation")
local Essential = Automation:NewSection("Essential Autofarms")
Essential:NewButton("AutoCollect", "Automatically collects easter eggs for you.", function()
    for i, v in pairs(game:GetService("Workspace").Scripts.CollectEasterEggs.Storage:GetChildren()) do
        hrp.CFrame = v.Primary.CFrame
        task.wait(0.1)
    end
end)

local autohatch = Automation:NewSection("Autohatch")
local eggs = {}
local selected
for i, v in pairs(game:GetService("Workspace").Scripts.Eggs:GetChildren()) do
    table.insert(eggs, v.Name)
end
autohatch:NewDropdown("Eggs", "Select an egg", eggs, function(currentOption)
    selected = currentOption
    print(currentOption)
end)