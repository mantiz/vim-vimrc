
augroup General " {{{
	autocmd!
	" Restore line number and column if reentering a file after having edited it
	" at least once. For this to work .viminfo in the home dir has to be writable by the user.
	autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
augroup END " }}}

augroup AutoReloadVimrc " {{{
	autocmd!
	autocmd bufwritepost $MYVIMRC source $MYVIMRC
augroup END " }}}

augroup HighlightCurrentLineInInsertMode " {{{
	autocmd!
	autocmd InsertLeave * set nocursorline
	autocmd InsertEnter * set cursorline
augroup END " }}}

