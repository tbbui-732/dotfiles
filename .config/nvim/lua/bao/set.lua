-- uncomment if you only want block cursor
-- vim.opt.guicursor = ""

-- Based on cursor position, highlight the current line
vim.opt.cursorline = false

-- Line numbering
vim.opt.nu = true
vim.opt.relativenumber = true

-- White space sizing
local tabsize = 4
vim.opt.tabstop = tabsize
vim.opt.softtabstop = tabsize
vim.opt.shiftwidth = tabsize
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.wrap = false
vim.opt.linebreak = true

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
-- vim.opt.colorcolumn = "80"

vim.opt.updatetime = 50

vim.opt.laststatus = 2

-- disable comment continuation
vim.cmd("autocmd BufEnter * set formatoptions-=cro")
vim.cmd("autocmd BufEnter * setlocal formatoptions-=cro")

-- netrw settings
vim.cmd("let g:netrw_banner=0")
