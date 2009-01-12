#!/bin/bash

# LFS-Install - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
# This project is based on "http://savannah.nongnu.org/projects/lfs-install/"
#
# LFS-Install comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Reboot ()
{
	# 9.3. Rebooting the System

	# Begin commands
	umount "$LFS"/dev/pts
	umount "$LFS"/dev/shm
	umount "$LFS"/dev
	umount "$LFS"/proc
	umount "$LFS"/sys

	#umount $LFS

	#shutdown -r now
	# End commands
}

Reboot
