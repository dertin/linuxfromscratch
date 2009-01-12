#!/bin/bash

# LFS-Install - An Automated Linux From Scratch-Installer
# Copyright (C) 2002-2005  Daniel Baumann <daniel.baumann@panthera-systems.net>
#
# LFS-Install comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
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
