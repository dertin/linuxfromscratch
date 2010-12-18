#!/bin/bash

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009 - 2011  Team Developer Dertin GNU/Linux
#
# 
#
# LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Texinfo ()
{
	# 6.34. Texinfo-4.7
	cd /sources
	tar xfj texinfo-4.7.tar.bz2
	cd texinfo-4.7

	# 6.34.1. Installation of Texinfo

	# Begin commands
	patch -Np1 -i ../texinfo-4.7-segfault-1.patch

	./configure --prefix=/usr

	make

	# Begin test suites
	if [ "$TEST_SUITES" == "yes" ]
	then
		make check
	fi
	# End test suites

	make install

	# Begin configuration
	if [ "$TEXINFO_TEX" == "yes" ]
	then
		make TEXMF=/usr/share/texmf install-tex
	fi
	# End configuration

	cd /usr/share/info
	rm dir
	for f in *
	do install-info $f dir 2>/dev/null
	done
	# End commands

	cd -
	cd ..
	rm -rf texinfo-4.7
}

Texinfo
