#!/bin/bash

# LFS-Install - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
# This project is based on "http://savannah.nongnu.org/projects/lfs-install/"
#
# LFS-Install comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Kernfs ()
{
	# 6.2. Mounting Virtual Kernel File Systems

	# Begin commands
	mkdir -p $LFS/{proc,sys}

	mount -t proc proc $LFS/proc
	mount -t sysfs sysfs $LFS/sys

	mount -f -t ramfs ramfs $LFS/dev
	mount -f -t tmpfs tmpfs $LFS/dev/shm
	mount -f -t devpts -o gid=4,mode=620 devpts $LFS/dev/pts
	# End commands
}

Kernfs
