local wezterm = require 'wezterm'
local keyboard = require 'keyboard'
local launch_menu = require 'launch_menu'
local mouse = require 'mouse'
local config = {}

keyboard.apply_to_config(config)
config.launch_menu = launch_menu.set(config)
config.mouse = mouse.set(config)

config.color_scheme = 'Batman'

-- config.keys = {
--   { key = 'l', mods = 'ALT', action = wezterm.action.ShowLauncher },
-- }
-- C:\msys64\msys2.exe
-- config.default_prog = { 'C:\\msys64\\msys2.exe' }
-- config.launch_menu = launch_menu

return config
