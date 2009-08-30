#!/bin/bash

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
#
# LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.

	#RUN ROOT
	
	# User Add
	groupadd lfs
	useradd -s /bin/bash -g lfs -m -k /dev/null lfs

	# Passwd lfs - Null
	passwd -d lfs
	
	chown lfs $LFS/tools
	chown lfs $LFS/sources
		
	# FIX-Bug A01 - Create the directory and copy the files to make the basic installation.
	source "$LFS_TEMP"/app-setup/install.sh
	chown lfs $LFS_SETUP
	chown lfs $LFS_SETUP/*
	
	# User Login
	su - lfs
	if [ $? = 1 ]; then
	echo "ERROR: User Login"
	exit 1
	fi
	echo "User Login [OK]"
