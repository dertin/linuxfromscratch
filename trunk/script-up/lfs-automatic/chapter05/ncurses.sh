#!/bin/bash

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
# 
#
# LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Ncurses ()
{
	# 5.14. Ncurses-5.6
	cd "$LFS"/sources
	tar xzf ncurses-5.6.tar.gz
	cd ncurses-5.6

	# 5.14.1. Installation of Ncurses

	# Begin commands
	./configure --prefix=/tools --with-shared \
    	--without-debug --without-ada --enable-overwrite

	make

	make install
	# End commands

	cd ..
	rm -rf ncurses-5.6
}

Ncurses
