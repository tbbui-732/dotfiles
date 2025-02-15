-- This file can be loaded by calling `lua require('plugins')` from your init.vim Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Colorschemes
    use { 'nordtheme/vim' }
    use { 'miikanissi/modus-themes.nvim' }
    use { 'p00f/alabaster.nvim' }

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

    -- Editing support
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    --use {
        --    'nvim-lualine/lualine.nvim',
        --    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
        --}
    use { 'ray-x/lsp_signature.nvim' }
    use { 'nvim-tree/nvim-web-devicons' }
    use { 'lewis6991/gitsigns.nvim' }
    use { 'm4xshen/autoclose.nvim' }
    
    -- For fun 
    use { 'ThePrimeagen/vim-be-good' }
end)
