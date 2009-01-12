#!/bin/bash

# LFS-Install - An Automated Linux From Scratch-Installer
# Copyright (C) 2002-2005  Daniel Baumann <daniel.baumann@panthera-systems.net>
#
# LFS-Install comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Grep ()
{
	# 6.44. Grep-2.5.1
	cd /sources
	tar xfj grep-2.5.1.tar.bz2
	cd grep-2.5.1

	# 6.44.1. Installation of Grep

	# Begin commands
	./configure --prefix=/usr --bindir=/bin --with-included-regex

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
	rm -rf grep-2.5.1
}

Grep
