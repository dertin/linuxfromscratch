#!/bin/bash

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
# 
#
# LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Tar ()
{
	# 6.56. Tar-1.14
	cd /sources
	tar xfj tar-1.14.tar.bz2
	cd tar-1.14

	# 6.56.1. Installation of Tar

	# Begin commands
	./configure --prefix=/usr --bindir=/bin --libexecdir=/usr/sbin

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
	rm -rf tar-1.14
}

Tar
