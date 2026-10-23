local variables = require("modules.variables")
local terminal = variables.terminal

hl.on("hyprland.start", function()
	hl.exec_cmd(terminal)
	hl.exec_cmd("discord --start-minimized")
	hl.exec_cmd("nm-applet & blueman-applet & waybar & dunst &")
	hl.exec_cmd("systemctl --user start hyprpolkitagent")
	hl.exec_cmd("waypaper --folder $HOME/.config/hypr/backgrounds --random --monitor All")
	math.randomseed(os.time())
	if math.random(0, 1) == 0 then
		hl.exec_cmd("eww open activate-linux")
	end
end)
