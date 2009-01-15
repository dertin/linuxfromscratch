#!/bin/bash

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
# This project is based on "http://savannah.nongnu.org/projects/LFS-Automatic/"
#
# LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Procps ()
{
	# 6.51. Procps-3.2.3
	cd /sources
	tar xfj procps-3.2.3.tar.bz2
	cd procps-3.2.3

	# 6.51.1. Installation of Procps

	# Begin commands
	make

	make install
	# End commands

	cd ..
	rm -rf procps-3.2.3
}

Procps
