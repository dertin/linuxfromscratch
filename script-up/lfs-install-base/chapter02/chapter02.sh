#!/bin/bash

# LFS-Install - An Automated Linux From Scratch-Installer
# Copyright (C) 2002-2005  Daniel Baumann <daniel.baumann@panthera-systems.net>
#
# LFS-Install comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Chapter02 ()
{
	# Chapter 2. Preparing a New Partition

	# 2.2. Creating a New Partition
	source "$LFS_INSTALL"/chapter02/creatingpartition.sh

	# 2.3. Creating a File System on the Partition
	source "$LFS_INSTALL"/chapter02/creatingfilesystem.sh

	# 2.4. Mounting the New Partition
	"$LFS_INSTALL"/chapter02/mounting.sh
}

Chapter02
