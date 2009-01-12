#!/bin/bash

# LFS-Install - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
# This project is based on "http://savannah.nongnu.org/projects/lfs-install/"
#
# LFS-Install comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.

function Autoconf ()
{
	# 6.35. Autoconf-2.59
	cd /sources
	tar xfj autoconf-2.59.tar.bz2
	cd autoconf-2.59

	# 6.35.1. Installation of Autoconf

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
	rm -rf autoconf-2.59
}

Autoconf
