#!/bin/bash

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
# This project is based on "http://savannah.nongnu.org/projects/LFS-Automatic/"
#
# LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Zlib ()
{
	# 6.16. Zlib-1.2.1
	cd /sources
	tar xfj zlib-1.2.1.tar.bz2
	cd zlib-1.2.1

	# 6.16.1. Installation of Zlib

	# Begin commands
	patch -Np1 -i ../zlib-1.2.1-security-1.patch

	./configure --prefix=/usr --shared

	make

	# Begin test suites
	if [ "$TEST_SUITES" == "yes" ]
	then
		make check
	fi
	# End test suites

	make install

	make clean
	./configure --prefix=/usr
	make

	# Begin test suites
	if [ "$TEST_SUITES" == "yes" ]
	then
		make check
	fi
	# End test suites

	make install

	chmod 644 /usr/lib/libz.a

	mv /usr/lib/libz.so.* /lib

	ln -sf ../../lib/libz.so.1 /usr/lib/libz.so
	# End commands

	cd ..
	rm -rf zlib-1.2.1
}

Zlib
