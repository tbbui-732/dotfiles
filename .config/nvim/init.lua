-- Bootstrap lazy.nvim
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

-- [lazy]
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
        { 'hrsh7th/nvim-cmp' }
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

require("mason").setup()
require("mason-lspconfig").setup({
  automatic_installation = true,
})

-- [vimrc settings]
vim.opt.modelines = 0
vim.opt.clipboard = "unnamed"   -- use system clipboard
vim.opt.number = true           -- line numbers
vim.opt.relativenumber = true
vim.opt.ruler = true

vim.opt.encoding = "utf-8"

vim.opt.expandtab = true        -- convert tabs to spaces
vim.opt.tabstop = 4             -- how many spaces a tab counts for
vim.opt.shiftwidth = 4          -- number of spaces for indentation
vim.opt.softtabstop = 4         -- tab in insert mode behaves like 4 spaces
vim.opt.shiftround = true

vim.opt.autoindent = true       -- c-like formatting
vim.opt.cindent = true
vim.opt.cinoptions = "l1,g0,t0,(0,W4,:4"

vim.opt.scrolloff = 8           -- cursor
vim.opt.cursorline = true

vim.opt.hidden = true           -- hidden buffers / performance
vim.opt.ttyfast = true
vim.opt.laststatus = 2

vim.opt.showmode = true         -- last line indicators
vim.opt.showcmd = true

vim.opt.hlsearch = true         -- searching
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.showmatch = false

vim.opt.wildmenu = true         -- command-line

-- [remaps]
vim.keymap.set("n", "<leader>ef", ":Ex<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>ws", ":%s/\\s\\+$//e<CR>:noh<CR>", { noremap = true, silent = true })

-- [netrw]
vim.g.netrw_banner = 0
vim.g.netrw_list_hide = ".*\\.swp$,.DS_Store,*/tmp/*,*.so,*.swp,*.zip,*.git,^\\./$"
vim.g.netrw_bufsettings = "noma nomod nobl nowrap ro"

-- [hover info; cursor on symbol]
vim.o.updatetime = 500          -- shorter delay for cursorhold

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
