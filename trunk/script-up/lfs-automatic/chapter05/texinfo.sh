#!/bin/bash

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
# 
#
# LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Texinfo ()
{
	# 5.28. Texinfo-4.7
	cd "$LFS"/sources
	tar xfj texinfo-4.7.tar.bz2
	cd texinfo-4.7

	# 5.28.1. Installation of Texinfo

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
	rm -rf texinfo-4.7
}

Texinfo
