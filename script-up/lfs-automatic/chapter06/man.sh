#!/bin/bash

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
# 
#
# LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Man ()
{
	# 6.47. Man-1.5o 
	cd /sources
	tar xfj man-1.5o.tar.bz2
	cd man-1.5o

	# 6.47.1. Installation of Man

	# Begin commands
	patch -Np1 -i ../man-1.5o-80cols-1.patch

	sed -i 's@-is@&R@g' configure

	sed -i 's@MANPATH./usr/man@#&@g' src/man.conf.in

	./configure -confdir=/etc

	make

	make install
	# End commands

	cd ..
	rm -rf man-1.5o
}

Man
