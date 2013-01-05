" Basic configuration {{{
	filetype plugin indent on
	syntax on

	set autochdir                     " AutoChange directory
	set autoindent                    " Restore current indentation on newline
	set backspace=indent,eol,start    " Allow using the backspace and del keys for indentations, lineendings and linestarts
	set copyindent
	set encoding=utf-8                " Default file encoding
	set formatoptions=qrocnt1         " These format options include the wrapping of all text (t) by default. This
	                                  " includes program source code if editing a programming language. The according
	                                  " ftplugin configs should set a more usable configuration for this.
	set history=100
	set hlsearch                      " Highlight all matching occurances
	set ignorecase
	set incsearch                     " Display matched pattern while searching
	set indentexpr=                   " Disable indentation by indentexpr
	set laststatus=2                  " Always show the status line (0=never, 1=only if there are two windows, 2=always)
	set list                          " Activate display of invisibles by default
	set listchars=tab:▸\ ,eol:¬
	set nocompatible                  " Disable vi compatibility mode
	set noexpandtab
	set nowrap
	set number                        " Show linenumbers by default
	set preserveindent
	set ruler                         " Display a statusbar including the cursor position
	set scrolloff=2
	set smartcase
	set smartindent                   " AutoIndent after lines ending with { and stuff
	set wildmenu                      " Use more sophistacted path completion featuring a menu on the status bar
	set wildmode=list:full

	" Bells {{{
		set noerrorbells
		set visualbell
		set t_vb=
	" }}}

	" Tab settings {{{
		set shiftwidth=4
		set softtabstop=0
		set tabstop=4
	" }}}

	" Folding settings {{{
		set foldmethod=indent
		set foldnestmax=10
		set nofoldenable
		set foldlevel=1
		set foldminlines=0
	" }}}

	" Slow TTY {{{
    	set lazyredraw
    	set ttyscroll=1
	" }}}
	
	"let g:loaded_matchparen=1

" }}}

