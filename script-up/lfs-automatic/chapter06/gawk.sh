#!/bin/bash

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009 - 2011  Team Developer Dertin GNU/Linux
#
# 
#
# LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Gawk ()
{
	# 6.20. Gawk-3.1.4
	cd /sources
	tar xfj gawk-3.1.4.tar.bz2
	cd gawk-3.1.4

	# 6.20.1. Installation of Gawk

	# Begin commands
	./configure --prefix=/usr --libexecdir=/usr/lib

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
	rm -rf gawk-3.1.4
}

Gawk
