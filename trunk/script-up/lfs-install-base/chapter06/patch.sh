#!/bin/bash

# LFS-Install - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
# This project is based on "http://savannah.nongnu.org/projects/lfs-install/"
#
# LFS-Install comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.

function Patch ()
{
	# 6.50. Patch-2.5.4 
	cd /sources
	tar xfj patch-2.5.4.tar.bz2
	cd patch-2.5.4

	# 6.50.1. Installation of Patch

	# Begin commands
	CPPFLAGS=-D_GNU_SOURCE ./configure --prefix=/usr

	make

	make install
	# End commands

	cd ..
	rm -rf patch-2.5.4
}

Patch
