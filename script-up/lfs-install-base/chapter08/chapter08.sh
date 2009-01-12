#!/bin/bash

# LFS-Install - An Automated Linux From Scratch-Installer
# Copyright (C) 2002-2005  Daniel Baumann <daniel.baumann@panthera-systems.net>
#
# LFS-Install comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Chapter08 ()
{
	# Chapter 8. Making the LFS System Bootable
	cp -R "$LFS_INSTALL"/chapter08 "$LFS"

	# 6.61. Cleaning Up
	source "$LFS_INSTALL"/chapter06/revisedchroot.sh

	# 8.2. Creating the /etc/fstab File
	Revisedchroot /chapter08/fstab.sh

	# 8.3. Linux-2.6.8.1 
	Revisedchroot /chapter08/kernel.sh

	# 8.4. Making the LFS System Bootable 
	Revisedchroot /chapter08/grub.sh

	rm -rf "$LFS"/chapter08
}

Chapter08
