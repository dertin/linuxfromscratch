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

function Chapter02 ()
{
	# Chapter 2. Preparing a New Partition

	# 2.2. Creating a New Partition
	source "$LFS_INSTALL"/chapter02/creatingpartition.sh

	# 2.3. Start a Swap Partition
	source "$LFS_INSTALL"/chapter02/startswap.sh
	
	# 2.4. Creating a File System on the Partition
	source "$LFS_INSTALL"/chapter02/creatingfilesystem.sh

	# 2.5. Mounting the New Partition
	"$LFS_INSTALL"/chapter02/mounting.sh
}

Chapter02
