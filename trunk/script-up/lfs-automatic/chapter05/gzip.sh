#!/bin/bash

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
# 
#
# LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Gzip ()
{
	# 5.24. gzip-1.3.12
	cd "$LFS"/sources
	tar xzf gzip-1.3.12.tar.gz
	cd gzip-1.3.12

	# 5.18.1. Installation of Gzip

	# Begin commands

	for file in gzip.c lib/utimens.{c,h} ; do \
   		cp -v $file{,.orig}
   		sed 's/futimens/gl_&/' $file.orig > $file
	done
	
	./configure --prefix=/tools

	make

	make install
	# End commands

	cd ..
	rm -rf gzip-1.3.12
}

Gzip
