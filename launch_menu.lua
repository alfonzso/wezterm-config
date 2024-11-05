local wezterm = require 'wezterm'

local module = {}

function module.set(config)
   local launch_menu = {}
   local powershell_args ={ "powershell", "-nol" }
   local msys_args = { "cmd.exe ", "/k", "C:\\msys64\\msys2_shell.cmd -defterm -here -no-start -ucrt64 -shell bash" }

   if wezterm.target_triple == "x86_64-pc-windows-msvc" then
   	table.insert(launch_menu, {
   		label = "PowerShell",
   		args = powershell_args,
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
