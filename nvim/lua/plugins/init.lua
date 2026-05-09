return {
 	{
    "Jezda1337/nvim-html-css",
    dependencies = { "hrsh7th/nvim-cmp" },
    opts = {
      enable_on = { "html" },   -- filetypes to activate on
      handlers = {
        definition = true,
        hover = true,
        completion = {
          style = "abbr",       -- how completions appear
        },
      },
      -- point to your stylesheet(s):
      file_extensions = { "css", "scss" },
      file_patterns = { "*.css", "*.scss" },
    },
  },	
  -- Formatting
  {
    "stevearc/conform.nvim",
    -- event = "BufWritePre", -- uncomment to enable format on save
    opts = require "configs.conform",
  },

  -- LSP
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- Linting
  {
    "mfussenegger/nvim-lint",
    event = "BufReadPost",
    config = function()
      require "configs.lint"
    end,
  },

  -- Animated cursor
  {
    "sphamba/smear-cursor.nvim",
    event = "VeryLazy",
  },

  -- Completion (blink)
  { import = "nvchad.blink.lazyspec" },

  -- Treesitter parsers
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim", "lua", "vimdoc",
        "python", "html", "css", "javascript", "typescript",
      },
    },


  },

}