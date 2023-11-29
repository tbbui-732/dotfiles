-- This file can be loaded by calling `lua require('plugins')` from your init.vim Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Treesitter
  use {
    "nvim-treesitter/nvim-treesitter", run = ":TSUpdate"
  }

  -- Navigation
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.x',
    -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Colorschemes
  use ({
    'NTBBloodbath/doom-one.nvim',
    setup = function()
      vim.g.doom_one_cursor_coloring = false
      vim.g.doom_one_terminal_colors = true
      vim.g.doom_one_italic_comments = false
      vim.g.doom_one_enable_treesitter = false
      vim.g.doom_one_transparent_background = false -- NOTE: handled by another internal function

      -- color whole diagnostic text or only underline
      vim.g.doom_one_diagnostics_text_color = false

      -- pumblend transparency
      vim.g.doom_one_pumblend_enable = false
      vim.g.doom_one_pumblend_transparency = 20

      -- plugin integration
      vim.g.doom_one_plugin_neorg = false
      vim.g.doom_one_plugin_barbar = false
      vim.g.doom_one_plugin_telescope = true
      vim.g.doom_one_plugin_neogit = false
      vim.g.doom_one_plugin_nvim_tree = false
      vim.g.doom_one_plugin_dashboard = false
      vim.g.doom_one_plugin_startify = false
      vim.g.doom_one_plugin_whichkey = false
      vim.g.doom_one_plugin_indent_blankline = false
      vim.g.doom_one_plugin_vim_illuminate = false
      vim.g.doom_one_plugin_lspsaga = false
    end,
  })

  use { "ellisonleao/gruvbox.nvim" }

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

  -- Rust
  use {'rust-lang/rust.vim'}

  -- LaTex
  use {'lervag/vimtex'}

  -- Editing support
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
  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  }
  use { 'nvim-tree/nvim-web-devicons' }
  use { 'lewis6991/gitsigns.nvim' }

  -- Organization and note taking software
  use {
    "nvim-neorg/neorg",
    run = ":Neorg sync-parsers",
    config = function()
      require("neorg").setup {
        load = {
          -- Enable all default modules -> "Load all switch"
          ["core.defaults"] = {},

          -- -- Manage work spaces
          ["core.dirman"] = {
            config = {
              workspaces = {
                personal = "~/Notes/Personal",
                school = "~/Notes/School"
              }
            }
          },
          --
          -- -- Enable icons
          -- ["core.concealer"] = {},
          --
          -- -- Completion
          -- ["core.completion"] = {}
        }
      }
    end
  }
end)
