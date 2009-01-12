#!/bin/bash

# LFS-Install - An Automated Linux From Scratch-Installer
# Copyright (C) 2002-2005  Daniel Baumann <daniel.baumann@panthera-systems.net>
#
# LFS-Install comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Coreutils ()
{
	# 5.16. Coreutils-5.2.1
	cd "$LFS"/sources
	tar xfj coreutils-5.2.1.tar.bz2
	cd coreutils-5.2.1

	# 5.16.1. Installation of Coreutils

	# Begin commands
	DEFAULT_POSIX2_VERSION=199209 ./configure --prefix=/tools

	make

	# Begin test suites
	if [ "$TEST_SUITES" == "yes" ]
	then
		make RUN_EXPENSIVE_TESTS=yes check
	fi
	# End test suites

	make install
	# End commands

	cd ..
	rm -rf coreutils-5.2.1
}

Coreutils
