set nocompatible
let mapleader = " "
filetype plugin indent on

set modelines=0 " security: dont run random vim commands
set clipboard=unnamed " copy to system clipboard
set nowrap

" show line numbers
"set number
"set relativenumber
set ruler

set encoding=utf-8 " encoding

" indentation
set expandtab      " convert tabs (\t) to spaces
set tabstop=4      " \t will appear as 4 spaces wide
set shiftwidth=4   " number of spaces when using shifting (<, >)
set softtabstop=4  " tab in insert mode is the same as 4 spaces
set shiftround     " round indents to multiple of 'shiftwidth'

" auto-indentation and formatting
set autoindent                      " copy indent from current line to new line
set cindent                         " similar to smartindent (c-like indentation)
set cinoptions=l1,g0,t0,(0,W4,:4    " defines how cindent behaves
set formatoptions-="cro"

" cursor
set scrolloff=4
set cursorline

set hidden " allow hidden buffers
set ttyfast " rendering
set laststatus=2 " status bar

" last line
set showmode
set showcmd

" searching
set hlsearch
set incsearch
set ignorecase
set smartcase
set noshowmatch

set wildmenu " command-line completion

" colorscheme
syntax on
set background=dark
colo elflord

" mouse
set mouse=a

" netrw hotkey
nnoremap <leader>ef :Ex<CR>

" removes trailing white spaces
nnoremap <leader>ws :%s/\s\+$//e<CR>:noh<CR>

" netrw settings
let g:netrw_banner = 0
let g:netrw_list_hide = '.*\.swp$,.DS_Store,*/tmp/*,*.so,*.swp,*.zip,*.git,^\./$'
let g:netrw_bufsettings = 'noma nomod nobl nowrap ro'
