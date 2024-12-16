local wezterm = require("wezterm")

config = wezterm.config_builder()

config = {
	default_domain = "WSL:Ubuntu-24.04",
	automatically_reload_config = true,
	enable_tab_bar = false,
	window_close_confirmation = "NeverPrompt",
	window_decorations = "RESIZE",
	default_cursor_style = "BlinkingBar",
	color_scheme = "Nord (Gogh)",
	window_padding = {
		left = 1,
		right = 1,
		top = 1,
		bottom = 1,
	},
	keys = {
		{
			key = "t",
			mods = "CTRL",
			action = wezterm.action.SpawnTab("DefaultDomain"),
		},
	},
}

return config
