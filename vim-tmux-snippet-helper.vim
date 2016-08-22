nnoremap <Enter> :echom system("tmux set-buffer \"" . getline('.') . "\"")<CR>:echom 'pasted'<CR>:quit<CR>
