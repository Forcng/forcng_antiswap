fx_version 'cerulean'
games { 'gta5' }
author 'Forcng'

description ''
version '1.0.0'
lua54 'yes'
author 'Forcng'

client_scripts {
    'clHandlers/*.lua',
}

server_scripts {
    'svHandlers/*.lua',
}

shared_scripts {
    'sharedHandlers/*.lua',
    '@ox_lib/init.lua',
    '@es_extended/imports.lua'
}
