#!/bin/bash

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
#
# LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.

# Amended by: Guillermo Céspedes Tabárez
# 13/01/2009


function Dejagnu ()
{
	# 5.11. DejaGNU-1.4.4
	cd "$LFS"/sources
	tar xzf dejagnu-1.4.4.tar.gz
	cd dejagnu-1.4.4

	# 5.11.1. Installation of DejaGNU

	# Begin commands
	./configure --prefix=/tools

	make install
	# End commands

	cd ..
	rm -rf dejagnu-1.4.4
}

Dejagnu
