#!/bin/bash

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009 - 2011  Team Developer Dertin GNU/Linux
#
# 
#
# LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
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
