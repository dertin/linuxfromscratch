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
	# 5.13. GCC-3.4.1 - Pass 2
	cd "$LFS"/sources
	tar xfj gcc-core-3.4.1.tar.bz2
	tar xfj gcc-g++-3.4.1.tar.bz2
	tar xfj gcc-testsuite-3.4.1.tar.bz2
	cd gcc-3.4.1

	# 5.13.1. Re-installation of GCC

	# Begin commands
	#expect -c "spawn ls"

	patch -Np1 -i ../gcc-3.4.1-no_fixincludes-1.patch
	patch -Np1 -i ../gcc-3.4.1-specs-1.patch

	mkdir ../gcc-build
	cd ../gcc-build

	../gcc-3.4.1/configure --prefix=/tools \
		--libexecdir=/tools/lib --with-local-prefix=/tools \
		--enable-clocale=gnu --enable-shared \
		--enable-threads=posix --enable-__cxa_atexit \
		--enable-languages=c,c++ --disable-libstdcxx-pch

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
	rm -rf gcc-3.4.1 gcc-build
}

Gcc_pass2
