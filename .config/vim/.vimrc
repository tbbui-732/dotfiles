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

" Cursor motion
set scrolloff=4
set backspace=indent,eol,start

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

" Core interface
highlight Normal         ctermfg=white       ctermbg=black
highlight LineNr         ctermfg=yellow        ctermbg=black
highlight ColorColumn    ctermbg=red

" Code elements
highlight Comment        ctermfg=gray        ctermbg=black
highlight Constant       ctermfg=white       ctermbg=black
highlight String         ctermfg=white       ctermbg=black
highlight Identifier     ctermfg=white       ctermbg=black
highlight Statement      ctermfg=white       ctermbg=black
highlight PreProc        ctermfg=white       ctermbg=black
highlight Type           ctermfg=white       ctermbg=black
highlight Special        ctermfg=white       ctermbg=black
highlight Underlined     ctermfg=white       ctermbg=black
highlight Todo           ctermfg=yellow      ctermbg=black

" Cursor line and number column
highlight CursorLine     cterm=none          ctermbg=darkgrey
highlight CursorLineNr   ctermfg=white        ctermbg=black

" Status line
highlight StatusLine     ctermfg=white       ctermbg=black
highlight StatusLineNC   ctermfg=grey        ctermbg=black

" Search highlights
highlight Search         ctermfg=black       ctermbg=white
highlight IncSearch      ctermfg=black       ctermbg=white

" Visual selection
highlight Visual         ctermfg=black       ctermbg=white

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
