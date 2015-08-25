set nocompatible      " We're running Vim, nnot Vi!
syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

" move among buffers with CTRL
noremap <C-a> [m<CR>
noremap <C-s> ]m<CR>

