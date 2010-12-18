#!/bin/bash

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009 - 2011  Team Developer Dertin GNU/Linux
#
# 
#
# LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Perl ()
{
	# 6.33. Perl-5.8.5
	cd /sources
	tar xfj perl-5.8.5.tar.bz2
	cd perl-5.8.5

	# 6.33.1. Installation of Perl

	# Begin commands
	./configure.gnu --prefix=/usr -Dpager="/bin/less -isR"

	make

	# Begin test suites
	if [ "$TEST_SUITES" == "yes" ]
	then
		echo "127.0.0.1 localhost $(hostname)" > /etc/hosts

		make test
	fi
	# End test suites

	make install
	# End commands

	cd ..
	rm -rf perl-5.8.5
}

Perl
