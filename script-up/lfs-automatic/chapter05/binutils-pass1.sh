#!/bin/bash

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
# 
#
# LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.

function Binutils_pass1 ()
{
	# 5.4. Binutils-2.18 - Pass 1
	cd "$LFS"/sources
	tar xfj binutils-2.18.tar.bz2
	cd binutils-2.18

	# 5.4.1. Installation of Binutils
	
	# Begin commands
	
	patch -Np1 -i ../binutils-2.18-configure-1.patch
	
	mkdir ../binutils-build
	cd ../binutils-build

	CC="gcc -B/usr/bin/" ../binutils-2.18/configure \
    --prefix=/tools --disable-nls --disable-werror

	make
	make install
		
	make -C ld clean
	make -C ld LIB_PATH=/tools/lib
	cp -v ld/ld-new /tools/bin
	# End commands

	# Warning
	# Do not remove the Binutils build and source directories yet. These
	# will be needed again in their current state later in this chapter.

	cd ..
}

Binutils_pass1
