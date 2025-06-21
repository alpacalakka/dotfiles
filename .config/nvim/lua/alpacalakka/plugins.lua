return {
  { "catppuccin/nvim", name = "catppuccin", lazy = false, priority = 1000,
    config = function() vim.cmd.colorscheme("catppuccin") end },

  { "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    opts = {
      ensure_installed = { "lua", "vim", "vimdoc", "bash", "markdown" },
      highlight = { enable = true },
      incremental_selection = { enable = true },
      indent = { enable = true },
    } },

  { "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" } },

  { "lewis6991/gitsigns.nvim", opts = {} },

  { "williamboman/mason.nvim",
    lazy = false,
    build = function() pcall(vim.cmd, "MasonUpdate") end,
    config = function() require("mason").setup() end },

  { "williamboman/mason-lspconfig.nvim" },

  { "neovim/nvim-lspconfig" },

  { "hrsh7th/nvim-cmp",
    dependencies = { "hrsh7th/cmp-nvim-lsp", "L3MON4D3/LuaSnip" } },
}

