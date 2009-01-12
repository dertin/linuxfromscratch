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
	# 6.9. Linux-Libc-Headers-2.6.8.1
	cd /sources
	tar xfj linux-libc-headers-2.6.8.1.tar.bz2
	cd linux-libc-headers-2.6.8.1

	# 6.9.1. Installation of Linux-Libc-Headers

	# Begin commands
	cp -R include/asm-i386 /usr/include/asm
	cp -R include/linux /usr/include

	chown -R root:root /usr/include/{asm,linux}

	find /usr/include/{asm,linux} -type d -exec chmod 755 {} \;
	find /usr/include/{asm,linux} -type f -exec chmod 644 {} \;
	# End commands

	cd ..
	rm -rf linux-libc-headers-2.6.8.1
}

Linux_libc_headers
