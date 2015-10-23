" This is pathogen fix to be co-loaded properly with
" some plugins (this order of commands is mandatory!)
"filetype off
"set nocompatible
execute pathogen#infect()
"syntax on
"filetype on

" *** Pathogen
"   http://tammersaleh.com/posts/the-modern-vim-config-with-pathogen/
execute pathogen#infect('~/.vim/bundle/{}')
call pathogen#helptags()

function! SourceMyScripts()
  let file_list = split(globpath("~/.vim", "*.vim"), '\n')

  for file in file_list
    execute( 'source '.file )
  endfor
endfunction

" Enable filetype plugins 
filetype plugin on

"call SourceMyScripts()
source  ~/.vim/common.vim
source ~/.vim/plugins.vim
