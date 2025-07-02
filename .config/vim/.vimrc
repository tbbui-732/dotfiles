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
set tabstop=4               " \t will appear as 4 spaces wide
set shiftwidth=4            " number of spaces when using '<<' and '>>'
set softtabstop=4           " tab in insert mode is the same as 4 spaces
set expandtab               " converts tabs to spaces
set noshiftround
set autoindent
set smartindent
set cindent
set cinoptions=:0,l1,t0,g0

" Cursor
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
set wildmenu
set noshowmatch

" Colorscheme (custom)
set t_Co=256
set background=dark
colorscheme dogrun

" File Navigation
nnoremap <leader>ef :Ex<CR>

" Disable comment continuation
autocmd FileType * set formatoptions-=cro

" Hide unnecessary netrw information
let g:netrw_banner = 0
let g:netrw_list_hide = '.*\.swp$,.DS_Store,*/tmp/*,*.so,*.swp,*.zip,*.git,^\./$'

" Command to remove ending white spaces
nnoremap <leader>ws :%s/\s\+$//e<CR>:noh<CR>

" Vertical line for limiting source code width
set colorcolumn=79

" system clipboard
set clipboard=unnamed
