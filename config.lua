Config = {}

Config.ServerName = "Your Server Name"

-- 🌐 DISCORD WEBHOOKS 🌐
-- Create a channel for each of these and paste the webhook link.
Config.Webhooks = {
    -- System & Auto Logs
    ["joins_leaves"]    = "YOUR_WEBHOOK_LINK_HERE",
    ["chat_commands"]   = "YOUR_WEBHOOK_LINK_HERE",
    ["kills_deaths"]    = "YOUR_WEBHOOK_LINK_HERE",
    ["damage_logs"]     = "YOUR_WEBHOOK_LINK_HERE",
    ["anticheat"]       = "YOUR_WEBHOOK_LINK_HERE", -- Used for failed/refunded scripts

    -- Admin & Staff
    ["admin_commands"]  = "YOUR_WEBHOOK_LINK_HERE",
    ["bans_kicks"]      = "YOUR_WEBHOOK_LINK_HERE",
    ["spectate_logs"]   = "YOUR_WEBHOOK_LINK_HERE",
    ["revive"]          = "YOUR_WEBHOOK_LINK_HERE",
    ["spawn_vehicle"]   = "YOUR_WEBHOOK_LINK_HERE",
    ["admincar"]        = "YOUR_WEBHOOK_LINK_HERE",
    ["fix"]             = "YOUR_WEBHOOK_LINK_HERE",
    ["tp_coords"]       = "YOUR_WEBHOOK_LINK_HERE",
    ["bring"]           = "YOUR_WEBHOOK_LINK_HERE",
    ["noclip"]          = "YOUR_WEBHOOK_LINK_HERE",
    ["admintoggle"]     = "YOUR_WEBHOOK_LINK_HERE",
    ["names"]           = "YOUR_WEBHOOK_LINK_HERE",
    ["blips"]           = "YOUR_WEBHOOK_LINK_HERE",
    ["godmode"]         = "YOUR_WEBHOOK_LINK_HERE",
    ["givemoney"]       = "YOUR_WEBHOOK_LINK_HERE",
    ["setmoney"]        = "YOUR_WEBHOOK_LINK_HERE",
    ["customs"]         = "YOUR_WEBHOOK_LINK_HERE",
    ["maxmods"]         = "YOUR_WEBHOOK_LINK_HERE",
    
    -- Reports
    ["reports_made"]    = "YOUR_WEBHOOK_LINK_HERE", -- 911, 311, EMS, and Admin Reports
    ["report_handle"]   = "YOUR_WEBHOOK_LINK_HERE",

    -- Economy, Banking & Inventory
    ["economy_logs"]    = "YOUR_WEBHOOK_LINK_HERE", -- Auto QBCore money & Sub-accounts
    ["money_add"]       = "YOUR_WEBHOOK_LINK_HERE",
    ["money_drop"]      = "YOUR_WEBHOOK_LINK_HERE",
    ["bank_transfers"]  = "YOUR_WEBHOOK_LINK_HERE", -- Transfers & ATMs
    ["boss_menu"]       = "YOUR_WEBHOOK_LINK_HERE", -- Society deposits/withdrawals
    ["inv_add"]         = "YOUR_WEBHOOK_LINK_HERE",
    ["inv_drop"]        = "YOUR_WEBHOOK_LINK_HERE",
    ["stash"]           = "YOUR_WEBHOOK_LINK_HERE",
    ["trunk"]           = "YOUR_WEBHOOK_LINK_HERE",
    ["buy_vehicle"]     = "YOUR_WEBHOOK_LINK_HERE",
    ["sell_vehicle"]    = "YOUR_WEBHOOK_LINK_HERE",

    -- Police & EMS
    ["police_actions"]  = "YOUR_WEBHOOK_LINK_HERE", -- Generic police actions & Dispatch
    ["ems_actions"]     = "YOUR_WEBHOOK_LINK_HERE",
    ["evi_stash_add"]   = "YOUR_WEBHOOK_LINK_HERE",
    ["evi_stash_take"]  = "YOUR_WEBHOOK_LINK_HERE",
    ["jail"]            = "YOUR_WEBHOOK_LINK_HERE",
    ["cuff"]            = "YOUR_WEBHOOK_LINK_HERE",
    ["bill_fine"]       = "YOUR_WEBHOOK_LINK_HERE",
    ["impound"]         = "YOUR_WEBHOOK_LINK_HERE",
    ["revoke_lic"]      = "YOUR_WEBHOOK_LINK_HERE",
    ["armory_take"]     = "YOUR_WEBHOOK_LINK_HERE",

    ["default"]         = "YOUR_WEBHOOK_LINK_HERE"  -- Fallback if a category is missing
}

-- Embed Colors (Decimal format)
Config.Colors = {
    Green = 3066993,
    Red = 15158332,
    Blue = 3447003,
    Orange = 15105570,
    Yellow = 16776960,
    Purple = 10181046
}