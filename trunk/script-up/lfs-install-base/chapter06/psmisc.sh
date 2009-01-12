#!/bin/bash

# LFS-Install - An Automated Linux From Scratch-Installer
# Copyright (C) 2002-2005  Daniel Baumann <daniel.baumann@panthera-systems.net>
#
# LFS-Install comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
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
