#!/bin/bash

# LFS-Install - An Automated Linux From Scratch-Installer
# Copyright (C) 2002-2005  Daniel Baumann <daniel.baumann@panthera-systems.net>
#
# LFS-Install comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Creatingfilesystem ()
{
	# 2.3. Creating a File System on the Partition
	echo
	echo -n "Enter partition [/dev/hda1]: "
	read PARTITION

	if [ -z "$PARTITION" ]
	then
		PARTITION="/dev/hda1"
	fi

	if [ ! -b "$PARTITION" ]
	then
		echo "EPARTITION: '"$PARTITION"' is not a valid block device."

		Creatingfilesystem
	fi

	export PARTITION

	# Begin commands
	mke2fs $PARTITION
	#mkswap $PARTITION
	# End commands
}

Creatingfilesystem
