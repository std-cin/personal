repeat task.wait() until game:IsLoaded()
local bedwarsid = {6872274481, 8444591321, 6872265039, 8560631822}
local function runFunction(func)
    func()
end


if table.find(bedwarsid, game.PlaceId) then
    game:GetService("StarterGui"):SetCore("SendNotification",{
        Title = "Loaded successfully!",
        Text = "Sown's Bedwars Stuff has been loaded successfully!",
        Duration = 5
    })
    runFunction(function()
        repeat task.wait until game:GetService("Players")
        for i, v in pairs(game:GetService("Players"):GetPlayers()) do
            local strings = {"aura", "piston", "table", "xylex", "7GrandDad", "auitsm", "anticheat", "nizhgger", "you", "she", "ez", "aimbot", "winstreak", "ware", "vxpe", "V1", "V2", "V3", "V4", " V5", "V6", "V7", "V8", "V9"}
            for i, str in pairs(strings) do
                if string.find(v.DisplayName or v.Name, str) then
                    game:GetService("StarterGui"):SetCore("SendNotification",{
                        Title = "HackerDetector",
                        Text = v.DisplayName.."(@"..v.Name..") might be cheating!",
                        Duration = 10
                    })
                end
            end
        end
    end)
    sethiddenproperty(game:WaitForChild("Lighting"), "Technology", "Compatibility")
	game:WaitForChild("Lighting").GlobalShadows = true
	game.Lighting.ClockTime = 14
else
    game:GetService("StarterGui"):SetCore("SendNotification",{
        Title = "Loaded successfully!",
        Text = "Sown's Roblox Stuff has been loaded successfully!",
        Duration = 5
    })
end