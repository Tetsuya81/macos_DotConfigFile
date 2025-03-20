local wezterm = require 'wezterm'

local theme = require 'theme'
local shortcuts = require 'shortcuts'


local config = {}
  theme.apply_to_config(config)
  shortcuts.apply_to_config(config)
return config
