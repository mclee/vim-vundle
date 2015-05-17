#!/bin/sh
DEST="$HOME/.vim"
MACHINE=`uname`

git clone https://github.com/mclee/vim-vundle.git $DEST
git clone https://github.com/gmarik/Vundle.vim.git $DEST/bundle/Vundle.vim
ln -sf $DEST/vimrc ~/.vimrc
vim +PluginInstall +qall
