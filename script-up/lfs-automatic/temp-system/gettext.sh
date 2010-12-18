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


function Gettext ()
{
	# 5.22. Gettext-0.17
	cd "$LFS"/sources
	tar xzf gettext-0.17.tar.gz
	cd gettext-0.17

	# 5.22.1. Installation of Gettext

	# Begin commands
	cd gettext-tools
	./configure --prefix=/tools --disable-shared

	make -C gnulib-lib
	make -C src msgfmt
	
	cp -v src/msgfmt /tools/bin
	
	# End commands

	cd ..
	rm -rf gettext-0.17
}

Gettext
