#!/bin/bash

# LFS-Install - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
# This project is based on "http://savannah.nongnu.org/projects/lfs-install/"
#
# LFS-Install comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.

function Binutils_pass1 ()
{
	# 5.4. Binutils-2.15.91.0.2 - Pass 1
	cd "$LFS"/sources
	tar xfj binutils-2.15.91.0.2.tar.bz2
	cd binutils-2.15.91.0.2

	# 5.4.1. Installation of Binutils

	# Begin commands
	mkdir ../binutils-build
	cd ../binutils-build

	../binutils-2.15.91.0.2/configure --prefix=/tools \
		--disable-nls

	make configure-host
	make LDFLAGS="-all-static"

	make install

	make -C ld clean
	make -C ld LDFLAGS="-all-static" LIB_PATH=/tools/lib
	# End commands

	# Warning
	# Do not remove the Binutils build and source directories yet. These
	# will be needed again in their current state later in this chapter.

	cd ..
}

Binutils_pass1
