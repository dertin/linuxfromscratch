#!/bin/bash

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
#
# LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.



function Introduction ()
{
	# Introduction
	
	echo
	echo -n "Enter server [http://lfs-matrix.com/pub/lfs/]: "
	read SERVER
	
	if [ -z "$SERVER" ]
	then
		SERVER="http://lfs-matrix.com/pub/lfs/"
	fi
	
	cd "$LFS"
	wget --quiet --delete-after "$SERVER"/lfs-packages/6.4/MD5SUMS
	
	if [ "$?" != "0" ]
	then
		echo "ESERVER: '"$SERVER"' is not a valid lfs mirror."
	
		Introduction
	fi
	
	export SERVER
	
	# End commands
}

Introduction
