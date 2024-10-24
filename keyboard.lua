local wezterm = require 'wezterm'

local module = {}

function module.apply_to_config(config, feature)
  config.keys = {
    { key = 'l', mods = 'ALT', action = wezterm.action.ShowLauncher },
    { key = 'L', mods = 'ALT', action = wezterm.action.ShowDebugOverlay },
    { key = 'k', mods = 'ALT', action = wezterm.action_callback(function(window, pane)
      feature.theme_switcher(window, pane)
    end) },
  }
end

-- return our module table
return module

