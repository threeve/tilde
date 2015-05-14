" threeve's .gvimrc
"
" Author: Jason Foreman <jason@threeve.org>

" Use one of these preferred fonts
set guifont=Source_Code_Pro_for_Powerline:h12,Source_Code_Pro:h12,Menlo:h12,Consolas:h12,Inconsolata:h12

set guioptions=
set guioptions+=a	" integrate with OS pasteboard
set guioptions+=A	" same for modeless selection
set guioptions+=c	" console dialogs
set guioptions+=e	" GUI tab pages

" airline
autocmd GUIEnter * call s:TweakAirline()

function s:TweakAirline()
	if getfontname() =~ "for Powerline"
		" powerline symbols
		let g:airline_left_sep = ''
		let g:airline_left_alt_sep = ''
		let g:airline_right_sep = ''
		let g:airline_right_alt_sep = ''
		let g:airline_symbols.branch = ''
		let g:airline_symbols.readonly = ''
		let g:airline_symbols.linenr = ''
		let g:airline_powerline_fonts=1
	endif
	silent! AirlineReset
endfun
