-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- Window size
config.initial_cols = 100
config.initial_rows = 20
config.enable_tab_bar = false
config.default_cursor_style = 'BlinkingBlock'
-- Font & theme
config.font_size = 12
config.font = wezterm.font 'JetBrainsMonoNL Nerd Font'
config.color_scheme = 'rose-pine'
config.window_background_opacity = 0
config.win32_system_backdrop = 'Acrylic'
-- 🟢 Set PowerShell 7 as default shell
config.default_prog = { "C:\\Program Files\\PowerShell\\7\\pwsh.exe" }


-- Return config to wezterm
return config
