#!/bin/bash

# LFS-Install - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
# This project is based on "http://savannah.nongnu.org/projects/lfs-install/"
#
# LFS-Install comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Bzip2 ()
{
	# 6.40. Bzip2-1.0.2 
	cd /sources
	tar xfj bzip2-1.0.2.tar.bz2
	cd bzip2-1.0.2

	# 6.40.1. Installation of Bzip2

	# Begin commands
	make -f Makefile-libbz2_so
	make clean

	make

	make install

	cp bzip2-shared /bin/bzip2
	cp -a libbz2.so* /lib
	ln -s ../../lib/libbz2.so.1.0 /usr/lib/libbz2.so
	rm /usr/bin/{bunzip2,bzcat,bzip2}
	ln -s bzip2 /bin/bunzip2
	ln -s bzip2 /bin/bzcat
	# End commands

	cd ..
	rm -rf bzip2-1.0.2
}

Bzip2
