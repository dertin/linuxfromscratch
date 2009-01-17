#!/bin/bash

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
# 
#
# LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Theend ()
{
	# 9.1. The End

	# Begin commands
	echo "$LFS_VERSION (built with LFS-Automatic $LFS_INSTALL_VERSION)" > /etc/lfs-release
	# End commands
}

Theend
