
" Enable dirsettings plugin
"
" This has to be done here because to allow the manipulation of the
" runtimepath by .vimdir files which then gets autoloaded by pathogen
call dirsettings#Install()

" Enable locally used plugins
" execute 'set runtimepath+=' . expand("<sfile>:p:h") . '/bundle'

