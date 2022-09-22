#!/bin/sh
DEST="$HOME/.vim"
MACHINE=`uname`

git clone https://github.com/mclee/vim-vundle.git $DEST
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
ln -sf $DEST/vimrc ~/.vimrc
vim +PluginInstall +qall
