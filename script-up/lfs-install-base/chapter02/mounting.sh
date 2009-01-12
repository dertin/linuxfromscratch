#!/bin/bash

# LFS-Install - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
# This project is based on "http://savannah.nongnu.org/projects/lfs-install/"
#
# LFS-Install comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Mounting ()
{
	# 2.4. Mounting the New Partition

	# Begin commands
	#export LFS=/mnt/lfs

	mkdir -p $LFS
	mount $PARTITION $LFS

	#mkdir -p $LFS
	#mount $PARTITION_ROOT $LFS
	#mkdir $LFS/usr
	#mount $PARTITION_USER $LFS/usr
	# End commands
}

Mounting
