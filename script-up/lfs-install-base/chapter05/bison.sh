#!/bin/bash

# LFS-Install - An Automated Linux From Scratch-Installer
# Copyright (C) 2002-2005  Daniel Baumann <daniel.baumann@panthera-systems.net>
#
# LFS-Install comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Bison ()
{
	# 5.31. Bison-1.875a
	cd "$LFS"/sources
	tar xfj bison-1.875a.tar.bz2
	cd bison-1.875a

	# 5.31.1. Installation of Bison

	# Begin commands
	./configure --prefix=/tools

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
	rm -rf bison-1.875a
}

Bison
