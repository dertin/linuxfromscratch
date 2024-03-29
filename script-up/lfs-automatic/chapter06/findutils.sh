#!/bin/bash

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009 - 2011  Team Developer Dertin GNU/Linux
#
# 
#
# LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Findutils ()
{
	# 6.19. Findutils-4.1.20
	cd /sources
	tar xfj findutils-4.1.20.tar.bz2
	cd findutils-4.1.20

	# 6.19.1. Installation of Findutils

	# Begin commands
	./configure --prefix=/usr --libexecdir=/usr/lib/locate \
		--localstatedir=/var/lib/locate

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
	rm -rf findutils-4.1.20
}

Findutils
