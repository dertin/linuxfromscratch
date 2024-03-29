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


function Util_linux ()
{
	# 5.32. Util-linux-ng-2.14.1
	cd "$LFS"/sources
	tar xfj util-linux-ng-2.14.1.tar.bz2
	cd util-linux-ng-2.14.1

	# 5.32.1. Installation of Util-linux

	# Begin commands
	./configure --prefix=/tools

	make BLKID_LIBS="-lblkid -luuid" -C mount mount umount
	make -C text-utils more
	
	cp -v mount/{,u}mount text-utils/more /tools/bin
	# End commands

	cd ..
	rm -rf util-linux-ng-2.14.1
}

Util_linux
