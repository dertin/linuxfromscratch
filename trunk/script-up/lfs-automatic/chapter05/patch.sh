#!/bin/bash

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
# 
#
# LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Patch ()
{
	# 5.26. Patch-2.5.4
	cd "$LFS"/sources
	tar xfj patch-2.5.4.tar.bz2
	cd patch-2.5.4

	# 5.26.1. Installation of Patch

	# Begin commands
	CPPFLAGS=-D_GNU_SOURCE ./configure --prefix=/tools

	make

	make install
	# End commands

	cd ..
	rm -rf patch-2.5.4
}

Patch
