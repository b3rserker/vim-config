set hidden
"nnoremap tr :bp<cr>
"nnoremap tz :bn<cr>
"nnoremap ty :bn<cr>
"nnoremap te <C-^>

" Mappings to access buffers (don't use "\p" because a
" delay before pressing "p" would accidentally paste).
" \l       : list buffers
" \b \f \g : go back/forward/last-used
" \1 \2 \3 : go to buffer 1/2/3 etc
"nnoremap <Leader>l :ls<CR>
"nnoremap <Leader>q :bw!<CR>
"nnoremap <Leader>b :bp!<CR>
"nnoremap <Leader>f :bn!<CR>
"nnoremap <Leader>g :e!#<CR>
"nnoremap <Leader>+ :1b<CR>
"nnoremap <Leader>ě :2b<CR>
"nnoremap <Leader>š :3b<CR>
"nnoremap <Leader>č :4b<CR>
"nnoremap <Leader>ř :5b<CR>
"nnoremap <Leader>ž :6b<CR>
"nnoremap <Leader>ý :7b<CR>
"nnoremap <Leader>á :8b<CR>
"nnoremap <Leader>í :9b<CR>
"nnoremap <Leader>é :10b<CR>

" Quick buffer switching
" map <leader>b :ls<CR>:b

" move among buffers with CTRL
map <C-L> :bnext<CR>
map <C-H> :bprev<CR>
