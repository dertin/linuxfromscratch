#!/bin/bash

# LFS-Install - An Automated Linux From Scratch-Installer
# Copyright (C) 2002-2005  Daniel Baumann <daniel.baumann@panthera-systems.net>
#
# LFS-Install comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Kbd ()
{
	# 6.42. Kbd-1.12
	cd /sources
	tar xfj kbd-1.12.tar.bz2
	cd kbd-1.12

	# 6.42.1. Installation of Kbd

	# Begin commands
	./configure

	make

	make install
	# End commands

	cd ..
	rm -rf kbd-1.12
}

Kbd
