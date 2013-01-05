
" Don't persist options and mappings because it can corrupt sessions.
set sessionoptions-=options
" Always persist Vim's window size.
set sessionoptions-=resize

let g:session_autoload = 'prompt'
"set g:session_autosave = 'yes'
"let g:session_default_to_last = 1
"set g:session_command_aliases = 1

