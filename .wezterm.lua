local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.color_scheme = 'Afterglow'
config.audible_bell = 'Disabled'
config.keys = {
    { key = 'd', mods = 'CMD', action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' } },
    { key = 'w', mods = 'CMD', action = wezterm.action.CloseCurrentPane { confirm = false } },
}

return config