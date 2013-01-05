
" Files, backups and undo {{{
	" Turn backup off, since most stuff is in SVN, git anyway...
	set nobackup
	set nowb
	set noswapfile

	" Persistent undo
	try
		if MySys() == "windows"
			set undodir=C:\Windows\Temp
		else
			set undodir=~/.vim/local/undodir
		endif

    	set undofile
	catch
	endtry

" }}}

	set wildignore+=*.gch,.git,.vim

	set noequalalways
	set winheight=10
	set winminheight=10
	set winheight=999
