#!/bin/bash

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
#
# LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.

# Amended by: Guillermo Céspedes Tabárez
# 13/01/2009

function pause()
{
	read -s -n 1 -p "$*"
	echo
}

function Creatingpartition ()
{
	# Creating a New Partition
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

	echo
	echo "Create a partition of at least 4gb, and if you want to create another partition that is exchanged." 
	echo
	pause "Press any key to continue"
	
	cfdisk $DISK
}

Creatingpartition
