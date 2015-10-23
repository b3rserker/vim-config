" Make sure we are on same tune first
set shell=/bin/bash

" This is pathogen fix to be co-loaded properly with
" some plugins (this order of commands is mandatory!)
filetype off
syntax off
set nocompatible
execute pathogen#infect()
syntax on
filetype on
" Enable filetype plugins 
filetype plugin on
autocmd FileType yaml let b:did_indent = 1

" Mapleader
"let mapleader="<\Space>"
let mapleader=","

" Common configuration
"filetype plugin indent on " activates filetype detection
colorscheme delek

" Gitgutter requirement - refresh intervall of diffing takes this
set updatetime=4000     " Refresh immidiately, need because it is refreshed on CursorHold for updatetime secs

set mouse=
set encoding=utf-8
set number
set hidden 		" abandon a buffer when unloaded
set wildignore=*.swp,*.bak,*.pyc,*.class
set showcmd
set cursorline
set wildmenu
set lazyredraw
set showmatch
set ignorecase          " ignore case when searching
set smartcase           " ignore case if search pattern is all lowercase, case-sensitive otherwise
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.
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
set undolevels=0
"set ttyfast       " u got a fast terminal
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
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4
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
nnoremap <leader>r :source $MYVIMRC<CR>
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

" Override colors
highlight VertSplit cterm=NONE ctermfg=NONE ctermbg=Blue
