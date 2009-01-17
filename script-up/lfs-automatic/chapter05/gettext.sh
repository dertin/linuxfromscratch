#!/bin/bash

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
# 
#
# LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Gettext ()
{
	# 5.24. Gettext-0.17
	cd "$LFS"/sources
	tar xfj gettext-0.17.tar.gz
	cd gettext-0.17

	# 5.24.1. Installation of Gettext

	# Begin commands
	cd gettext-tools
	./configure --prefix=/tools --disable-shared

	make -C gnulib-lib
	make -C src msgfmt
	
	cp -v src/msgfmt /tools/bin
	
	# End commands

	cd ..
	rm -rf gettext-0.17
}

Gettext
