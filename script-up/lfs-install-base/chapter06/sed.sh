#!/bin/bash

# LFS-Install - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
# This project is based on "http://savannah.nongnu.org/projects/lfs-install/"
#
# LFS-Install comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Sed ()
{
	# 6.28. Sed-4.1.2
	cd /sources
	tar xfj sed-4.1.2.tar.bz2
	cd sed-4.1.2

	# 6.28.1. Installation of Sed

	# Begin commands
	./configure --prefix=/usr --bindir=/bin

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
	rm -rf sed-4.1.2
}

Sed
