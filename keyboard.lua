local wezterm = require 'wezterm'

local module = {}

function module.apply_to_config(config)
  config.keys = {
    { key = 'l', mods = 'ALT', action = wezterm.action.ShowLauncher },
    { key = 'L', mods = 'CTRL', action = wezterm.action.ShowDebugOverlay },
  }
end

-- return our module table
return module

