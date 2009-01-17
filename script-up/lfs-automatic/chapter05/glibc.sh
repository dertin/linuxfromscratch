#!/bin/bash

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
# 
#
# LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Glibc ()
{
	# 5.8. Glibc-2.8-20080929
	cd "$LFS"/sources
	tar xfj glibc-2.8-20080929.tar.bz2
	cd glibc-2.8-20080929

	# 5.8.1. Installation of Glibc

	# Begin commands
	sed -i 's@/etc/ld.so.preload@/tools/etc/ld.so.preload@' elf/rtld.c
	mkdir ../glibc-build
	cd ../glibc-build
	echo "CFLAGS += -march=i486 -mtune=native" > configparms

	../glibc-2.8-20080929/configure --prefix=/tools \
    	--disable-profile --enable-add-ons \
    	--enable-kernel=2.6.0 --with-binutils=/tools/bin \
    	--without-gd --with-headers=/tools/include \
    	--without-selinux

	make

	# Begin test suites
	if [ "$TEST_SUITES" == "yes" ]
	then
		make check
	fi
	# End test suites

	mkdir -v /tools/etc
	touch /tools/etc/ld.so.conf
	
	make install

	# End commands

	cd ..
	rm -rf glibc-2.8-20080929 glibc-build
}

Glibc
