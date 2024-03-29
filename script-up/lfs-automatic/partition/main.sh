#!/bin/bash

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009 - 2011  Team Developer Dertin GNU/Linux
#
# LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.

# By: Guillermo Céspedes Tabárez
# Created: 13/01/2009
# Last modified: 19/04/2009


# RUN ROOT
function Partition ()
{

	# Creating a New Partition
	"$LFS_TEMP"/partition/creatingpartition.sh

	# Creating a File System on the Partition
	source "$LFS_TEMP"/partition/creatingfilesystem.sh
	
	# Start a Swap Partition
	"$LFS_TEMP"/partition/startswap.sh

	# Mounting the New Partition
	source "$LFS_TEMP"/partition/mounting.sh
	
	# Creating the $LFS/tools Directory
	"$LFS_TEMP"/partition/creatingdirs.sh
}

Partition
