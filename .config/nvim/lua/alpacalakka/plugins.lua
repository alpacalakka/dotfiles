return {
  -- look & feel ---------------------------------------------------------------
  { 'catppuccin/nvim', name = 'catppuccin', lazy = false, priority = 1000,
    config = function() vim.cmd.colorscheme('catppuccin') end },

  -- syntax & folding ----------------------------------------------------------
  { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },

  -- fuzzy finder --------------------------------------------------------------
  { 'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' } },

  -- git signs -----------------------------------------------------------------
  { 'lewis6991/gitsigns.nvim', opts = {} },

  -- LSP / completion ----------------------------------------------------------
  { 'williamboman/mason.nvim',  build = ':MasonUpdate' },
  { 'neovim/nvim-lspconfig' },
  { 'hrsh7th/nvim-cmp',
    dependencies = { 'hrsh7th/cmp-nvim-lsp', 'L3MON4D3/LuaSnip' } },
}

