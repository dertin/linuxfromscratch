#!/bin/bash

# LFS-Install - An Automated Linux From Scratch-Installer
# Copyright (C) 2002-2005  Daniel Baumann <daniel.baumann@panthera-systems.net>
#
# LFS-Install comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Gcc_pass1 ()
{
	# 5.5. GCC-3.4.1 - Pass 1
	cd "$LFS"/sources
	tar xfj gcc-core-3.4.1.tar.bz2
	cd gcc-3.4.1

	# 5.5.1. Installation of GCC

	# Begin commands
	mkdir ../gcc-build
	cd ../gcc-build

	../gcc-3.4.1/configure --prefix=/tools \
		--libexecdir=/tools/lib --with-local-prefix=/tools \
		--disable-nls --enable-shared --enable-languages=c
	
	make BOOT_LDFLAGS="-static" bootstrap

	make install

	ln -s gcc /tools/bin/cc
	# End commands

	cd ..
	rm -rf gcc-3.4.1 gcc-build
}

Gcc_pass1
