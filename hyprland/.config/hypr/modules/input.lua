local variables = require("modules.variables")
local kbLayout = variables.kbLayout

hl.config({
	input = {
		kb_layout = kbLayout, -- I use a Norwegian Layout
		kb_variant = "",
		kb_model = "",
		kb_options = "",
		kb_rules = "",

		follow_mouse = 1,

		sensitivity = 0, -- -1.0 - 1.0, 0 means no modification.

		touchpad = {
			natural_scroll = false,
		},
	},
	cursor = {
		no_hardware_cursors = true,
	},
	xwayland = {
		force_zero_scaling = true,
	},
})
