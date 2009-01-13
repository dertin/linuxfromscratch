#!/bin/bash

# LFS-Install - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
# This project is based on "http://savannah.nongnu.org/projects/lfs-install/"
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
		SERVER="http://kerrek.linuxfromscratch.org/pub/lfs/"
	fi
	
	cd "$LFS"
	wget --quiet --delete-after "$SERVER"/conglomeration/MD5SUMS
	
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
