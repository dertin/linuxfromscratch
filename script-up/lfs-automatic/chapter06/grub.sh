#!/bin/bash

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009 - 2011  Team Developer Dertin GNU/Linux
#
# 
#
# LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Grub ()
{
	# 6.45. Grub-0.95
	cd /sources
	tar xfj grub-0.95.tar.bz2
	cd grub-0.95

	# 6.45.1. Installation of Grub

	# Begin commands
	./configure --prefix=/usr

	make

	# Begin test suites
	if [ "$TEST_SUITES" == "yes" ]
	then
		make check
	fi
	# End test suites

	make install
	mkdir /boot/grub
	cp /usr/share/grub/i386-pc/stage{1,2} /boot/grub
	# End commands

	cd ..
	rm -rf grub-0.95
}

Grub
