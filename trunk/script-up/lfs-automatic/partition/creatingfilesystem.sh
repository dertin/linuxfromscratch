#!/bin/bash

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009 - 2011  Team Developer Dertin GNU/Linux
#
#
# LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.

# By: Guillermo Céspedes Tabárez
# Created: 13/01/2009
# Last modified: 19/04/2009

function Creatingfilesystem ()
{
	# Creating a File System on the Partition
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

	mke2fs -jv $PARTITION
}

Creatingfilesystem
