#!/bin/bash

# LFS-Install - An Automated Linux From Scratch-Installer
# Copyright (C) 2002-2005  Daniel Baumann <daniel.baumann@panthera-systems.net>
#
# LFS-Install comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Udev ()
{
	# 5.35. Udev-030
	cd "$LFS"/sources
	tar xfj udev-030.tar.bz2
	cd udev-030

	# 5.35.1. Installation of Udev

	# Begin commands
	sed -i 's@/sbin/udev@/tools/sbin/udev@g' udevstart.c

	sed -i 's@/etc@/tools/etc@g' etc/udev/udev.conf.in

	make prefix=/tools etcdir=/tools/etc

	make DESTDIR=/tools udevdir=/dev install

	cp ../udev-config-2.permissions \
		/tools/etc/udev/permissions.d/00-lfs.permissions
	cp ../udev-config-1.rules /tools/etc/udev/rules.d/00-lfs.rules
	# End commands

	cd ..
	rm -rf udev-030
}

Udev
