#!/bin/bash

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
# This project is based on "http://savannah.nongnu.org/projects/LFS-Automatic/"
#
# LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Make ()
{
	# 5.21. Make-3.80
	cd "$LFS"/sources
	tar xfj make-3.80.tar.bz2
	cd make-3.80

	# 5.21.1. Installation of Make

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
	rm -rf make-3.80
}

Make