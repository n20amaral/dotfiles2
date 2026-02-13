vim.pack.add({
  -- dependencies
  'https://github.com/nvim-lua/plenary.nvim', -- for telescope
  'https://github.com/nvim-tree/nvim-web-devicons', -- for nvim-treesitter and lualine
  'https://github.com/mason-org/mason.nvim', -- for mason-lspconfig

  -- colorschemes
  'https://github.com/folke/tokyonight.nvim',
  'https://github.com/catppuccin/nvim',
  
  -- essentials
  'https://github.com/nvim-telescope/telescope.nvim',
  'https://github.com/stevearc/oil.nvim',

  -- coding
  'https://github.com/nvim-treesitter/nvim-treesitter',
  'https://github.com/neovim/nvim-lspconfig',
  'https://github.com/mason-org/mason-lspconfig.nvim',
  { 
    src = 'https://github.com/saghen/blink.cmp',
    version = 'v1.9.1'
   },

   -- ui
   'https://github.com/nvim-lualine/lualine.nvim',
   'https://github.com/akinsho/bufferline.nvim',
   'https://github.com/lukas-reineke/indent-blankline.nvim',
})

require('options')
require('colorschemes')
require('essentials')
require('coding')
require('ui')
