#!/bin/sh
DEST="$HOME/.vim"
MACHINE=`uname`

git clone https://github.com/mclee/vim-vundle.git $DEST
git clone https://github.com/gmarik/Vundle.vim.git $DEST/bundle/Vundle.vim
ln -sf $DEST/vimrc ~/.vimrc
vim -c "execute \"BundleInstall\" | q | q"

cd $DEST/bundle/Command-T/ruby/command-t; ruby extconf.rb; make clean && make
