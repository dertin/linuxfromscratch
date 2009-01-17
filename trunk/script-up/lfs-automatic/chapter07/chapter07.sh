#!/bin/bash

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
# 
#
# LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Chapter07 ()
{
	# Chapter 7. Setting Up System Bootscripts
	cp -R "$LFS_INSTALL"/chapter07 "$LFS"

	# 6.61. Cleaning Up
	source "$LFS_INSTALL"/chapter06/revisedchroot.sh

	# 7.2. LFS-Bootscripts-2.2.2
	Revisedchroot /chapter07/bootscripts.sh

	# 7.5. Configuring the setclock Script
	Revisedchroot /chapter07/setclock.sh

	# 7.7. Creating the /etc/inputrc File
	Revisedchroot /chapter07/inputrc.sh

	# 7.8. The Bash Shell Startup Files
	Revisedchroot /chapter07/profile.sh

	# 7.10. Configuring the localnet Script
	Revisedchroot /chapter07/hostname.sh

	# 7.11. Creating the /etc/hosts File
	Revisedchroot /chapter07/hosts.sh

	# 7.12. Configuring the network Script
	Revisedchroot /chapter07/network.sh

	rm -rf "$LFS"/chapter07
}

Chapter07
