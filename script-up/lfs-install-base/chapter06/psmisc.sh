#!/bin/bash

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
# This project is based on "http://savannah.nongnu.org/projects/LFS-Automatic/"
#
# LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Psmisc ()
{
	# 6.52. Psmisc-21.5 
	cd /sources
	tar xfj psmisc-21.5.tar.bz2
	cd psmisc-21.5

	# 6.52.1. Installation of Psmisc

	# Begin commands
	./configure --prefix=/usr --exec-prefix=""

	make

	make install

	mv /bin/pstree* /usr/bin
	ln -sf pstree /usr/bin/pstree.x11

	#ln -s killall /bin/pidof
	# End commands

	cd ..
	rm -rf psmisc-21.5
}

Psmisc
