#!/bin/bash

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
# This project is based on "http://savannah.nongnu.org/projects/LFS-Automatic/"
#
# LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.

function E2fsprogs ()
{
	# 6.43. E2fsprogs-1.35
	cd /sources
	tar xfj e2fsprogs-1.35.tar.bz2
	cd e2fsprogs-1.35

	# 6.43.1. Installation of E2fsprogs

	# Begin commands
	mkdir build
	cd build

	../configure --prefix=/usr --with-root-prefix="" \
		--enable-elf-shlibs --disable-evms

	make

	# Begin test suites
	if [ "$TEST_SUITES" == "yes" ]
	then
		make check
	fi
	# End test suites

	make install

	make install-libs
	# End commands

	cd ../..
	rm -rf e2fsprogs-1.35
}

E2fsprogs
