#!/bin/bash

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009 - 2011  Team Developer Dertin GNU/Linux
#
#
# LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.



function Sources ()
{
	# Packages and Patches

	# Introduction
	"$LFS_SETUP"/sources/introduction.sh

	# All Packages
	"$LFS_SETUP"/sources/packages.sh
	
	# Needed Patches
	"$LFS_SETUP"/sources/patches.sh
}

Sources
