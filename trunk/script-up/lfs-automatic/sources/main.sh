#!/bin/bash

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
#
# LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.



function Sources ()
{
	# Packages and Patches

	# Introduction
	"$LFS_INSTALL"/sources/introduction.sh

	# All Packages
	"$LFS_INSTALL"/sources/packages.sh
	
	# Needed Patches
	"$LFS_INSTALL"/sources/patches.sh
}

Sources
