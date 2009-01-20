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


function Coreutils ()
{
	# 5.17. Coreutils-6.12
	cd "$LFS"/sources
	tar xzf coreutils-6.12.tar.gz
	cd coreutils-6.12

	# 5.17.1. Installation of Coreutils

	# Begin commands
	patch -Np1 -i ../coreutils-6.12-old_build_kernel-1.patch
	
	./configure --prefix=/tools --enable-install-program=hostname
	
	make

	# Begin test suites
	if [ "$TEST_SUITES" == "yes" ]
	then
		make RUN_EXPENSIVE_TESTS=yes check
	fi
	# End test suites

	make install
	
	cp -v src/su /tools/bin/su-tools
	# End commands

	cd ..
	rm -rf coreutils-6.12
}

Coreutils
