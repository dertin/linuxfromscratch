#!/bin/bash

# LFS-Install - An Automated Linux From Scratch-Installer
# Copyright (C) 2002-2005  Daniel Baumann <daniel.baumann@panthera-systems.net>
#
# LFS-Install comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Whatnow ()
{
	# 9.4. What Now?

	# Begin cleanup
	if [ ! "$KEEP_LFS_SOURCES" == "yes" ]
	then
		rm -rf "$LFS"/sources
	fi

	if [ ! "$KEEP_KERNEL_SOURCES" == "yes" ]
	then
		rm -rf "$LFS"/usr/src/linux-2.6.8.1
	fi

	rm -rf "$LFS"/tools
	# End cleanup
}

Whatnow
