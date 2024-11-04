local wezterm = require 'wezterm'
local act = wezterm.action
local module = {}

function module.set(config)
  -- config.keys = {
  --   { key = 'l', mods = 'ALT', action = wezterm.action.ShowLauncher },
  -- }
  config.mouse_bindings = {
    {
      event = { Down = { streak = 1, button = "Right" } },
      mods = "NONE",
      action = wezterm.action_callback(function(window, pane)
        local has_selection = window:get_selection_text_for_pane(pane) ~= ""
        -- wezterm.log_error 'hello!'
        wezterm.log_info 'keeeeee'
        if has_selection then
          window:perform_action(act.CopyTo("ClipboardAndPrimarySelection"), pane)
          window:perform_action(act.ClearSelection, pane)
        else
          window:perform_action(act({ PasteFrom = "Clipboard" }), pane)
        end
      end),
    },
  }
end

return module

