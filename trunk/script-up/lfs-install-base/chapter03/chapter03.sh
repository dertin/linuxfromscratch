#!/bin/bash

# LFS-Install - An Automated Linux From Scratch-Installer
# Copyright (C) 2002-2005  Daniel Baumann <daniel.baumann@panthera-systems.net>
#
# LFS-Install comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Chapter03 ()
{
	# Chapter 3. Packages and Patches

	# 3.1. Introduction
	source "$LFS_INSTALL"/chapter03/introduction.sh

	# 3.2. All Packages
	"$LFS_INSTALL"/chapter03/packages.sh
	
	# 3.3. Needed Patches
	"$LFS_INSTALL"/chapter03/patches.sh
}

Chapter03
