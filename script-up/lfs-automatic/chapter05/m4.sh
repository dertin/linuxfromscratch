#!/bin/bash

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
#
# LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.

# Amended by: Guillermo Céspedes Tabárez
# 13/01/2009

function M4 ()
{
	# 5.25. M4-1.4.12
	cd "$LFS"/sources
	tar xfj m4-1.4.12.tar.bz2
	cd m4-1.4.12

	# 5.25.1. Installation of M4

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
	rm -rf m4-1.4.12
}

M4
