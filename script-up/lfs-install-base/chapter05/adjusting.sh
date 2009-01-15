#!/bin/bash

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
# This project is based on "http://savannah.nongnu.org/projects/LFS-Automatic/"
#
# LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Adjusting ()
{
	# 5.9. Adjusting the Toolchain
	cd "$LFS"/sources/binutils-build

	# Begin commands
	make -C ld install

	SPECFILE=`gcc --print-file specs` &&
	sed 's@ /lib/ld-linux.so.2@ /tools/lib/ld-linux.so.2@g' \
		$SPECFILE > tempspecfile &&
	mv -f tempspecfile $SPECFILE &&
	unset SPECFILE

	rm -f /tools/lib/gcc/*/*/include/{pthread.h,bits/sigthread.h}
	
	# FIXME: Implement sanity-test
	# End commands

	cd ..
	rm -rf binutils-2.15.91.0.2 binutils-build
}

Adjusting
