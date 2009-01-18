#!/bin/bash

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
# 
#
# LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Binutils_pass2 ()
{
	# 5.13. Binutils-2.18 - Pass 2
	
	cd "$LFS"/sources
#	rm binutils-2.18                        #TODO: Se deberia borrar ?
#	tar xfj binutils-2.18.tar.bz2
	cd binutils-2.18

	# 5.13.1. Re-installation of Binutils

	# Begin commands
	patch -Np1 -i ../binutils-2.18-configure-1.patch
	
#	mkdir ../binutils-build					#TODO: Ya existe del Pass1.
	cd ../binutils-build

	../binutils-2.18/configure --prefix=/tools \
    	--disable-nls --with-lib-path=/tools/lib

	make

	# Begin test suites
	if [ "$TEST_SUITES" == "yes" ]
	then
		make check
	fi
	# End test suites

	make install

	make -C ld clean
	make -C ld LIB_PATH=/usr/lib:/lib
	cp -v ld/ld-new /tools/bin
	# End commands

	# Warning
	# Do not remove the Binutils source and build directories yet. These
	# directories will be needed again in the next chapter in their current
	# state.

	cd ..
}

Binutils_pass2
