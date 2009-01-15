#!/bin/bash

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
# This project is based on "http://savannah.nongnu.org/projects/LFS-Automatic/"
#
# LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Bash ()
{
	# 6.37. Bash-3.0
	cd /sources
	tar xfj bash-3.0.tar.bz2
	cd bash-3.0

	# 6.37.1. Installation of Bash

	# Begin commands
	patch -Np1 -i ../bash-3.0-display_wrap-1.patch

	./configure --prefix=/usr --bindir=/bin \
		--without-bash-malloc --with-installed-readline

	make

	# Begin test suites
	if [ "$TEST_SUITES" == "yes" ]
	then
		make tests
	fi
	# End test suites

	make install

	#exec /bin/bash --login +h
	# End commands

	cd ..
	rm -rf bash-3.0
}

Bash
