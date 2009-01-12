#!/bin/bash

# LFS-Install - An Automated Linux From Scratch-Installer
# Copyright (C) 2002-2005  Daniel Baumann <daniel.baumann@panthera-systems.net>
#
# LFS-Install comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Expect ()
{
	# 5.11. Expect-5.42.1
	cd "$LFS"/sources
	tar xfj expect-5.42.1.tar.bz2
	cd expect-5.42

	# 5.11.1. Installation of Expect

	# Begin commands
	patch -Np1 -i ../expect-5.42.1-spawn-1.patch

	./configure --prefix=/tools --with-tcl=/tools/lib --with-x=no

	make

	# Begin test suites
	if [ "$TEST_SUITES" == "yes" ]
	then
		make test
	fi
	# End test suites

	make SCRIPTS="" install
	# End commands

	cd ..
	rm -rf expect-5.42
	rm -rf tcl8.4.7
}

Expect
