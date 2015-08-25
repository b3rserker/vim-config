" The default setting of 'laststatus' is for the statusline 
" to not appear until a split is created. If you want it
" to appear all the time, add the following to your vimrc
set laststatus=2

" There must be :set encoding=utf-8 and maybe other tweaks
" depends on terminal used otherwise this will mess up fonts
let g:airline_powerline_fonts = 1

" Define separators
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

" Setup some default ignores
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.(git|hg|svn)|\_site)$',
  \ 'file': '\v\.(exe|so|dll|class|png|jpg|jpeg)$',
\}
