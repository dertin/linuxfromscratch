#!/bin/bash

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
# 
#
# LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.

function Gawk ()
{
	# 5.15. Gawk-3.1.6
	cd "$LFS"/sources
	tar xfj gawk-3.1.6.tar.bz2
	cd gawk-3.1.6

	# 5.15.1. Installation of Gawk

	# Begin commands
	./configure --prefix=/tools ac_cv_func_working_mktime=yes

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
	rm -rf gawk-3.1.6
}

Gawk
