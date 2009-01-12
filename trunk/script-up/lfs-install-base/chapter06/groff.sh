#!/bin/bash

# LFS-Install - An Automated Linux From Scratch-Installer
# Copyright (C) 2002-2005  Daniel Baumann <daniel.baumann@panthera-systems.net>
#
# LFS-Install comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Groff ()
{
	# 6.27. Groff-1.19.1
	cd /sources
	tar xfj groff-1.19.1.tar.bz2
	cd groff-1.19.1

	# 6.27.1. Installation of Groff

	# Begin commands

	# Begin configuration
	PAGE=$GROFF_PAGE ./configure --prefix=/usr
	# End configuration

	make

	make install

	ln -s soelim /usr/bin/zsoelim
	ln -s eqn /usr/bin/geqn
	ln -s tbl /usr/bin/gtbl
	# End commands

	cd ..
	rm -rf groff-1.19.1
}

Groff
