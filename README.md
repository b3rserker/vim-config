# vim-config
My attempt to build vim IDE(!), very experimental, very messy so far - but I am working on it!

Based on pathogen plugin loader.

Optimized for navigation speed using EasyMotion for almost every possible navigation action.

# Installation

Install https://github.com/powerline/fonts first.

cd ~

git clone https://github.com/b3rserker/vim-config.git .vim

ln -s .vim/vimrc .vimrc

git submodule init

git submodule update

# Info
- so far adjusted for python only (very basic use-case first)
- some CZ keyboard adjustments there

# Todo
- REAL ruby support still non-existing (this will be hard - ctags unusable & plugins modification must be made :/)
- clipboard without "+clipboard" support will be painful work for weeks (recompilation will be only last solution)
- also integration with tmux (byobu) non-existing (paste?, bash?)
- autocompletion in vim is far from usable - must be replaced with "sane" plugin
