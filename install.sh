#!/bin/sh
DEST="$HOME/.vim"
MACHINE=`uname`

git clone https://github.com/mclee/vim-vundle.git $DEST
git clone https://github.com/gmarik/vundle.git $DEST/bundle/vundle
ln -sf $DEST/vimrc ~/.vimrc
vim -c "execute \"BundleInstall\" | q | q"

cd $DEST/bundle/Command-T/ruby/command-t; ruby extconf.rb; make clean && make
