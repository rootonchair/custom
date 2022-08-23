-- Just an example, supposed to be placed in /lua/custom/

local M = {}

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M.mappings = require "custom.mappings"

M.plugins = {
   user = require "custom.plugins"
}

M.ui = {
  theme = "gruvbox",
}

return M
