#!/bin/bash

# LFS-Install - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
# This project is based on "http://savannah.nongnu.org/projects/lfs-install/"
#
# LFS-Install comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.

function Ncurses ()
{
	# 6.21. Ncurses-5.4
	cd /sources
	tar xfj ncurses-5.4.tar.bz2
	cd ncurses-5.4

	# 6.21.1. Installation of Ncurses

	# Begin commands
	./configure --prefix=/usr --with-shared --without-debug

	make

	make install

	chmod 755 /usr/lib/*.5.4

	chmod 644 /usr/lib/libncurses++.a

	mv /usr/lib/libncurses.so.5* /lib

	ln -sf ../../lib/libncurses.so.5 /usr/lib/libncurses.so
	ln -sf libncurses.so /usr/lib/libcurses.so
	# End commands

	cd ..
	rm -rf ncurses-5.4
}

Ncurses
