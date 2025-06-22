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
  {
    "nvim-treesitter/nvim-treesitter-context",
    event = "BufReadPost",
    config = function()
      require("treesitter-context").setup {
        enable = true,
        max_lines = 3, -- How many lines the context window can span
        trim_scope = "outer",
        mode = "cursor", -- Show context for the line where the cursor is
        zindex = 20,
      }
    end,
  },
  { -- TODO: i don't think i use this anymore
    "ruifm/gitlinker.nvim",
    dependencies = "nvim-lua/plenary.nvim",
    config = function()
      require("gitlinker").setup {
        mappings = nil, -- disable default keymaps
      }
    end,
  },
  {
    "kylechui/nvim-surround",
    version = "^3.0.0", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup {
        -- Configuration here, or leave empty to use defaults
      }
    end,
  },
  {
    "tpope/vim-fugitive",
    lazy = false, -- load immediately (optional)
    config = function()
      -- any fugitive-specific setup if you want (usually none needed)
    end,
  },
  {
    "windwp/nvim-ts-autotag",
    event = "InsertEnter",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "html",
        "javascript",
        "typescript",
        "tsx",
        "vue",
        "lua",
      },
    },
  },
}
