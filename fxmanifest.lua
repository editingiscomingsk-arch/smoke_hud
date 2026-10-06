fx_version 'cerulean'
game 'gta5'
lua54 'yes'

description 'Smoke Hud Windy'

shared_scripts {
    'config.lua',
    'locales/locale.lua',
}

client_scripts{
    'open/custom.lua',
    'client/utils.lua',
    'client/nui.lua',
    'client/main.lua',
    'client/vehicle.lua',
}

server_scripts{
    'server/utils.lua',
    'server/main.lua',
}

ui_page 'ui/index.html'

files {
    'ui/**/*.*',
    'ui/*.*',
}

escrow_ignore {
    'config.lua',
    'locales/locale.lua',
    'open/custom.lua',
}
dependency '/assetpacks'