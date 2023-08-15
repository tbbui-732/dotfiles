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
    use { "ellisonleao/gruvbox.nvim" }
    use { 'kaiuri/nvim-juliana',
        config = function()
            require 'nvim-juliana'.setup { --[=[ configuration --]=] }
        end
    }
    use {"tbbui-732/aquarium-vim"}
    use {"olivercederborg/poimandres.nvim"}

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
end)
