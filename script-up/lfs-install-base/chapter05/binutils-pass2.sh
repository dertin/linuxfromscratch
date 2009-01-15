#!/bin/bash

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
# This project is based on "http://savannah.nongnu.org/projects/LFS-Automatic/"
#
# LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Binutils_pass2 ()
{
	# 5.14. Binutils-2.15.91.0.2 - Pass 2
	cd "$LFS"/sources
	tar xfj binutils-2.15.91.0.2.tar.bz2
	cd binutils-2.15.91.0.2

	# 5.14.1. Re-installation of Binutils

	# Begin commands
	mkdir ../binutils-build
	cd ../binutils-build

	../binutils-2.15.91.0.2/configure --prefix=/tools \
		--enable-shared --with-lib-path=/tools/lib

	make

	# Begin test suites
	if [ "$TEST_SUITES" == "yes" ]
	then
		make check
	fi
	# End test suites

	make install

	make -C ld clean
	make -C ld LIB_PATH=/usr/lib:/lib
	# End commands

	# Warning
	# Do not remove the Binutils source and build directories yet. These
	# directories will be needed again in the next chapter in their current
	# state.

	cd ..
}

Binutils_pass2
