" Search
"map <Space> /
"map <C-Space> ?
nnoremap <leader><space> :nohlsearch<CR> "Turn highlight off

" CZ keyboard tweaks
nnoremap ů :
nnoremap - /

" Explore buffer
map <leader>e :Explore<cr>

" Highlight last inserted text
"nnoremap gV `[v`]

" Exit insert mode with quick jk
inoremap jk <esc>

" Toggle gundo and redo
"nnoremap <leader>u :GundoToggle<C
"map r :redo<CR>

" Save session
nnoremap <leader>S :mksession!<CR>
