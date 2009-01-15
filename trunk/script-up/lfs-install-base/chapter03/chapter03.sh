#!/bin/bash

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
# This project is based on "http://savannah.nongnu.org/projects/LFS-Automatic/"
#
# LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
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
