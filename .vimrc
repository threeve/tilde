" threeve's .vimrc
"
" Author: Jason Foreman <jason@threeve.org>

set nocompatible

" Pathogen: http://github.com/tpope/vim-pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
silent! call pathogen#infect()
silent! call pathogen#infect('~/Source/vim-bundles')

" Basic Settings
set noswapfile

" Colors, styles, etc.
set background=dark
colorscheme base16-default

syntax on
filetype plugin indent on

" UI chrome: status, messages, etc.
set display=lastline
set fillchars=vert:│
set listchars=eol:¬,tab:⇥\ ,trail:␣
set laststatus=2
set noshowmode
set previewheight=20
set pumheight=8
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
nnoremap ; :
nnoremap <silent> <c-l> :nohl<cr><c-l>
nnoremap <leader>ev :split $MYVIMRC<cr>
nnoremap <leader>eg :split $MYGVIMRC<cr>
nnoremap <leader>P :set invpaste<cr>

nnoremap - :Dirvish<cr>

" fugitive: <leader>g
nnoremap <leader>gb :Gblame<cr>
nnoremap <leader>gd :Gdiff<cr>
nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>gv :Gitv!<cr>
nnoremap <leader>gV :Gitv<cr>

" ctrlp
let g:ctrlp_max_files = 0
