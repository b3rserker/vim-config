set autochdir
set tags=./tags;

" fix meta-keys which generate <Esc>a .. <Esc>z
"let c='a'
"while c <= 'z'
"  exec "set <M-".toupper(c).">=\e".c
"  exec "imap \e".c." <M-".toupper(c).">"
"  let c = nr2char(1+char2nr(c))
"endw

"for i in range(65,90) + range(97,122)
"  let c = nr2char(i)
"  exec "map \e".c." <M-".c.">"
"  exec "map! \e".c." <M-".c.">"
"endfor

" Include proper structure of config files
function! SourceMyScripts()
  let file_list = split(globpath("~/.vim/config", "*.vim"), '\n')

  for file in file_list
    execute( 'source '.file )
  endfor

  let file_list = split(globpath("~/.vim/config/99-plugins", "*.vim"), '\n')

  for file in file_list
    execute( 'source '.file )
  endfor
endfunction

call SourceMyScripts()
