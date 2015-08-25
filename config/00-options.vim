" This is pathogen fix to load properly (this order of commands is mandatory!)
filetype off
set nocompatible
execute pathogen#infect()
syntax on
colorscheme default

" Global configuration
set encoding=utf-8
set number
set tabstop=4
set softtabstop=4
set expandtab
set showcmd
set cursorline
set wildmenu
set lazyredraw
set showmatch
set ignorecase          " ignore case when searching
set smartcase     	" ignore case if search pattern is all lowercase, case-sensitive otherwise
set smarttab		" insert tabs on the start of a line according to shiftwidth, not tabstop
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set foldenable          " enable folding
set noesckeys
":set esckeys

