local variables = require("modules.variables")
local kbLayout = variables.kbLayout

hl.config({
	input = {
		kb_layout = kbLayout,
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

-- Touchpad support
hl.gesture({ fingers = 3, direction = "horizontal", action = "workspace" }) -- Move to another workspace with 3 fingers on touchpad
hl.gesture({ fingers = 2, direction = "pinch", action = "cursor_zoom", mode = "live" }) -- Zoom in/out by pinching 2 fingers on touchpad
