
" Prepare local environment {{{
	let s:localpath=expand("<sfile>:p:h") . '/local'

	for file in split(globpath(s:localpath . '/bootstrap/', '*.vim'))
		exec 'source ' . file
	endfor

	execute 'set runtimepath+=' . s:localpath
	execute 'set runtimepath+=' . s:localpath . '/after'
" }}}

" Load bundles with pathogen {{{
	call pathogen#infect()
" }}}

" Source viminit files {{{
	for file in split(globpath(s:localpath . '/config/', '*.vim'))
		exec 'source ' . file
	endfor
" }}}

