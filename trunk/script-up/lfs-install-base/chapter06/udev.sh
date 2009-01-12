#!/bin/bash

# LFS-Install - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
# This project is based on "http://savannah.nongnu.org/projects/lfs-install/"
#
# LFS-Install comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Udev ()
{
	# 6.57. Udev-030
	cd /sources
	tar xfj udev-030.tar.bz2
	cd udev-030

	# 6.57.1. Installation of Udev

	# Begin commands
	make udevdir=/dev

	make udevdir=/dev install

	cp ../udev-config-2.permissions \
		/etc/udev/permissions.d/25-lfs.permissions
	cp ../udev-config-1.rules /etc/udev/rules.d/25-lfs.rules
	# End commands

	cd ..
	rm -rf udev-030
}

Udev
