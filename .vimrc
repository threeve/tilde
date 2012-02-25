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

" Mapping Basic
let mapleader=","

" Shortcut Mappings
nnoremap <leader>ev :vsplit $MYVIMRC<cr>

" fugitive
nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>gd :Gdiff<cr>
nnoremap <leader>gb :Gblame<cr>
