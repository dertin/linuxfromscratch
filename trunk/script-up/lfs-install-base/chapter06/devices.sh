#!/bin/bash

# LFS-Install - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
# This project is based on "http://savannah.nongnu.org/projects/lfs-install/"
#
# LFS-Install comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Devices ()
{
	# 6.8. Populating /dev

	# 6.8.1. Creating Initial Device Nodes

	# Begin commands
	mknod -m 600 /dev/console c 5 1
	mknod -m 666 /dev/null c 1 3
	# End commands

	# 6.8.2. Mounting ramfs and Populating /dev

	# Begin commands
	mount -n -t ramfs none /dev

	/tools/sbin/udevstart

	ln -s /proc/self/fd /dev/fd
	ln -s /proc/self/fd/0 /dev/stdin
	ln -s /proc/self/fd/1 /dev/stdout
	ln -s /proc/self/fd/2 /dev/stderr
	ln -s /proc/kcore /dev/core
	mkdir /dev/pts
	mkdir /dev/shm

	mount -t devpts -o gid=4,mode=620 none /dev/pts
	mount -t tmpfs none /dev/shm
	# End commands
}

Devices
