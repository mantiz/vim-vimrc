
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

