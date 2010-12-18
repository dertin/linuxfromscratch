#!/bin/bash

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009 - 2011  Team Developer Dertin GNU/Linux
#
# 
#
# LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Readline ()
{
	# 6.22. Readline-5.0
	cd /sources
	tar xfj readline-5.0.tar.bz2
	cd readline-5.0

	# 6.22.1. Installation of Readline

	# Begin commands
	patch -Np1 -i ../readline-5.0-display_wrap-1.patch

	./configure --prefix=/usr

	make SHLIB_XLDFLAGS=-lncurses

	make install

	chmod 755 /usr/lib/*.5.0

	mv /usr/lib/lib{readline,history}.so.5* /lib

	ln -sf ../../lib/libhistory.so.5 /usr/lib/libhistory.so
	ln -sf ../../lib/libreadline.so.5 /usr/lib/libreadline.so
	# End commands

	cd ..
	rm -rf readline-5.0
}

Readline
