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


function Diffutils ()
{
	# 5.18. Diffutils-2.8.1
	cd "$LFS"/sources
	tar xzf diffutils-2.8.1.tar.gz
	cd diffutils-2.8.1

	# 5.18.1. Installation of Diffutils

	# Begin commands
	./configure --prefix=/tools

	make

	make install
	# End commands

	cd ..
	rm -rf diffutils-2.8.1
}

Diffutils
