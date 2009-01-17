#!/bin/bash

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
# 
#
# LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Bash ()
{
	# 5.29. Bash-3.2
	cd "$LFS"/sources
	tar xzf bash-3.2.tar.gz
	cd bash-3.2

	# 5.29.1. Installation of Bash

	# Begin commands
	patch -Np1 -i ../bash-3.2-fixes-8.patch
	
	./configure --prefix=/tools --without-bash-malloc \
   	ac_cv_func_working_mktime=yes

	make

	# Begin test suites
	if [ "$TEST_SUITES" == "yes" ]
	then
		make tests
	fi
	# End test suites

	make install

	ln -s bash /tools/bin/sh
	# End commands

	cd ..
	rm -rf bash-3.2
}

Bash
