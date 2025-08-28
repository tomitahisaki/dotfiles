local wezterm = require("wezterm")
local act = wezterm.action

-- override any keybinds you want
return {
	keys = {
		{
			key = "w", mods = "CTRL|SHIFT|ALT",
			action = wezterm.action.CloseCurrentPane { confirm = true },
		},
		-- Disable Ctrl+Shift+W (override)
    {
      key = "w",
      mods = "CTRL|SHIFT",
      action = wezterm.action.DisableDefaultAssignment,
    },
	},
	key_tables = {},
}
