#!/bin/bash

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009 - 2011  Team Developer Dertin GNU/Linux
#
# 
#
# LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Chapter09 ()
{
	# Chapter 9. The End
	cp -R "$LFS_INSTALL"/chapter09 "$LFS"

	# 6.61. Cleaning Up
	source "$LFS_INSTALL"/chapter06/revisedchroot.sh

	# 9.1. The End
	Revisedchroot /chapter09/theend.sh

	# 9.3. Rebooting the System
	"$LFS_INSTALL"/chapter09/reboot.sh

	# 9.4. What Now?
	"$LFS_INSTALL"/chapter09/whatnow.sh

	rm -rf "$LFS"/chapter09
}

Chapter09
