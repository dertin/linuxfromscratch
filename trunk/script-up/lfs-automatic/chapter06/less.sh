#!/bin/bash

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009 - 2011  Team Developer Dertin GNU/Linux
#
# 
#
# LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Less ()
{
	# 6.26. Less-382
	cd /sources
	tar xfj less-382.tar.bz2
	cd less-382

	# 6.26.1. Installation of Less

	# Begin commands
	./configure --prefix=/usr --bindir=/bin --sysconfdir=/etc

	make

	make install
	# End commands

	cd ..
	rm -rf less-382
}

Less
