" threeve's .vimrc
"
" Author: Jason Foreman <jason@threeve.org>

set nocompatible		" Welcome to the future.

" Pathogen: http://github.com/tpope/vim-pathogen
silent! call pathogen#infect()
silent! call pathogen#infect('~/Source/vim-bundles')

set background=dark		" Prefer dark background

syntax on			" syntax highlighting GO!
filetype plugin indent on	" file type detection and plugins GO!
