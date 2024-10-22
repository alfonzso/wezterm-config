
local wezterm = require 'wezterm'

-- This is the module table that we will export
local module = {}

-- This function is private to this module and is not visible
-- outside.
-- local function private_helper()
--   wezterm.log_error 'hello!'
-- end

-- define a function in the module table.
-- Only functions defined in `module` will be exported to
-- code that imports this module.
-- The suggested convention for making modules that update
-- the config is for them to export an `apply_to_config`
-- function that accepts the config object, like this:

function module.set(config)
   local launch_menu = {}
   local msys_args = { "cmd.exe ", "/k", "C:\\msys64\\msys2_shell.cmd -defterm -here -no-start -ucrt64 -shell bash" }

   if wezterm.target_triple == "x86_64-pc-windows-msvc" then
   	table.insert(launch_menu, {
   		label = "PowerShell",
   		args = { "powershell", "-nol" },
   	})
   	table.insert(launch_menu, {
   		label = "MSYS UCRT64",
   		args = msys_args
   	})
   	-- config.default_prog = { "pwsh", "-nol" }
   	config.default_prog = msys_args
   end
   return launch_menu
end

return module
