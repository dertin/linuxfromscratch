#!/bin/bash

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009 - 2011  Team Developer Dertin GNU/Linux
#
#
# LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.

# Amended by: Guillermo Céspedes Tabárez
# 13/01/2009


function Grep ()
{
	# 5.23. Grep-2.5.3
	cd "$LFS"/sources
	tar xfj grep-2.5.3.tar.bz2
	cd grep-2.5.3

	# 5.23.1. Installation of Grep

	# Begin commands
	./configure --prefix=/tools \
    	--disable-perl-regexp \
    	--without-included-regex

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
	rm -rf grep-2.5.3
}

Grep
