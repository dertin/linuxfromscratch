#!/bin/bash

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
# This project is based on "http://savannah.nongnu.org/projects/LFS-Automatic/"
#
# LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Gettext ()
{
	# 5.24. Gettext-0.14.1
	cd "$LFS"/sources
	tar xfj gettext-0.14.1.tar.bz2
	cd gettext-0.14.1

	# 5.24.1. Installation of Gettext

	# Begin commands
	./configure --prefix=/tools --disable-libasprintf \
		--disable-csharp

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
	rm -rf gettext-0.14.1
}

Gettext