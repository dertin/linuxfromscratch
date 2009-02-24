#!/bin/bash

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
#
# LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Mounting ()
{
	# Mounting the New Partition

	#export LFS=/mnt/lfs

	mkdir -p $LFS
	mount $PARTITION $LFS #FIXME fstab

}

Mounting
