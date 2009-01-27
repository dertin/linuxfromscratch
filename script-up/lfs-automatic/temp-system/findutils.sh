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


function Findutils ()
{
	# 5.20. Findutils-4.4.0
	cd "$LFS"/sources
	tar xzf findutils-4.4.0.tar.gz
	cd findutils-4.4.0

	# 5.20.1. Installation of Findutils

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
	rm -rf findutils-4.4.0
}

Findutils
