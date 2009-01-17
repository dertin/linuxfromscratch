#!/bin/bash

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
# 
#
# LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.ls.


function Lfs-bootscripts ()
{
	# 7.2. LFS-Bootscripts-2.2.2
	cd /sources
	tar xfj lfs-bootscripts-2.2.2.tar.bz2
	cd lfs-bootscripts-2.2.2

	# 7.2.1. Installation of LFS-Bootscripts

	# Begin commands
	make install
	# End commands

	cd ..
	rm -rf lfs-bootscripts-2.2.2
}

Lfs-bootscripts
