let g:easytags_suppress_ctags_warning = 0
let g:easytags_cmd = 'ctags'
let g:easytags_include_members = 1

let g:easytags_languages = {
\   'language': {
\     'cmd': g:easytags_cmd,
\       'args': [],
\       'fileoutput_opt': '-f',
\       'stdout_opt': '-f-',
\       'recurse_flag': '-R'
\   }
\}

" If you like one of the existing styles you can link them:
highlight link rubyModuleNameTag Underlined
highlight link rubyClassNameTag Underlined
highlight link rubyMethodNameTag Underlined

" Tell EasyTags to use the tags file found by Vim
let g:easytags_dynamic_files = 1

" To enable automatic highlighting of tags
let g:easytags_auto_highlight = 1
