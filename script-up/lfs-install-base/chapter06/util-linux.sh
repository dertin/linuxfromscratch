#!/bin/bash

# LFS-Install - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
# This project is based on "http://savannah.nongnu.org/projects/lfs-install/"
#
# LFS-Install comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Util_linux ()
{
	# 6.58. Util-linux-2.12b
	cd /sources
	tar xfj util-linux-2.12b.tar.bz2
	cd util-linux-2.12b

	# 6.58.1. FHS compliance notes

	# Begin commands
	sed -i 's@etc/adjtime@var/lib/hwclock/adjtime@g' \
		hwclock/hwclock.c
	mkdir -p /var/lib/hwclock
	# End commands

	# 6.58.2. Installation of Util-linux

	# Begin commands
	patch -Np1 -i ../util-linux-2.12b-sfdisk-2.patch

	./configure

	make HAVE_KILL=yes HAVE_SLN=yes

	make HAVE_KILL=yes HAVE_SLN=yes install
	# End commands

	cd ..
	rm -rf util-linux-2.12b
}

Util_linux
