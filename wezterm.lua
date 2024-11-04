local wezterm = require 'wezterm'
local keyboard = require 'keyboard'
local launch_menu = require 'launch_menu'
local mouse = require 'mouse'
local theme_sw = require 'theme_sw'

local config = {}
if wezterm.config_builder then
  config = wezterm.config_builder()
end

keyboard.apply_to_config(config, theme_sw)
config.launch_menu = launch_menu.set(config)
-- config.mouse = mouse.set(config)
mouse.set(config)

config.color_scheme = 'Batman'
config.audible_bell = 'Disabled'
-- config.keys = {
--   { key = 'l', mods = 'ALT', action = wezterm.action.ShowLauncher },
-- }
-- C:\msys64\msys2.exe
-- config.default_prog = { 'C:\\msys64\\msys2.exe' }
-- config.launch_menu = launch_menu

config.default_domain = 'WSL:NixOS'

return config

