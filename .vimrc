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

" UI chrome: status, messages, etc.
set display=lastline		" show as much of last line as possible
set fillchars=vert:│		" make the UI pretty
set fillchars+=stl:─		" NOTE: only looks good with appropriate
set fillchars+=stlnc:─		" highlights: StatusLine, StatusLineNC,
				" and VertSplit
set listchars=eol:↵,tab:⇥\ ,trail:␣
set laststatus=2		" always show status line
set ruler			" always show cursor position
set showcmd			" show partial commands
set visualbell t_vb=		" disable bells

" buffer and window management
set hidden			" allow hidden buffers (don't close)
set splitbelow			" open horizontal splits below
set splitright			" open vertical splits to the right
set switchbuf=usetab		" go to open windows if they exist

" Mapping Basic
let mapleader=","
set notimeout			" no timeout for mappings
set ttimeout			" DO timeout for keycodes
set ttimeoutlen=100		" short timeout for keycodes

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
