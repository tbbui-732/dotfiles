" Basics
set nocompatible
syntax on
filetype plugin indent on
let mapleader = " "

" Security
set modelines=0

" Show line numbers
set number
set relativenumber

" Show file stats
set ruler

" Encoding
set encoding=utf-8

" Whitespace
set nowrap
set formatoptions=tcqrn1
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set noshiftround
set autoindent
set smartindent
set cindent
set cinoptions=:0,l1,t0,g0

" Cursor motion
set scrolloff=4
set backspace=indent,eol,start
set cursorline

" Move up/down editor lines
nnoremap j gj
nnoremap k gk

" Allow hidden buffers
set hidden

" Rendering
set ttyfast

" Status bar
set laststatus=2

" Last line
set showmode
set showcmd

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
set wildmenu

" Colorscheme (terminal)
set t_Co=256
set background=dark

" File Navigation
nnoremap <leader>ef :Ex<CR>

" Disable comment continuation
autocmd FileType * set formatoptions-=cro

" Hide unnecessary netrw information
let g:netrw_banner = 0
let g:netrw_list_hide = '.*\.swp$,.DS_Store,*/tmp/*,*.so,*.swp,*.zip,*.git,^\./$'

" Command to remove ending white spaces
command! Strip %s/\s\+$//e

" Vertical line for limiting source code width
set colorcolumn=79

" system clipboard
set clipboard=unnamed
