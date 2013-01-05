" prepare vundle {{{
	set nocompatible               " be iMproved
	filetype off                   " required!

	set runtimepath+=~/.vim/bundle/vundle/
	call vundle#rc()

	" let Vundle manage Vundle
	" required! 
	Bundle 'gmarik/vundle'
" }}}

" declare used bundles {{{
	Bundle 'mantiz/vim-plugin-dirsettings'
	Bundle 'mantiz/vim-plugin-autocomplpop'
	Bundle 'mantiz/vim-plugin-l9'
	Bundle 'jakobwesthoff/whitespacetrail'
	Bundle 'scrooloose/nerdcommenter'
	Bundle 'scrooloose/nerdtree'
	Bundle 'sophacles/vim-bundle-sparkup'
	Bundle 'tpope/vim-pathogen'
	Bundle 'nvie/vim-rst-tables'
	Bundle 'drmingdrmer/xptemplate'
	Bundle 'wzzrd/vim-bufexplorer'
	Bundle 'davidoc/taskpaper.vim'
	Bundle 'Lokaltog/vim-powerline'
	Bundle 'scrooloose/syntastic'
	Bundle 'wincent/Command-T'
	Bundle 'mileszs/ack.vim'
	Bundle 'xolox/vim-session'
	Bundle 'vim-scripts/VST'
	Bundle 'kien/ctrlp.vim'
	Bundle 'tpope/vim-fugitive'
	Bundle 'vim-scripts/vimwiki'
" }}}


" Source viminit files {{{
	for file in split(globpath(expand("<sfile>:p:h") . '/.vim/config/', '*.vim'))
		exec 'source ' . file
	endfor
" }}}

