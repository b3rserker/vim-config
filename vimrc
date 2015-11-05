function! SourceMyScripts()
  let file_list = split(globpath("~/.vim/config", "*.vim"), '\n')

  for file in file_list
    execute( 'source '.file )
  endfor
endfunction

call SourceMyScripts()
