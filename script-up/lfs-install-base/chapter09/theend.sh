#!/bin/bash

# LFS-Install - An Automated Linux From Scratch-Installer
# Copyright (C) 2002-2005  Daniel Baumann <daniel.baumann@panthera-systems.net>
#
# LFS-Install comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Theend ()
{
	# 9.1. The End

	# Begin commands
	echo "$LFS_VERSION (built with LFS-Install $LFS_INSTALL_VERSION)" > /etc/lfs-release
	# End commands
}

Theend
