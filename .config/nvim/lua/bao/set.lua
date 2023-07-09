-- uncomment if you only want block cursor
--vim.opt.guicursor = ""

-- uncomment if you want normal cursor
vim.opt.guicursor = "n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20"

vim.opt.cursorline = true

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = true
vim.opt.linebreak = true

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

vim.opt.updatetime = 50

-- -- underline current line
-- vim.cmd('autocmd BufEnter * hi clear CursorLine') -- clear any previous highlighting of the current line
-- vim.cmd('autocmd BufEnter * hi CursorLine gui=underline') -- set the current line to be underlined

-- disable comment continuation
vim.cmd("autocmd BufEnter * set formatoptions-=cro")
vim.cmd("autocmd BufEnter * setlocal formatoptions-=cro")

-- netrw settings
vim.cmd("let g:netrw_banner=0")
vim.cmd("let g:netrw_liststyle=0")
