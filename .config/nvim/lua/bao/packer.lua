-- This file can be loaded by calling `lua require('plugins')` from your init.vim Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Navigation
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use {
    'ThePrimeagen/harpoon',
    requires = {'nvim-lua/plenary.nvim'},
  }

  -- Colorschemes + Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require("nvim-treesitter.install").update { with_sync = true } end,
  }
  use {'catppuccin/nvim', as = 'catppuccin'}
  use {'sainnhe/gruvbox-material'}
  use {'sainnhe/sonokai'}
  use {'olivercederborg/poimandres.nvim'}
  use {'ishan9299/modus-theme-vim'}

  -- Language Server
  use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},
      {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'},

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-buffer'},
      {'hrsh7th/cmp-path'},
      {'saadparwaiz1/cmp_luasnip'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'hrsh7th/cmp-nvim-lua'},

      -- Snippets
      {'L3MON4D3/LuaSnip'},
      {'rafamadriz/friendly-snippets'},
    }
  }

  -- LaTex
  use {'lervag/vimtex'}

  -- Editing support
  --use {
  --  'nvim-tree/nvim-tree.lua',
  --  requires = {
  --    'nvim-tree/nvim-web-devicons',
  --  },
  --}
  -- use {'lukas-reineke/indent-blankline.nvim'}
  use {'ray-x/lsp_signature.nvim'}
  use {
    'windwp/nvim-autopairs',
    config = function() require("nvim-autopairs").setup {} end
  }
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt=true }
  }

end)
