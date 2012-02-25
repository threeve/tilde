" threeve's .vimrc
"
" Author: Jason Foreman <jason@threeve.org>

set nocompatible		" Welcome to the future.

" Pathogen: http://github.com/tpope/vim-pathogen
silent! call pathogen#infect()
silent! call pathogen#infect('~/Source/vim-bundles')

" Basic Settings
set noswapfile			" Having never, ever needed it, turn it off

" Colors, styles, etc.
set background=dark		" Prefer dark background

syntax on			" syntax highlighting GO!
filetype plugin indent on	" file type detection and plugins GO!

" buffer and window management
set hidden			" allow hidden buffers (don't close)
set splitbelow			" open horizontal splits below
set splitright			" open vertical splits to the right
set switchbuf=usetab		" go to open windows if they exist

" Mapping Basic
let mapleader=","

" Shortcut Mappings
nnoremap <leader>ev :vsplit $MYVIMRC<cr>

" fugitive
nnoremap <leader>gb :Gblame<cr>
nnoremap <leader>gd :Gdiff<cr>
nnoremap <leader>gs :Gstatus<cr>
