#!/bin/bash

# LFS-Install - An Automated Linux From Scratch-Installer
# Copyright (C) 2002-2005  Daniel Baumann <daniel.baumann@panthera-systems.net>
#
# LFS-Install comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Libtool ()
{
	# 6.39. Libtool-1.5.8
	cd /sources
	tar xfj libtool-1.5.8.tar.bz2
	cd libtool-1.5.8

	# 6.39.1. Installation of Libtool

	# Begin commands
	./configure --prefix=/usr

	make

	# Begin test suites
	if [ "$TEST_SUITES" == "yes" ]
	then
		make check
	fi
	# End test suites

	make install
	# End commands

	cd ..
	rm -rf libtool-1.5.8
}

Libtool
