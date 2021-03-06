"" AirLine
" Just show the filename (no path) in the tab
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#enabled = 1
set laststatus=2 " always show airline!
let g:airline_powerline_fonts = 1
" Show numbers in tab/buffer line
let g:airline#extensions#tabline#buffer_idx_mode = 0

" Yaml faster sytax
" au BufNewFile,BufRead *.yaml,*.yml so ~/.vim/yaml.vim

"" Vim-ansible-yaml
" Ansible doesn't work better that vim's yaml, even more doesn't do auto-ident with gg=G combo
"au BufRead,BufNewFile *.yml set ft=ansible
"au BufNewFile,BufRead *.yaml,*.yml so ~/.vim/bundle/vim-yaml/after/syntax/yaml.vim

"" EasyMotion prereqs (1)
map <Esc>[Y <S-Space>
" My <SpaceBar> hack
"autocmd BufReadPost * unmap! <Space>
"au BufWinEnter * silent unmap! <Space>

"Easymotion (2)
"map <Leader><Leader> <Plug>(easymotion-prefix)
map <Leader>e <Plug>(easymotion-prefix) # REALLY NEED TO SET THIS!!!
map <Space> <Plug>(easymotion-w)
"map <NUL> <Plug>(easymotion-b) " Try CTRL+Space (=NUL)
map <S-Space> <Plug>(easymotion-b)
"map <S-NUL> <Plug>(easymotion-b)
let g:EasyMotion_keys = 'asdfgqwertuiopzxcvbnmhljk'
let g:EasyMotion_grouping = 1
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)

"" Vim-session
" Persist local buffer options and mappings - e.g. nowrap for some windows - very cool and hidden feature!
set viewoptions+=cursor,folds,slash,unix,localoptions
set viewoptions-=options
let g:session_autoload = 'yes'
let g:session_autosave = 'no'
nnoremap <Leader>so :OpenSession<CR>
nnoremap <Leader>ss :SaveSession<CR>
nnoremap <Leader>sd :DeleteSession<CR>
nnoremap <Leader>sc :CloseSession<CR>
let g:session_persist_globals = ['&sessionoptions']
call add(g:session_persist_globals, 'g:session_autoload')
call add(g:session_persist_globals, 'g:session_autosave')
call add(g:session_persist_globals, 'g:session_default_to_last')
call add(g:session_persist_globals, 'g:session_persist_globals')
" Disable all session locking - because this is complete bullsh*t!
let g:session_lock_enabled = 0

"Bufstop
nnoremap <Leader><Leader> :BufstopFast<cr>
nnoremap <Leader>a :BufstopModeFast<CR>     " a command for quick switching
"map <C-tab>   :BufstopBack<CR>
"map <S-tab>   :BufstopForward<CR>
let g:BufstopAutoSpeedToggle = 1       " now I can press ,3,3,3 to cycle the last 3 buffers
"let g:BufstopKeys = "asfcvzxqwertyuiopbnm"
"let g:BufstoSpeedKeys = "asfcvzxqwertyuiopbnm"
let g:BufstopKeys =  "qwertasdfgyxcvb"
let g:BufstopSpeedpKeys = "qwertasdfgyxcvb"
"g:BufstopLeader
let g:BufstopSplit="topleft"
let g:BufstopSorting="none"

" Taglist - deprecated - use Tagbar now!
"nnoremap <silent> <C-T> :TlistToggle<CR>
"let g:Tlist_Auto_Highlight_Tag=1
"let g:Tlist_GainFocus_On_ToggleOpen=1
"let g:Tlist_WinWidth=40
"let g:Tlist_Exit_OnlyWindow=1
"let g:Tlist_Close_On_Select=1
"let g:Tlist_Brief_Help = 1
"let g:Tlist_Show_One_File = 1
"let g:Tlist_Highlight_Tag_On_BufEnter = 1
"let g:Tlist_Display_Tag_Scope = 1
"let Tlist_Close_On_Select = 1
"let Tlist_Auto_Update = 1

" Vim maximizer
map <C-w><Bar> :MaximizerToggle<CR>

" Gitgutter
let g:gitgutter_map_keys = 0
let g:gitgutter_override_sign_column_highlight = 0
highlight SignColumn ctermbg=darkblue    " terminal Vim
"highlight SignColumn guibg=whatever      " gVim/MacVim
map <Leader>hn <Plug>GitGutterNextHunk
map <Leader>hp <Plug>GitGutterPrevHunk
" Refresh immidiately, need because it is refreshed on CursorHold for updatetime secs
" set updatetime=1000 " adjusted in common.vim because it affects everything!!!
let g:gitgutter_realtime = 1
let g:gitgutter_eager = 1
let g:gitgutter_sign_column_always = 1
let g:gitgutter_enabled = 1
let g:gitgutter_signs = 1
let g:gitgutter_escape_grep = 1

"Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_enable_signs = 1
let g:syntastic_loc_list_height = 10
set sessionoptions-=blank "This will prevent |:mksession| from saving |syntastic-error-window| as empty quickfix windows.
"let g:syntastic_ruby_mri_args = "--my --args --here"

" Tagbar
noremap <C-T> :TagbarToggle<CR>
"let g:tagbar_map_togglefold = "<space>"
let g:tagbar_map_showproto = "<right>"
let g:tagbar_autoclose = 0
let g:tagbar_autofocus = 1
let g:tagbar_left=1
let g:tagbar_width = 40
let g:tagbar_sort = 0
let g:tagbar_compact = 1 "omit the short help at the top
let g:tagbar_indent = 1
let g:tagbar_show_visibility = 1
let g:tagbar_show_linenumbers = 0
let g:tagbar_hide_nonpublic = 0
let g:tagbar_foldlevel = 2
let g:tagbar_autoshowtag = 1
let g:tagbar_previewwin_pos = "aboveleft"

" NerdCommenter
" left default
" <leader>c(preferably l or|c|n|m)
" Uncomment with <leader>cu

" NerdTree
noremap <C-n> :NERDTreeToggle<CR>
noremap ,n :NERDTreeFind<CR>
let g:NERDTreeDirArrows = 1
"let g:NERDTreeDirArrowExpandable = '▸'
"let g:NERDTreeDirArrowCollapsible = '▾'
let g:NERDTreeQuitOnOpen=0
let g:NERDTreeWinSize=50
"set autochdir

" Todo - solve this
"autocmd VimEnter * NERDTreeFind
"au VimEnter,BufWinEnter * NERDTreeFind

" Make ctrl-p work with nerdtree
let NERDTreeChDirMode=1
let g:ctrlp_working_path_mode = 'wr'
"let g:ctrlp_working_path_mode = 'c'

" Open a NERDTree automatically when vim starts up if no files were specified
" This fights with auto-reopening of previous vim-session plugin session
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Close vim if the only window left open is a NERDTree
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" NerdTree-git
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }

" Redraw airline after sourcing! Or there will be blue empty bar instead!
silent! AirlineRefresh

" Vim-indentwise - best addon for YAML navigation!
map <Leader>pl <Plug>(IndentWisePreviousLesserIndent)
map <Leader>pe <Plug>(IndentWisePreviousEqualIndent)
map <Leader>pg <Plug>(IndentWisePreviousGreaterIndent)
map <Leader>pa <Plug>(IndentWisePreviousAbsoluteIndent)

map <Leader>nl <Plug>(IndentWiseNextLesserIndent)
map <Leader>ne <Plug>(IndentWiseNextEqualIndent)
map <Leader>ng <Plug>(IndentWiseNextGreaterIndent)
map <Leader>na <Plug>(IndentWiseNextAbsoluteIndent)

map <Leader>sb <Plug>(IndentWiseBlockScopeBoundaryBegin)
map <Leader>se <Plug>(IndentWiseBlockScopeBoundaryEnd)

" Semantic-Highlight.vim (quick data-flow recognition in code)
nnoremap <Leader>hh :SemanticHighlightToggle<cr>
let g:semanticTermColors = [20,10,30,50,70,90,110,140,170,200,230]

let g:semanticBlacklistOverride = {
    \ 'python': [
    \   'module',
    \   'dict',
    \ ]
\ }

" Vim-multiple-cursors
"unmap <C-u>
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_start_key='<C-x>'
let g:multi_cursor_quit_key='<C-c>'
"nnoremap <C-c> :call multiple_cursors#quit()<CR>

" Vim-ultimate-colorscheme-utility
" Stop using arrow keys in kinda funny way! ;)
let g:ulti_color_Prev_Global = '<Left>'
let g:ulti_color_Next_Global = '<Right>'
"<leader><leader>a    " Adds the current colorscheme to favorites
"<leader><leader>A    " Removes the current colorscheme from favorites
"<leader><leader>f    " Goes to next colorscheme in filetype specific favorites
"<leader><leader>F    " Goes to previous colorscheme in filetype specific favorites
"<leader><leader>g    " Goes to next colorscheme in global favorites
"<leader><leader>G    " Goes to previous colorscheme in global favorites
"<leader><leader>n    " Goes to next colorscheme in all colors
"<leader><leader>N    " Goes to previous colorscheme in all colors
"<leader><leader>t    " Adds the current font to favorites
"<leader><leader>T    " Removes the current font from favorites
"<leader><leader>e    " Goes to the next font in filetype specific favorites
"<leader><leader>E    " Goes to the previous font in filetype specific favorites
"<leader><leader>r    " Goes to the next font in global favorites
"<leader><leader>R    " Goes to the previous font in global favorites
"<leader><leader>q    " Views all favorites

" Current colorscheme FTR
colorscheme distinguished

" https://github.com/terryma/vim-multiple-cursors
let g:multi_cursor_use_default_mapping=0

" Default mapping
let g:multi_cursor_next_key='<C-l>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<C-c>'
