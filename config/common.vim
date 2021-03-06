" Make sure we are on same tune first
set shell=/bin/bash

" Set tags variable
set tags=./tags,~/.rvm/tags;

" Freakin important - THIS SOLVE PROBLEMS WITH LONG LINE SYNTAX HGLTING!
set regexpengine=1

" This is pathogen fix to be co-loaded properly with
" some plugins (this order of commands is mandatory!)
filetype off
syntax off
set nocompatible
"execute pathogen#infect()
execute pathogen#infect('plugins/{}')
syntax on
filetype on
" Enable filetype plugins 
filetype plugin on
autocmd FileType yaml let b:did_indent = 1

" Mapleader
"let mapleader="<\Space>"
map "," <Nop>
let mapleader=","

" Common configuration
"filetype plugin indent on " activates filetype detection
colorscheme default

" Gitgutter requirement - refresh intervall of diffing takes this
set updatetime=1000     " Refresh immidiately, need because it is refreshed on CursorHold for updatetime secs

set mouse=
set encoding=utf-8
set number
set hidden " abandon a buffer when unloaded
set wildignore=*.swp,*.bak,*.pyc,*.class
set showcmd
set cursorline
set wildmenu
set lazyredraw
set showmatch
set ignorecase          " ignore case when searching
set smartcase           " ignore case if search pattern is all lowercase, case-sensitive otherwise
set list
"set listchars=tab:>.,trail:.,extends:#,nbsp:.
set listchars=tab:▸\ ,eol:\|
set listchars+=trail:·
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set foldenable          " enable folding

set noesckeys		" completely disable recognition of keys sending an escape sequence when in insert mode
":set esckeys

set nocompatible
set wildmenu
set ruler
set wrap
set t_Co=256
set hls! "no search history memorized
set undolevels=100
set ttyfast       " u got a fast terminal
"set ttyscroll=3
"set lazyredraw     " to avoid scrolling problems
set nobackup       " no backup files
set nowritebackup  " only in case you don't want a backup file while editing
set noswapfile     " no swap files
set number

"set equalalways
" when off, splitting a window will reduce the size of the current window and leave the other windows the same
set noea

"set wrapmargin=8
"set lines=40
"set columns=80

" Intendation & TAB
set smarttab            " insert tabs on the start of a line according to shiftwidth, not tabstop
set tabstop=2
set expandtab
set shiftwidth=2
set softtabstop=2
set autoindent " keep indentation from previous line 
set smartindent " automatically inserts indentation in some cases
"set cindent " like smartindent, but stricter and more customisable, used in C language
"set preserveindent " huh?
" INDENT DEBUG
":verbose set autoindent?
":verbose set cindent?
":verbose set smartindent?
":verbose set indentexpr?

" Vertical separator
"set fillchars+=vert:\
set fillchars=""

" missing ZZ and ZQ counterparts:
" quick save-buffer and quit-everything
nnoremap YS :w<CR>
nnoremap YX :qa!<CR>

nnoremap <C-k> :bnext<CR>
nnoremap <C-j> :bprevious<CR>

" Make sure we are wrapping when diffing - otherwise totally annoying
"autocmd VimEnter * if &diff | execute 'windo set wrap' | endif

" Cursor line addition
"augroup CursorLine
"  au!
"  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
"  au WinLeave * setlocal nocursorline
"augroup END

" Quickly open/reload vim
map <leader>r :source $MYVIMRC<CR>:echo "vimrc reloaded"<CR>
" On save too
"augroup reload_vimrc " {
"    autocmd!
"    autocmd BufWritePost $MYVIMRC source $MYVIMRC
"augroup END " }

" Get rid of the stupid and retarded vim ESC BULLSHIT!!!
" USE CTRL+C or jk in insert mode!!!
map <C-c> <Esc>

" Clear jumplist hack!!! BIND THIS!!! TODO!!
":let i = 0 | while i < 100 | mark ' | let i = i + 1 | endwhile

"augroup syntastic
"    autocmd CursorHold * nested update
"augroup END
"set updatetime=200

" Get rid of vim's begin/end nonsense mappings
nnoremap + 0
nnoremap é $
noremap <C-A> ^
noremap <C-E> <End>

" Add two-column feature for reading python or text (http://vim.wikia.com/wiki/View_text_file_in_two_columns)
noremap <silent> <Leader>vs :<C-u>let @z=&so<CR>:set so=0 noscb<CR>:bo vs<CR>Ljzt:setl scb<CR><C-w>p:setl scb<CR>:let &so=@z<CR>
noremap <silent> <Leader>va :exe AddColumn()<CR>
function! AddColumn()
  exe "norm \<C-u>"
  let @z=&so
  set noscb so=0
  bo vs
  exe "norm \<PageDown>"
  setl scrollbind
  wincmd p
  setl scrollbind
  let &so=@z
endfunction

" Hi the current line/column feature
"hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
"hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
"nnoremap <Leader>hi :set cursorline! cursorcolumn!<CR>

" Start working with tabs
nnoremap tn :tabnew<CR>
nnoremap tc :tabclose<CR>
nnoremap th  :tabfirst<CR>
nnoremap tj  :tabnext<CR>
nnoremap tk  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tt  :tabedit<Space>

noremap . :
noremap : .

noremap ú /
noremap / ú

" This is enabled in file snippet-helper.vim, used for tmux integration!
"nnoremap <Enter> :echom system("tmux set-buffer \"" . getline('.') . "\"")<CR>:echom 'pasted'<CR>:quit<CR>
