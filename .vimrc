" threeve's .vimrc
"
" Author: Jason Foreman <jason@threeve.org>

set nocompatible

" Pathogen: http://github.com/tpope/vim-pathogen
silent! call pathogen#infect()
silent! call pathogen#infect('~/Source/vim-bundles')

" Basic Settings
set noswapfile

" Colors, styles, etc.
set background=dark
colorscheme xoria256

syntax on
filetype plugin indent on

" UI chrome: status, messages, etc.
set display=lastline
set fillchars=vert:│
set fillchars+=stl:─
set fillchars+=stlnc:─
set listchars=eol:↵,tab:⇥\ ,trail:␣
set laststatus=2
set ruler
set showcmd
set visualbell t_vb=

" buffer and window management
set hidden
set splitbelow
set splitright
set switchbuf=usetab

" Mapping Basic
let mapleader=","
set notimeout
set ttimeout
set ttimeoutlen=100

" Searching
set hlsearch
set ignorecase
set incsearch
set showmatch
set smartcase
set wrapscan

" Shortcut Mappings
nnoremap <leader>ev :vsplit $MYVIMRC<cr>

" fugitive
nnoremap <leader>gb :Gblame<cr>
nnoremap <leader>gd :Gdiff<cr>
nnoremap <leader>gs :Gstatus<cr>
