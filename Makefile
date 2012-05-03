# Installs extensions and compiles things that need compiling.
#
#
help:
	@echo "vundle - install vundle"
	@echo "install - install + compile native things."
	@echo "symlink - make symlink to .vimrc"
	@echo "commandt - compile Command-T"

install: vundle symlink commandt

commandt:
	cd bundle/Command-T/ruby/command-t/;\
		/usr/bin/ruby extconf.rb;\
		make clean && make

symlink:
	ln -sf ~+/vimrc ~/.vimrc

vundle:
	git clone https://github.com/gmarik/vundle.git bundle/vundle
