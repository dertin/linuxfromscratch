#!/bin/bash

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
#
# LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Creatingtoolsdir ()
{
	# Creating the $LFS/tools Directory

	mkdir $LFS/tools

	ln -s $LFS/tools /
	
	# Creating the $LFS/sources Directory
	mkdir $LFS/sources
	
	chmod a+wt $LFS/sources
	
	# Creating the $LFS_SETUP Directory
	if [ -d "$LFS_SETUP" ] && [ "$LFS_SETUP" != "$LFS_TEMP" ]; then
   	echo "Remove old: $LFS_SETUP [YES|no]"
   	read OPTy
		case "$OPTy" in
			Y|y|Yes|yes)
      		rm -R "$LFS_SETUP"
      		;;
			N|n|No|no)
			;;
			*)
			rm -R "$LFS_SETUP"
			;;
		esac
	fi
	
	if [ "$LFS_SETUP" != "$LFS_TEMP" ];	then
	mkdir "$LFS_SETUP"
	fi
}

Creatingtoolsdir
