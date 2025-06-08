return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- loads before writing buffer
    config = function()
      require("conform").setup(require "configs.conform")
    end,
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = require "configs.telescope",
  },
  {
    "nvim-tree/nvim-tree.lua",
    opts = {
      filters = {
        dotfiles = false, -- This will show dotfiles like .terraform
      },
      git = {
        enable = true,
        ignore = false, -- This ensures .gitignored files still show
      },
    },
  },
}
