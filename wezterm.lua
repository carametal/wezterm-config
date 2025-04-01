-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()


config.colors = {
--  foreground = '#5ece6d'
}

config.font = wezterm.font 'HackGen Console NF'
config.font_size = 17.0
config.default_cursor_style = "BlinkingBlock"
config.inactive_pane_hsb = {
  hue = 0.1
}

config.keys = {
  {
    key = 'd',
    mods = 'CMD',
    action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' }
  },
  {
    key = 'd',
    mods = 'CMD|SHIFT',
    action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' }
  },
  {
    key = '[',
    mods = 'CMD',
    action = wezterm.action.ActivatePaneDirection 'Prev',
  },
  {
    key = ']',
    mods = 'CMD',
    action = wezterm.action.ActivatePaneDirection 'Next',
  },
  {
    key = 'LeftArrow',
    mods = 'CMD',
    action = wezterm.action.ActivatePaneDirection 'Left',
  },
  {
    key = 'RightArrow',
    mods = 'CMD',
    action = wezterm.action.ActivatePaneDirection 'Right',
  },
  {
    key = 'UpArrow',
    mods = 'CMD',
    action = wezterm.action.ActivatePaneDirection 'Up',
  },
  {
    key = 'DownArrow',
    mods = 'CMD',
    action = wezterm.action.ActivatePaneDirection 'Down',
  },
  {
    key = 'RightArrow',
    mods = 'CMD|SHIFT',
    action = wezterm.action.AdjustPaneSize { 'Right', 5 }
  },
  {
    key = 'LeftArrow',
    mods = 'CMD|SHIFT',
    action = wezterm.action.AdjustPaneSize { 'Left', 5 }
  },
  {
    key = 'UpArrow',
    mods = 'CMD|SHIFT',
    action = wezterm.action.AdjustPaneSize { 'Up', 5 }
  },
  {
    key = 'DownArrow',
    mods = 'CMD|SHIFT',
    action = wezterm.action.AdjustPaneSize { 'Down', 5 }
  },
  {
    key = '¥',
    mods = 'OPT',
    action = wezterm.action.SendString("\\"),
  }
}

config.harfbuzz_features = { 'calt=0', 'clig=0', 'liga=0' }

return config
