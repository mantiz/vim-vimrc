" prepare vundle {{{
	set nocompatible               " be iMproved
	filetype off                   " required!

	set runtimepath+=~/.vim/bundle/vundle/
	call vundle#rc()

	" let Vundle manage Vundle
	" required! 
	Bundle 'gmarik/vundle'
" }}}

	Bundle 'mantiz/vim-plugin-dirsettings'

" declare used bundles {{{
	Bundle 'mantiz/vim-plugin-autocomplpop'
	Bundle 'mantiz/vim-plugin-l9'
	Bundle 'jakobwesthoff/whitespacetrail'
	Bundle 'scrooloose/nerdcommenter'
	Bundle 'scrooloose/nerdtree'
	Bundle 'sophacles/vim-bundle-sparkup'
	Bundle 'tpope/vim-pathogen'
	"Bundle 'nvie/vim-rst-tables'
	Bundle 'drmingdrmer/xptemplate'
	Bundle 'wzzrd/vim-bufexplorer'
	Bundle 'davidoc/taskpaper.vim'
	Bundle 'Lokaltog/vim-powerline'
	"Bundle 'scrooloose/syntastic'
	Bundle 'wincent/Command-T'
	Bundle 'mileszs/ack.vim'
	Bundle 'xolox/vim-session'
	Bundle 'vim-scripts/VST'
	Bundle 'kien/ctrlp.vim'
	Bundle 'tpope/vim-fugitive'
	Bundle 'vim-scripts/vimwiki'
	Bundle 'SirVer/ultisnips'
	"Bundle 'Valloric/YouCompleteMe'
" }}}

" Enable dirsettings plugin
"
" This has to be done here because to allow the manipulation of the
" runtimepath by .vimdir files which then gets autoloaded by pathogen
call dirsettings#Install()

" Enable locally used plugins
" execute 'set runtimepath+=' . expand("<sfile>:p:h") . '/bundle'

" Mappings {{{
	" Remap the <leader>-key to , instead of \
	" http://stevelosh.com/blog/2010/09/coming-home-to-vim
	let mapleader = ","

	let g:xptemplate_nav_cancel = '<C-c>'

	" Enable customized non-visible character display
	" http://vimcasts.org/episodes/show-invisibles/
	nnoremap <leader>L :set list!<CR>

	" Allow the usage of <leader><SPACE> to hide highlighted search results after
	" the required occurance has been located
	nnoremap <leader><space> :nohlsearch<CR>

	" ReWrap the current paragraph of text using <leader>q
	nnoremap <leader>q gqip

	" Configure NERDTree to be more usable
	" Map NERDtree (project view) activation to <leader>p
	"nnoremap <leader>p :NERDTreeToggle<CR>

	"nnoremap <Leader>d :let NERDTreeQuitOnOpen = 1<bar>NERDTreeToggle<CR>
	"nnoremap <Leader>D :let NERDTreeQuitOnOpen = 0<bar>NERDTreeToggle<CR>
	nnoremap <F3> :NERDTreeToggle \| :silent NERDTreeMirror<CR>
	inoremap <F3> <Esc>:NERDTreeToggle \| :silent NERDTreeMirror<CR>a

	" Map space to / (search) and c-space to ? (backgwards search) {{{
		" noremap <SPACE> /
		noremap <C-SPACE> ?
	" }}}

	" Faster movement up/down {{{
		map <s-j> 10j
		map <s-k> 10k
	" }}}

	" Smart way to move btw. windows {{{
		map <C-j> <C-W>j
		map <C-k> <C-W>k
		map <C-h> <C-W>h
		map <C-l> <C-W>l
	" }}}

	" easy resize windows {{{
		map <c-up>    <C-W>+
		map <c-down>  <C-W>-
		map <c-left>  <C-W><
		map <c-right> <C-W>>
	" }}}

	" Use the arrows to something usefull
	"map <right> :bn<cr>
	"map <left>  :bp<cr>

	" Tab configuration {{{
		map  <leader>tn :tabnew<cr>
		map  <leader>te :tabedit
		map  <leader>tc :tabclose<cr>
		map  <leader>tm :tabmove 
		map  <s-tab> :tabnext<cr>
		imap <s-tab> <esc>:tabnext<cr>a
	" }}}

	" Quick write {{{
		map <leader>w   :w!<cr>
	" }}}

	" Quick close {{{
		map <leader>q   :q<cr>
		map <leader>qa  :qall<cr>
		map <leader>qq  :q!<cr>
		map <leader>qqa :qall!<cr>
	" }}}

	" Move selected or current line {{{
		"nnoremap <C-j> :m+<CR>==
		"nnoremap <C-k> :m-2<CR>==
		"inoremap <C-j> <Esc>:m+<CR>==gi
		"inoremap <C-k> <Esc>:m-2<CR>==gi
		"vnoremap <C-j> :m'>+<CR>gv=gv
		"vnoremap <C-k> :m-2<CR>gv=gv
	" }}}
" }}}

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


" autocomplpop {{{
	let g:acp_behaviorKeywordLength = 1
" }}}

" neocache {{{
	" Disable AutoComplPop.
	let g:acp_enableAtStartup = 1
	" Use neocomplcache.
	let g:neocomplcache_enable_at_startup = 0
	" Use smartcase.
	let g:neocomplcache_enable_smart_case = 1
	" Use camel case completion.
	let g:neocomplcache_enable_camel_case_completion = 0
	" Use underbar completion.
	let g:neocomplcache_enable_underbar_completion = 1
	" Set minimum syntax keyword length.
	let g:neocomplcache_min_syntax_length = 2

	let g:neocomplcache_enable_ignore_case = 0

	" Enable omni completion.
	autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
	autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
	autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
	autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
	autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

	" Enable heavy omni completion.
	if !exists('g:neocomplcache_omni_patterns')
  	  let g:neocomplcache_omni_patterns = {}
	endif
	let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'
	"autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
	let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
	let g:neocomplcache_omni_patterns.c = '\%(\.\|->\)\h\w*'
	let g:neocomplcache_omni_patterns.cpp = '\h\w*\%(\.\|->\)\h\w*\|\h\w*::'
" }}}

" colorscheme {{{
	" Enforce 256 color mode
	set t_Co=256   

	set background=dark

	colorscheme zenburn

	"let g:solarized_termcolors=256
	""let g:solarized_termtrans=1
	"let g:solarized_degrade=1
	"colorscheme solarized

	" transparent background
	"hi LineNr    ctermbg=none
	"hi Normal    ctermbg=none
	"hi Statement ctermbg=none
	"hi Title     ctermbg=none
" }}}

" vimwiki {{{

	let wiki_personal           = {}
	let wiki_personal.path      = '~/vimwiki/'
	let wiki_personal.path_html = '~/vimwiki_html/'

	let wiki_crosscan           = {}
	let wiki_crosscan.path      = '~/crosscan/vimwiki/'
	let wiki_crosscan.path_html = '~/crosscan/vimwiki_html/'

	let g:vimwiki_list = [wiki_personal, wiki_crosscan]

" }}}

" sessions {{{
	" Don't persist options and mappings because it can corrupt sessions.
	set sessionoptions-=options
	" Always persist Vim's window size.
	set sessionoptions-=resize

	let g:session_autoload = 'prompt'
	"set g:session_autosave = 'yes'
	"let g:session_default_to_last = 1
	"set g:session_command_aliases = 1
" }}}

" autocommands {{{
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

	augroup FileTypeMappings " {{{
		autocmd BufRead,BufNewFile *.twig set filetype=htmljinja
	augroup END " }}}
" }}}

" NERDTree {{{
	" Enable color output
	let g:NERDChristmasTree = 1

	" VIM cwd reflects NERDTree root
	let g:NERDTreeChDirMode = 2

	let g:NERDTreeBookmarksFile = "~/.vim/NERDTreeBookmarks"

	" Display hidden files
	let g:NERDTreeShowHidden = 1

	" Close tree if file is opened
	let g:NERDTreeQuitOnOpen = 0

	" Highlight current line
	let g:NERDTreeHighlightCursorline = 1

	let g:NERDTreeWinSize = 40

	let g:NERDTreeShowLineNumbers = 1

	let g:NERDTreeIgnore = [
		\'\.gch$',
		\]
" }}}

" powerline {{{
	let g:Powerline_symbols = 'fancy'
" }}}

" sparkup {{{
	" The default sparkup configuration interferes with the supertab mapping.
	" Therefore the key needs to be changed
	let g:sparkupNextMapping = '<c-a-n>'
" }}}


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
