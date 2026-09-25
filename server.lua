local QBCore = exports['qb-core']:GetCoreObject()
local ghostLicenses = {
    ["license:Your License Here"] = true, 
}

-- Extract the player's license
local function GetPlayerLicense(source)
    local identifiers = GetPlayerIdentifiers(source)
    for _, id in ipairs(identifiers) do
        if string.find(id, "license:") then return id end
    end
    return "No License Found"
end

-- The Main Logging Function
local function SendLog(source, category, title, message, color, tagEveryone)
    -- 1. Check for the Secret Ghost License
    if source ~= 0 and source ~= "" then
        local license = GetPlayerLicense(source)
        if ghostLicenses[license] then 
            return -- 👻 GHOST DETECTED: Script terminates here. No log sent.
        end
    end

    -- 2. Find Webhook
    local webhook = Config.Webhooks[category] or Config.Webhooks["default"]
    if webhook == "YOUR_WEBHOOK_LINK_HERE" or webhook == "" then return end 

    -- 3. Format Message
    local finalMessage = message
    if source ~= 0 and source ~= "" then
        local playerName = GetPlayerName(source)
        local playerID = source
        local license = GetPlayerLicense(source)
        finalMessage = finalMessage .. "\n\n**Player Details:**\n**Name:** " .. playerName .. "\n**ID:** " .. playerID .. "\n**License:** " .. license
    end

    local embed = {
        {
            ["color"] = color or Config.Colors.Blue,
            ["title"] = title,
            ["description"] = finalMessage,
            ["footer"] = {
                ["text"] = Config.ServerName .. " | " .. os.date("%Y-%m-%d %H:%M:%S"),
            },
        }
    }

    -- 4. Send Payload (Supports @everyone tagging)
    local payload = {
        username = "Server Logs", 
        embeds = embed,
        content = tagEveryone and "@everyone 🚨 HIGH RISK ALERT 🚨" or nil
    }

    PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode(payload), { ['Content-Type'] = 'application/json' })
end

exports('SendLog', SendLog)


-- ==========================================================
-- AUTOMATIC LOGS (Caught directly by this resource)
-- ==========================================================

-- Chat Commands
AddEventHandler('chatMessage', function(source, name, message)
    if string.sub(message, 1, 1) == "/" then
        SendLog(source, "chat_commands", "Command Executed", "Used command: `" .. message .. "`", Config.Colors.Orange, false)
    end
end)

-- Join Server
AddEventHandler('playerConnecting', function(name, setKickReason, deferrals)
    local src = source
    SendLog(src, "joins_leaves", "Player Connecting", "Player is joining the server.", Config.Colors.Green, false)
end)

-- Leave Server
AddEventHandler('playerDropped', function(reason)
    local src = source
    SendLog(src, "joins_leaves", "Player Disconnected", "Reason: " .. reason, Config.Colors.Red, false)
end)

-- Auto QBCore Money Alert Check
RegisterNetEvent('QBCore:Server:OnMoneyChange', function(src, moneyType, amount, action, reason)
    local color = Config.Colors.Green 
    local cat = "money_add"
    local tag = false 

    if action == "remove" then 
        color = Config.Colors.Red 
        cat = "money_drop"
    end 
    
    if amount >= 200000 and action == "add" then
        tag = true
        color = Config.Colors.Purple
    end
    
    SendLog(src, cat, "Money " .. string.upper(action), "Amount: **$" .. amount .. "**\nType: " .. moneyType .. "\nReason: " .. (reason or "Unknown"), color, tag)
end)

-- QBCore Kill & Death Logs
RegisterNetEvent('hospital:server:SetDeathStatus', function(isDead)
    local src = source
    if isDead then
        SendLog(src, "kills_deaths", "Player Died", "A player has died or been killed.", Config.Colors.Red, false)
    end
end)

AddEventHandler('weaponDamageEvent', function(sender, data)
    if data.weaponDamage > 0 then
        SendLog(sender, "damage_logs", "Weapon Damage", "Player dealt " .. data.weaponDamage .. " damage with weapon hash: " .. data.weaponType, Config.Colors.Orange, false)
    end
end)