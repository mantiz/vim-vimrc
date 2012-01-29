
" Prepare local environment {{{
    let s:localpath=expand("<sfile>:p:h") . '/local'

    if (filereadable(s:localpath . '/config.vim'))
        execute 'source ' . s:localpath . '/config.vim'
    endif

    execute 'set runtimepath+=' . s:localpath
    execute 'set runtimepath+=' . s:localpath . '/after'
" }}}

" Load bundles with pathogen {{{
   call pathogen#infect()
" }}}

" Source viminit files {{{
    for file in split(globpath(expand("<sfile>:p:h") . '/config/', '*.vim'))
        exec 'source ' . file
    endfor
" }}}

" Load local config {{{
    if (filereadable(s:localpath . '/vimrc'))
        execute 'source ' . s:localpath . '/vimrc'
    endif
" }}}

