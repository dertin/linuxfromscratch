#!/bin/bash

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
# 
#
# LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Util_linux ()
{
	# 5.33. Util-linux-2.12b
	cd "$LFS"/sources
	tar xfj util-linux-2.12b.tar.bz2
	cd util-linux-2.12b

	# 5.33.1. Installation of Util-linux

	# Begin commands
	sed -i 's@/usr/include@/tools/include@g' configure

	./configure

	make -C lib

	make -C mount mount umount
	make -C text-utils more

	cp mount/{,u}mount text-utils/more /tools/bin
	# End commands

	cd ..
	rm -rf util-linux-2.12b
}

Util_linux
