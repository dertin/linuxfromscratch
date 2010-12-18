#!/bin/bash

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009 - 2011  Team Developer Dertin GNU/Linux
#
# 
#
# LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Iproute2 ()
{
	# 6.32. Iproute2-2.6.8-040823
	cd /sources
	tar xfj iproute2-2.6.8-040823.tar.bz2
	cd iproute2-2.6.8

	# 6.32.1. Installation of Iproute2

	# Begin commands
	patch -Np1 -i ../iproute2-2.6.8_040823-remove_db-1.patch

	./configure

	make SBINDIR=/sbin

	make SBINDIR=/sbin install
	# End commands

	cd ..
	rm -rf iproute2-2.6.8
}

Iproute2
