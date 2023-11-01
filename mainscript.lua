local Players = game:GetService("Players")

-- Join to discord.gg/rippers
-- Define a function to check if a player is whitelisted
local function isPlayerWhitelisted(player)
    local gameIdToCheck = "152177764033" -- Replace with the game ID you want to check
    local url = "https://website.com/whitelist.php?game_id=" .. gameIdToCheck

    local success, response = pcall(function()
        return game:GetService("HttpService"):GetAsync(url)
    end)

    if success and response == "game whitelisted" then
        return true
    else
        return false
    end
end

Players.PlayerAdded:Connect(function(player)
    if not isPlayerWhitelisted(player) then
        player:Kick("You are not whitelisted on this server.")
    end
end)