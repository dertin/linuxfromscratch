#!/bin/bash

# LFS-Install - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
# This project is based on "http://savannah.nongnu.org/projects/lfs-install/"
#
# LFS-Install comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Binutils ()
{
	# 6.13. Binutils-2.15.91.0.2
	cd /sources
	tar xfj binutils-2.15.91.0.2.tar.bz2
	cd binutils-2.15.91.0.2

	# 6.13.1. Installation of Binutils

	# Begin commands
	#expect -c "spawn ls"

	mkdir ../binutils-build
	cd ../binutils-build

	../binutils-2.15.91.0.2/configure --prefix=/usr \
		--enable-shared

	make tooldir=/usr

	# Begin test suites
	if [ "$TEST_SUITES" == "yes" ] || [ "$TEST_SUITES" == "default" ]
	then
		make check
	fi
	# End test suites

	make tooldir=/usr install

	cp ../binutils-2.15.91.0.2/include/libiberty.h /usr/include
	# End commands

	cd ..
	rm -rf binutils-2.15.91.0.2 binutils-build
}

Binutils
