" basics
set nocompatible
syntax on
filetype plugin indent on
let mapleader = " "

" security: dont run random vim commands
set modelines=0

" system clipboard
set clipboard=unnamed

" show line numbers
"set number
set relativenumber
set noruler

" encoding
set encoding=utf-8

" text formatting (formatoptions is "tcq" by default!)
set colorcolumn=79
set textwidth=79
set nowrap

" indentatino
set expandtab               " convert tabs (\t) to spaces
set tabstop=4               " \t will appear as 4 spaces wide
set shiftwidth=4            " number of spaces when using shifting (<, >)
set softtabstop=4           " tab in insert mode is the same as 4 spaces
set shiftround              " round indents to multiple of 'shiftwidth'

" auto-indentation and c-like formatting
set autoindent              " copy indent from current line to new line
set cindent                 " similar to smartindent (c-like indentation)
set cinoptions=l1,g0,t0,(0,W4,:4  " defines how cindent behaves

" cursor
set scrolloff=4
set nocursorline

" allow hidden buffers
set hidden

" rendering
set ttyfast

" status bar
set laststatus=2

" last line
set showmode
set showcmd

" searching
set hlsearch
set incsearch
set ignorecase
set smartcase
set noshowmatch

" command-line completion
set wildmenu

" colorscheme (custom)
set t_Co=256
set background=dark
colorscheme dogrun

" --- REMAPS ---
" file navigation
nnoremap <leader>ef :Ex<CR>

" remove trailing white spaces
nnoremap <leader>ws :%s/\s\+$//e<CR>:noh<CR>

" --- NETRW ---
" hide unnecessary netrw information
let g:netrw_banner = 0
let g:netrw_list_hide = '.*\.swp$,.DS_Store,*/tmp/*,*.so,*.swp,*.zip,*.git,^\./$'
