#!/bin/bash

# LFS-Install - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
# This project is based on "http://savannah.nongnu.org/projects/lfs-install/"
#
# LFS-Install comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Linux_libc_headers ()
{
	# 5.6. Linux-Libc-Headers-2.6.8.1
	cd "$LFS"/sources
	tar xfj linux-libc-headers-2.6.8.1.tar.bz2
	cd linux-libc-headers-2.6.8.1

	# 5.6.1. Installation of Linux-Libc-Headers

	# Begin commands
	cp -R include/asm-i386 /tools/include/asm
	cp -R include/linux /tools/include
	# End commands

	cd ..
	rm -rf linux-libc-headers-2.6.8.1
}

Linux_libc_headers
