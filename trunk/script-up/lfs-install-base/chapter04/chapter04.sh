#!/bin/bash

# LFS-Install - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
# This project is based on "http://savannah.nongnu.org/projects/lfs-install/"
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
