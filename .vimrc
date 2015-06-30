" threeve's .vimrc
"
" Author: Jason Foreman <jason@threeve.org>

set nocompatible

" Basic Settings
set noswapfile
set virtualedit=block

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
set updatetime=500
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

" terminal settings
set mouse=a
if exists('$TMUX')
	set ttymouse=xterm2
	let g:airline#extensions#tmuxline#enabled = 0
endif
if $TERM_PROFILE =~ "powerline" || $ITERM_PROFILE =~ "powerline"
	if !exists('g:airline_symbols')
		let g:airline_symbols = {}
	endif
	let g:airline_left_sep = '⮀'
	let g:airline_left_alt_sep = '⮁'
	let g:airline_right_sep = '⮂'
	let g:airline_right_alt_sep = '⮃'
	let g:airline_symbols.branch = '⭠'
	let g:airline_symbols.readonly = '⭤'
	let g:airline_symbols.linenr = '⭡'
	let g:airline_powerline_fonts=1

	let g:tmuxline_separators = {
				\ 'left' : '⮀',
				\ 'left_alt': '⮁',
				\ 'right' : '⮂',
				\ 'right_alt' : '⮃',
				\ 'space' : ' '}
endif

" Shortcut Mappings
nnoremap ; :
nnoremap <silent> <c-l> :nohl<cr><c-l>
nnoremap <leader>ev :split $MYVIMRC<cr>
nnoremap <leader>eg :split $MYGVIMRC<cr>
nnoremap <silent> <leader>p :set paste!<cr>
nnoremap <leader>/ :grep<space>
nnoremap <leader>w/ :silent !open "http://www.google.com/search?q=<cword>"<cr>

" Plugins
filetype off

runtime macros/matchit.vim

if executable('fzf')

	function! s:buflist()
		redir => ls
		silent ls
		redir END
		return split(ls, '\n')
	endfunction

	function! s:bufopen(e)
		execute 'buffer' matchstr(a:e, '^[ 0-9]*')
	endfunction

	set rtp+=/usr/local/Cellar/fzf/HEAD
	" search directory of current file
	nnoremap <silent> <c-p> :FZF %:p:h<cr>
	" search pwd
	nnoremap <silent> g/.   :FZF<cr>
	" search buffers
	command! -nargs=0 -bar FZFBuffer call fzf#run({
	      \   'source':  reverse(<SID>buflist()),
	      \   'sink':    function('<SID>bufopen'),
	      \   'options': '+m',
	      \   'down':    len(<SID>buflist()) + 2
	      \ })
	nnoremap <silent> g/b :FZFBuffer<cr>
endif

call plug#begin('~/.vim/bundle')

" ui stuff
Plug 'chriskempson/base16-vim'
Plug 'bling/vim-airline'
Plug 'edkolev/tmuxline.vim'
Plug 'edkolev/promptline.vim'

Plug 'justinmk/vim-dirvish'
nnoremap - :Dirvish<cr>

" Plug 'christoomey/vim-tmux-navigator'

" fugitive/git: <leader>g
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'gregsexton/gitv'
nnoremap <leader>gb :Gblame<cr>
nnoremap <leader>gd :Gdiff<cr>
nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>gv :Gitv!<cr>
nnoremap <leader>gV :Gitv<cr>
nnoremap <leader>g/ :Ggrep<space>

" languages
Plug 'elixir-lang/vim-elixir'
Plug 'fsharp/vim-fsharp'
Plug 'rust-lang/rust.vim'
Plug 'scrooloose/syntastic'
let g:syntastic_vim_checkers = ['vint']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_wq = 0

" Plug 'Valloric/YouCompleteMe'

" misc editing enhancements
Plug 'AndrewRadev/inline_edit.vim'

" Plug 'takac/vim-spotifysearch'

call plug#end()

syntax on
filetype plugin indent on

" Colors, styles, etc.
set background=dark
colorscheme base16-default
