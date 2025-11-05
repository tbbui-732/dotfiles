-- [lazy]
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
    if vim.v.shell_error ~= 0 then
        vim.api.nvim_echo({
            { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
            { out, "WarningMsg" },
            { "\nPress any key to exit..." },
        }, true, {})
        vim.fn.getchar()
        os.exit(1)
    end
end
vim.opt.rtp:prepend(lazypath)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

require("lazy").setup({
    spec = {
        -- treesitter
        {
          'nvim-treesitter/nvim-treesitter',
          lazy = false,
          branch = 'main',
          build = ':TSUpdate'
        },
        { "neovim/nvim-lspconfig" },

        -- mason
        { "williamboman/mason.nvim",
          config = true,
          opts = {}
        },
        { "williamboman/mason-lspconfig.nvim", 	config = true },

        -- autocomplete
        { 'hrsh7th/cmp-nvim-lsp' },
        { 'hrsh7th/cmp-buffer' },
        { 'hrsh7th/cmp-path' },
        { 'hrsh7th/cmp-cmdline' },
        { 'hrsh7th/nvim-cmp' },
        { 'hrsh7th/vim-vsnip' }
    },
    install = { colorscheme = { "habamax" } },
    checker = { enabled = true },
})

-- [treesitter]
require("nvim-treesitter").setup({
    ensure_installed = { "python", "javascript", "c", "cpp", "lua" },
    highlight = {
        enable = true,
    },
    indent = {
        enable = true,
    }
})

-- [autocomplete]
local cmp = require('cmp')
cmp.setup({
  snippet = {
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body)  -- required for vsnip
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-Space>'] = cmp.mapping.complete(),     -- manual completion trigger
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
    ['<Tab>'] = cmp.mapping.select_next_item(),
    ['<S-Tab>'] = cmp.mapping.select_prev_item(),
  }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },   -- LSP suggestions
    { name = 'buffer' },     -- words from buffer
    { name = 'path' },       -- filesystem paths
  }),
})

-- LSP capabilities for nvim-cmp
local cmp_nvim_lsp = require('cmp_nvim_lsp')
local capabilities = cmp_nvim_lsp.default_capabilities()

-- Mason setup (install LSPs automatically)
require("mason").setup()
require("mason-lspconfig").setup({
  automatic_installation = true,
})

-- Optional: enable hover diagnostics automatically
vim.o.updatetime = 500
vim.api.nvim_create_autocmd("CursorHold", {
  pattern = "*",
  callback = function()
    local opts = {
      focusable = false,
      close_events = { "BufLeave", "CursorMoved", "InsertEnter", "FocusLost" },
      border = "rounded",
      source = "always",
      prefix = " ",
      scope = "cursor",
    }
    vim.diagnostic.open_float(nil, opts)
  end,
})
