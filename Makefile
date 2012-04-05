# Installs extensions and compiles things that need compiling.
#
#
help:
	@echo "install - install + compile native things."
	@echo "update  - Download update for all plugins."

install: symlink commandt

commandt:
	cd bundle/command-t/ruby/command-t/;\
		/usr/bin/ruby extconf.rb;\
		make clean && make

symlink:
	ln -sf ~+/vimrc ~/.vimrc
