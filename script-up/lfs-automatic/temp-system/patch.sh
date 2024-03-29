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


function Patch ()
{
	# 5.27. Patch-2.5.4
	cd "$LFS"/sources
	tar xzf patch-2.5.4.tar.gz
	cd patch-2.5.4

	# 5.27.1. Installation of Patch

	# Begin commands
	
	./configure --prefix=/tools
	
	make

	make install
	
	# End commands

	cd ..
	rm -rf patch-2.5.4
}

Patch
