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
	let g:airline_powerline_fonts=1
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

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" ui stuff
Plugin 'chriskempson/base16-vim'
Plugin 'bling/vim-airline'
Plugin 'edkolev/tmuxline.vim'
Plugin 'edkolev/promptline.vim'

Plugin 'justinmk/vim-dirvish'
nnoremap - :Dirvish<cr>

" Plugin 'christoomey/vim-tmux-navigator'

" fugitive/git: <leader>g
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'gregsexton/gitv'
nnoremap <leader>gb :Gblame<cr>
nnoremap <leader>gd :Gdiff<cr>
nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>gv :Gitv!<cr>
nnoremap <leader>gV :Gitv<cr>
nnoremap <leader>g/ :Ggrep<space>

" languages
Plugin 'elixir-lang/vim-elixir'
Plugin 'fsharp/vim-fsharp'
Plugin 'rust-lang/rust.vim'
Plugin 'scrooloose/syntastic'
let g:syntastic_vim_checkers = ['vint']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_wq = 0

" Plugin 'Valloric/YouCompleteMe'

" misc editing enhancements
Plugin 'AndrewRadev/inline_edit.vim'

" Plugin 'takac/vim-spotifysearch'

call vundle#end()

syntax on
filetype plugin indent on

" Colors, styles, etc.
set background=dark
colorscheme base16-default
