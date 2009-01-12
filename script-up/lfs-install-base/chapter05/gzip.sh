#!/bin/bash

# LFS-Install - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
# This project is based on "http://savannah.nongnu.org/projects/lfs-install/"
#
# LFS-Install comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Gzip ()
{
	# 5.18. Gzip-1.3.5
	cd "$LFS"/sources
	tar xfj gzip-1.3.5.tar.bz2
	cd gzip-1.3.5

	# 5.18.1. Installation of Gzip

	# Begin commands
	./configure --prefix=/tools

	make

	make install
	# End commands

	cd ..
	rm -rf gzip-1.3.5
}

Gzip
