#!/bin/bash

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
# This project is based on "http://savannah.nongnu.org/projects/LFS-Automatic/"
#
# LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Gcc_pass2 ()
{
	# 5.13. GCC-3.4.2 - Pass 2
	cd "$LFS"/sources
	tar -jxf ../mpfr-2.3.2.tar.bz2
	mv mpfr-2.3.2 mpfr
	tar -jxf ../gmp-4.2.4.tar.bz2
	mv gmp-4.2.4 gmp
	tar xfj gcc-4.3.2.tar.bz2
	cd gcc-3.4.2

	# 5.13.1. Re-installation of GCC

	# Begin commands
	#expect -c "spawn ls"

	mkdir ../gcc-build
	cd ../gcc-build

	../gcc-4.3.2/configure --prefix=/tools \
    	--with-local-prefix=/tools --enable-clocale=gnu \
    	--enable-shared --enable-threads=posix \
    	--enable-__cxa_atexit --enable-languages=c,c++ \
    	--disable-libstdcxx-pch --disable-bootstrap

	make

	# Begin test suites
	if [ "$TEST_SUITES" == "yes" ]
	then
		make -k check

		#../gcc-3.4.1/contrib/test_summary
	fi
	# End test suites

	make install
	# End commands

	cd ..
	rm -rf gcc-3.4.2 gcc-build mpfr gmp
}

Gcc_pass2
