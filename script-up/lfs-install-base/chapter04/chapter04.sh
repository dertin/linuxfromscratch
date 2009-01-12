#!/bin/bash

# LFS-Install - An Automated Linux From Scratch-Installer
# Copyright (C) 2002-2005  Daniel Baumann <daniel.baumann@panthera-systems.net>
#
# LFS-Install comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Chapter04 ()
{
	# Chapter 4. Final Preparations

	# 4.2. Creating the $LFS/tools Directory
	"$LFS_INSTALL"/chapter04/creatingtoolsdir.sh

	# 4.3. Adding the LFS User
	"$LFS_INSTALL"/chapter04/addinguser.sh

	# 4.6. About the Test Suites
	source "$LFS_INSTALL"/chapter04/abouttestsuites.sh
}

Chapter04
