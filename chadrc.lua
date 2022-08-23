-- Just an example, supposed to be placed in /lua/custom/

local M = {}

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

local customPlugins = require "custom.plugins"

M.plugins = {
  default_plugin_remove = {
    "rafamadriz/friendly-snippets",
  },
  install = customPlugins,
  options = {
    lspconfig = {
      setup_lspconf = "custom.plugins.lspconfig",
    }
  }
}

M.ui = {
  theme = "onedark",
}

return M
