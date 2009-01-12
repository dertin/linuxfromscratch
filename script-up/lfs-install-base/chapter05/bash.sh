#!/bin/bash

# LFS-Install - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
# This project is based on "http://savannah.nongnu.org/projects/lfs-install/"
#
# LFS-Install comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Bash ()
{
	# 5.29. Bash-3.0
	cd "$LFS"/sources
	tar xfj bash-3.0.tar.bz2
	cd bash-3.0

	# 5.29.1. Installation of Bash

	# Begin commands
	./configure --prefix=/tools --without-bash-malloc

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
	rm -rf bash-3.0
}

Bash
