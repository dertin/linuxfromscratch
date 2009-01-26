#!/bin/bash

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
# LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Environment ()
{
	# Config Preparations

	# Creating the $LFS/tools Directory
	"$LFS_INSTALL"/environment/creatingtoolsdir.sh

	# Setting Environment
	"$LFS_INSTALL"/environment/settingenvironment.sh
	
	# About the Test Suites
	#"$LFS_INSTALL"/environment/abouttestsuites.sh
}

Environment
