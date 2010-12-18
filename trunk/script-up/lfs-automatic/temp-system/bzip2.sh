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


function Bzip2 ()
{
	# 5.16. Bzip2-1.0.5
	cd "$LFS"/sources
	tar xzf bzip2-1.0.5.tar.gz
	cd bzip2-1.0.5

	# 5.16.1. Installation of Bzip2

	# Begin commands
	make

	make PREFIX=/tools install
	# End commands

	cd ..
	rm -rf bzip2-1.0.5
}

Bzip2
