#!/bin/bash

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
# 
#
# LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Mktemp ()
{
	# 6.17. Mktemp-1.5
	cd /sources
	tar xfj mktemp-1.5.tar.bz2
	cd mktemp-1.5

	# 6.17.1. Installation of Mktemp

	# Begin commands
	patch -Np1 -i ../mktemp-1.5-add_tempfile-1.patch

	./configure --prefix=/usr --with-libc

	make

	make install
	make install-tempfile
	# End commands

	cd ..
	rm -rf mktemp-1.5
}

Mktemp
