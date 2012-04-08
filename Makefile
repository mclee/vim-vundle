# Installs extensions and compiles things that need compiling.
#
#
help:
	@echo "install - install + compile native things."
	@echo "symlink - make symlink to .vimrc"
	@echo "commandt - compile Command-T"

install: symlink commandt

commandt:
	cd bundle/Command-T/ruby/command-t/;\
		/usr/bin/ruby extconf.rb;\
		make clean && make

symlink:
	ln -sf ~+/vimrc ~/.vimrc
