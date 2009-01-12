#!/bin/bash

# LFS-Install - An Automated Linux From Scratch-Installer
# Copyright (C) 2002-2005  Daniel Baumann <daniel.baumann@panthera-systems.net>
#
# LFS-Install comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Creatingpartition ()
{
	# 2.2. Creating a New Partition
	echo
	echo -n "Enter disk [/dev/hda]: "
	read DISK

	if [ -z "$DISK" ]
	then
		DISK="/dev/hda"
	fi

	if [ ! -b "$DISK" ]
	then
		echo "EDISK: '"$DISK"' is not a valid block device."

		Creatingpartition
	fi

	export DISK

	# Begin commands
	cfdisk $DISK
	#fdisk $DISK
	# End commands
}

Creatingpartition
