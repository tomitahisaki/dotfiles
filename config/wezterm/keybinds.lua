local wezterm = require("wezterm")
local act = wezterm.action

-- override any keybinds you want
return {
	leader = { key = "a", mods = "CTRL", timeout_milliseconds = 1000 },
	keys = {
		{
			key = "w",
			mods = "CTRL|SHIFT|ALT",
			action = wezterm.action.CloseCurrentPane({ confirm = true }),
		},
		-- Disable Ctrl+Shift+W (override)
		{
			key = "w",
			mods = "CTRL|SHIFT",
			action = wezterm.action.DisableDefaultAssignment,
		},
		{ key = "n", mods = "CTRL", action = act.SwitchWorkspaceRelative(1) },
		{ key = "p", mods = "CTRL", action = act.SwitchWorkspaceRelative(-1) },
		{
			mods = "LEADER",
			key = "s",
			action = wezterm.action_callback(function(win, pane)
				-- workspace のリストを作成
				local workspaces = {}
				for i, name in ipairs(wezterm.mux.get_workspace_names()) do
					table.insert(workspaces, {
						id = name,
						label = string.format("%d. %s", i, name),
					})
				end
				local current = wezterm.mux.get_active_workspace()
				-- 選択メニューを起動
				win:perform_action(
					act.InputSelector({
						action = wezterm.action_callback(function(_, _, id, label)
							if not id and not label then
								wezterm.log_info("Workspace selection canceled") -- 入力が空ならキャンセル
							else
								win:perform_action(act.SwitchToWorkspace({ name = id }), pane) -- workspace を移動
							end
						end),
						title = "Select workspace",
						choices = workspaces,
						fuzzy = true,
						-- fuzzy_description = string.format("Select workspace: %s -> ", current), -- requires nightly build
					}),
					pane
				)
			end),
		},
		{
			-- Rename workspace
			mods = "LEADER",
			key = "$",
			action = act.PromptInputLine({
				description = "(wezterm) Set workspace title:",
				action = wezterm.action_callback(function(win, pane, line)
					if line then
						wezterm.mux.rename_workspace(wezterm.mux.get_active_workspace(), line)
					end
				end),
			}),
		},
		{
			-- Create new workspace
			mods = "LEADER|SHIFT",
			key = "S",
			action = act.PromptInputLine({
				description = "(wezterm) Create new workspace:",
				action = wezterm.action_callback(function(window, pane, line)
					if line then
						window:perform_action(
							act.SwitchToWorkspace({
								name = line,
							}),
							pane
						)
					end
				end),
			}),
		},
	},
	key_tables = {},
}
