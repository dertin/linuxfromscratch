#!/bin/bash

# LFS-Install - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
# This project is based on "http://savannah.nongnu.org/projects/lfs-install/"
#
# LFS-Install comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Bzip2 ()
{
	# 5.17. Bzip2-1.0.2
	cd "$LFS"/sources
	tar xfj bzip2-1.0.2.tar.bz2
	cd bzip2-1.0.2

	# 5.17.1. Installation of Bzip2

	# Begin commands
	make

	make PREFIX=/tools install
	# End commands

	cd ..
	rm -rf bzip2-1.0.2
}

Bzip2
