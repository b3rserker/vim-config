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
