#!/bin/bash

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009 - 2011  Team Developer Dertin GNU/Linux
#
# 
#
# LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Gzip ()
{
	# 6.46. Gzip-1.3.5
	cd /sources
	tar xfj gzip-1.3.5.tar.bz2
	cd gzip-1.3.5

	# 6.46.1. Installation of Gzip

	# Begin commands
	./configure --prefix=/usr

	sed -i 's@"BINDIR"@/bin@g' gzexe.in

	make

	make install

	mv /usr/bin/gzip /bin
	rm /usr/bin/{gunzip,zcat}
	ln -s gzip /bin/gunzip
	ln -s gzip /bin/zcat
	ln -s gunzip /bin/uncompress
	# End commands

	cd ..
	rm -rf gzip-1.3.5
}

Gzip
