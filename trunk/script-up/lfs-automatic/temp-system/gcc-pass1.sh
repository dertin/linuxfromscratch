#!/bin/bash

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009 - 2011  Team Developer Dertin GNU/Linux
#
#
# LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.

# Amended by: Guillermo Céspedes Tabárez
# 13/01/2009


function Gcc_pass1 ()
{
	# 5.5. GCC-3.4.2 - Pass 1
	cd "$LFS"/sources
	tar -jxf ../mpfr-2.3.2.tar.bz2
	mv mpfr-2.3.2 mpfr
	tar -jxf ../gmp-4.2.4.tar.bz2
	mv gmp-4.2.4 gmp
	tar xfj gcc-4.3.2.tar.bz2
	cd gcc-3.4.2

	# 5.5.1. Installation of GCC

	# Begin commands
	mkdir ../gcc-build
	cd ../gcc-build

	CC="gcc -B/usr/bin/" ../gcc-4.3.2/configure --prefix=/tools \
    --with-local-prefix=/tools --disable-nls --disable-shared --disable-libssp \
    --enable-languages=c
	
	make
	make install

	ln -vs libgcc.a `gcc -print-libgcc-file-name | \
    sed 's/libgcc/&_eh/'`
    
    ln -vs gcc /tools/bin/cc
	# End commands

	cd ..
	rm -rf gcc-3.4.2 gcc-build mpfr gmp
}

Gcc_pass1
