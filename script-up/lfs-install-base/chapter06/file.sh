#!/bin/bash

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
# This project is based on "http://savannah.nongnu.org/projects/LFS-Automatic/"
#
# LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function File ()
{
	# 6.38. File-4.10
	cd /sources
	tar xfj file-4.10.tar.bz2
	cd file-4.10

	# 6.38.1. Installation of File

	# Begin commands
	./configure --prefix=/usr

	make

	make install
	# End commands

	cd ..
	rm -rf file-4.10
}

File
