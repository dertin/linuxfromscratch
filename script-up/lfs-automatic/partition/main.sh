#!/bin/bash

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
# LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.

# Amended by: Guillermo Céspedes Tabárez
# 13/01/2009

function Partition ()
{
	# Preparing a New Partition

	# 2.2. Creating a New Partition
	"$LFS_INSTALL"/partition/creatingpartition.sh

	# 2.3. Start a Swap Partition
	"$LFS_INSTALL"/partition/startswap.sh
	
	# 2.4. Creating a File System on the Partition
	"$LFS_INSTALL"/partition/creatingfilesystem.sh

	# 2.5. Mounting the New Partition
	"$LFS_INSTALL"/partition/mounting.sh
}

Partition
