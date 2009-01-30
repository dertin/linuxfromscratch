#!/bin/bash

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
#
# LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.

	
	# User Add
	groupadd lfs
	useradd -s /bin/bash -g lfs -m -k /dev/null lfs

	#passwd lfs
	passwd -d lfs
	
	cp "$LFS_INSTALL"/../lfs-automatic.tar.gz /home/lfs
	tar zxf /home/lfs/lfs-automatic.tar.gz
	chown lfs /home/lfs/lfs-automatic
	
	chown lfs $LFS/tools
	chown lfs $LFS/sources
	
	# User Login
	su - lfs
	if [ $? = 1 ]; then
	echo "ERROR: User Login"
	exit 1
	fi
	echo "User Login [OK]"