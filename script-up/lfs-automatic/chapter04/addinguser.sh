#!/bin/bash

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
#
# LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Addinguser ()
{
	# 4.3. Adding the LFS User

	# Begin commands
	groupadd lfs
	useradd -s /bin/bash -g lfs -m -k /dev/null lfs

	#passwd lfs
	passwd -d lfs

	chown lfs $LFS/tools

	chown lfs $LFS/sources

	#su - lfs
	# End commands
}

Addinguser
