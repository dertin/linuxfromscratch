#!/bin/bash

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009 - 2011  Team Developer Dertin GNU/Linux
#
# 
#
# LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Readjusting ()
{
	# 6.12. Re-adjusting the Toolchain 
	cd /sources/binutils-build

	# Begin commands
	make -C ld INSTALL=/tools/bin/install install

	sed -i 's@ /tools/lib/ld-linux.so.2@ /lib/ld-linux.so.2@g' \
		`gcc --print-file specs`
	
	# FIXME: Implement sanity-test
	# End commands

	cd ..
	rm -rf binutils-2.15.91.0.2 binutils-build
}

Readjusting
