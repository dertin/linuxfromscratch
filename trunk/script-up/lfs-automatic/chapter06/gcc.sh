#!/bin/bash

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
# This project is based on "http://savannah.nongnu.org/projects/LFS-Automatic/"
#
# LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Gcc ()
{
	# 6.14. GCC-3.4.1
	cd /sources
	tar xfj gcc-core-3.4.1.tar.bz2
	tar xfj gcc-g++-3.4.1.tar.bz2
	tar xfj gcc-testsuite-3.4.1.tar.bz2
	cd gcc-3.4.1

	# 6.14.1. Installation of GCC

	# Begin commands
	patch -Np1 -i ../gcc-3.4.1-no_fixincludes-1.patch

	patch -Np1 -i ../gcc-3.4.1-linkonce-1.patch

	sed -i 's/install_to_$(INSTALL_DEST) //' libiberty/Makefile.in

	mkdir ../gcc-build
	cd ../gcc-build

	../gcc-3.4.1/configure --prefix=/usr \
		--libexecdir=/usr/lib --enable-shared \
		--enable-threads=posix --enable-__cxa_atexit \
		--enable-clocale=gnu --enable-languages=c,c++

	make

	# Begin test suites
	if [ "$TEST_SUITES" == "yes" ] || [ "$TEST_SUITES" == "default" ]
	then
		make -k check
	fi
	# End test suites

	make install

	ln -s ../usr/bin/cpp /lib

	ln -s gcc /usr/bin/cc
	# End commands

	cd ..
	rm -rf gcc-3.4.1 gcc-build
}

Gcc
