
" Display a colored column at 80
"setlocal colorcolumn=80
execute "setlocal colorcolumn=" . join(range(81,335), ',')
hi ColorColumn ctermbg=236

