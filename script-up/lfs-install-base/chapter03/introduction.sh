#!/bin/bash

# LFS-Install - An Automated Linux From Scratch-Installer
# Copyright (C) 2002-2005  Daniel Baumann <daniel.baumann@panthera-systems.net>
#
# LFS-Install comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Introduction ()
{
	# 3.1. Introduction
	echo
	echo -n "Enter server [ftp://ftp.linuxfromscratch.org/pub/lfs/]: "
	read SERVER

	if [ -z "$SERVER" ]
	then
		SERVER="ftp://ftp.linuxfromscratch.org/pub/lfs/"
	fi

	cd "$LFS"
	wget --quiet --delete-after "$SERVER"/lfs-packages/conglomeration/MD5SUMS

	if [ "$?" != "0" ]
	then
		echo "ESERVER: '"$SERVER"' is not a valid lfs mirror."

		Introduction
	fi

	export SERVER

	# Begin commands
	mkdir $LFS/sources

	chmod a+wt $LFS/sources
	# End commands
}

Introduction
