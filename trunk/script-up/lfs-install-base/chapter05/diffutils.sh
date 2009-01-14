#!/bin/bash

# LFS-Install - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
# This project is based on "http://savannah.nongnu.org/projects/lfs-install/"
#
# LFS-Install comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Diffutils ()
{
	# 5.19. Diffutils-2.8.1
	cd "$LFS"/sources
	tar xfj diffutils-2.8.1.tar.bz2
	cd diffutils-2.8.1

	# 5.19.1. Installation of Diffutils

	# Begin commands
	./configure --prefix=/tools

	make

	make install
	# End commands

	cd ..
	rm -rf diffutils-2.8.1
}

Diffutils