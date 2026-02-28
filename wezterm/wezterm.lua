local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.default_prog = { "zsh" }

config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

config.adjust_window_size_when_changing_font_size = false
config.enable_tab_bar = false
config.colors = {
	background = "#1a1b26",
}

return config
