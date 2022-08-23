return {
   ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
   },

   ["goolord/alpha-nvim"] = {
      disable = false,
   },

   ["elkowar/yuck.vim"] = { ft = "yuck" },

   ["max397574/better-escape.nvim"] = {
      event = "InsertEnter",
      config = function()
         require("better_escape").setup()
      end,
   },

   ["jose-elias-alvarez/null-ls.nvim"] = {
      after = "nvim-lspconfig",
      config = function()
         require "custom.plugins.null-ls"
      end,
   },

   ["williamboman/mason.nvim"] = {
      ensure_installed = {
        -- lua stuff
        "lua-language-server",
        "stylua",

        -- web dev
        "css-lsp",
        "html-lsp",
        "typescript-language-server",
        "json-lsp",
        "yaml-language-server",

        -- cpp dev
        "clang-format",
        "clangd",
        "cpplint",

        -- python dev
        "isort",
        "black",
        "flake8",
        "mypy",
        "pyright",
        "pylint",
        "python-lsp-server",

        -- shell
        "shfmt",
        "shellcheck",
        "dockerfile-language-server",
      },
   },
}
