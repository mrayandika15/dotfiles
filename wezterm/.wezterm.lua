-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = "Dark Pastel"
config.font = wezterm.font("JetBrains Mono", { weight = "Regular" })
config.font_size = 13

local act = wezterm.action

config.keys = {
	-- This will create a new horizontal split (ALT+s)
	{
		key = "s",
		mods = "CMD|SHIFT",
		action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},

	-- This will create a new vertical split (ALT+s)
	{
		key = "v",
		mods = "CMD|SHIFT",
		action = act.SplitVertical({ domain = "CurrentPaneDomain" }),
	},

	-- This will close the current pane (ALT+w)
	{
		key = "w",
		mods = "CMD|SHIFT",
		action = act.CloseCurrentPane({ confirm = true }),
	},

	-- Directional navigation
	{ key = "LeftArrow", mods = "CMD|SHIFT", action = act.ActivatePaneDirection("Left") },
	{ key = "DownArrow", mods = "CMD|SHIFT", action = act.ActivatePaneDirection("Down") },
	{ key = "UpArrow", mods = "CMD|SHIFT", action = act.ActivatePaneDirection("Up") },
	{ key = "RightArrow", mods = "CMD|SHIFT", action = act.ActivatePaneDirection("Right") },
	{
		key = "w",
		mods = "CMD|SHIFT",
		action = wezterm.action.CloseCurrentPane({ confirm = true }),
	},
}
-- and finally, return the configuration to wezterm
return config
