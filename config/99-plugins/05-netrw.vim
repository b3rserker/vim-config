"Enable mouse usage. makes it easier to browse multiple tabs
set mouse=a
" hide netrw top message
let g:netrw_banner=0
" tree listing by default
let g:netrw_liststyle=3
" hide vim swap files
let g:netrw_list_hide='.*\.swp$'
" open files in left window by default
let g:netrw_chgwin=1
" remap shift-control to fire up the sidebar
" remap control-enter to open files in new tab
nmap <silent> <C-CR> t :rightbelow 50vs<CR>:e .<CR>:wincmd h<CR>
" the same remap as above - may be necessary in some distros
