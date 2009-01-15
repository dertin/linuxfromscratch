#!/bin/bash

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
# This project is based on "http://savannah.nongnu.org/projects/LFS-Automatic/"
#
# LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Kernel_headers ()
{
	# 5.7. Linux-2.6.27.4 Headers
	cd "$LFS"/sources
	tar xfj linux-2.6.27.4.tar.bz2
	cd linux-2.6.27.4

	# 5.7.1. Installation of the Kernel Headers

	# Begin commands
	make mrproper
	make headers_check
	make INSTALL_HDR_PATH=dest headers_install
	cp -rv dest/include/* /tools/include
	# End commands

	cd ..
	rm -rf linux-2.6.27.4
}

Kernel_headers