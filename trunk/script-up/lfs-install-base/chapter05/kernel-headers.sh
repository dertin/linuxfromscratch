#!/bin/bash

# LFS-Install - An Automated Linux From Scratch-Installer
# Copyright (C) 2002-2005  Daniel Baumann <daniel.baumann@panthera-systems.net>
#
# LFS-Install comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Kernel_headers ()
{
	# 5.7. Linux-2.6.8.1 Headers
	cd "$LFS"/sources
	tar xfj linux-2.6.8.1.tar.bz2
	cd linux-2.6.8.1

	# 5.7.1. Installation of the Kernel Headers

	# Begin commands
	make mrproper

	make include/linux/version.h

	make include/asm

	mkdir /tools/glibc-kernheaders
	cp -HR include/asm /tools/glibc-kernheaders
	cp -R include/asm-generic /tools/glibc-kernheaders

	cp -R include/linux /tools/glibc-kernheaders
	# End commands

	cd ..
	rm -rf linux-2.6.8.1
}

Kernel_headers
