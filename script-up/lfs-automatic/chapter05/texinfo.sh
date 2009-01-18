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
	# 5.31. Texinfo-4.13
	cd "$LFS"/sources
	tar xzf texinfo-4.13a.tar.gz
	cd texinfo-4.13

	# 5.31.1. Installation of Texinfo

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
	rm -rf texinfo-4.13
}

Texinfo
