#!/bin/bash

# LFS-Install - An Automated Linux From Scratch-Installer
# Copyright (C) 2002-2005  Daniel Baumann <daniel.baumann@panthera-systems.net>
#
# LFS-Install comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Ncurses ()
{
	# 5.25. Ncurses-5.4
	cd "$LFS"/sources
	tar xfj ncurses-5.4.tar.bz2
	cd ncurses-5.4

	# 5.25.1. Installation of Ncurses

	# Begin commands
	./configure --prefix=/tools --with-shared \
		--without-debug --without-ada --enable-overwrite

	make

	make install
	# End commands

	cd ..
	rm -rf ncurses-5.4
}

Ncurses
