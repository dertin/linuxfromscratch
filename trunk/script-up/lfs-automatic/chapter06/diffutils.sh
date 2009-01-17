#!/bin/bash

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
# 
#
# LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Diffutils ()
{
	# 6.41. Diffutils-2.8.1
	cd /sources
	tar xfj diffutils-2.8.1.tar.bz2
	cd diffutils-2.8.1

	# 6.41.1. Installation of Diffutils

	# Begin commands
	./configure --prefix=/usr

	make

	make install
	# End commands

	cd ..
	rm -rf diffutils-2.8.1
}

Diffutils
