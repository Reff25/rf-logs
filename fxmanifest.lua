fx_version 'cerulean'
game 'gta5'

author 'rf-scripting'
description 'Advanced Discord Logging System with all categories'
version '1.0.0'

-- This tells Cfx Escrow NOT to encrypt the config file
escrow_ignore {
    'config.lua'
}

shared_script 'config.lua'
server_script 'server.lua'

-- Export the logging function so other scripts can use it
export 'SendLog'