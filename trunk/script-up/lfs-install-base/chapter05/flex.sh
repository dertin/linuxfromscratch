#!/bin/bash

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
# This project is based on "http://savannah.nongnu.org/projects/LFS-Automatic/"
#
# LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Flex ()
{
	# 5.32. Flex-2.5.31
	cd "$LFS"/sources
	tar xfj flex-2.5.31.tar.bz2
	cd flex-2.5.31

	# 5.32.1. Installation of Flex

	# Begin commands
	patch -Np1 -i ../flex-2.5.31-debian_fixes-2.patch

	touch doc/flex.1

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
	rm -rf flex-2.5.31
}

Flex
