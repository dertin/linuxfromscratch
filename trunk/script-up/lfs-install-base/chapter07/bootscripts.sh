#!/bin/bash

# LFS-Install - An Automated Linux From Scratch-Installer
# Copyright (C) 2002-2005  Daniel Baumann <daniel.baumann@panthera-systems.net>
#
# LFS-Install comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


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
