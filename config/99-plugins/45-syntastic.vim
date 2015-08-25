set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 1

let g:syntastic_aggregate_errors = 1
let g:syntastic_auto_jump = 0
" Mark syntax errors with :signs
let g:syntastic_enable_signs=1

let g:syntastic_warning_symbol = 'WW'
let g:syntastic_error_symbol = 'EE'

let g:syntastic_ruby_checkers = [ 'mri', 'flog' ] "rubocop
let g:syntastic_python_checkers=['pep8', 'pylint', 'python']
