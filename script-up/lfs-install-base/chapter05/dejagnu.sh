#!/bin/bash

# LFS-Install - An Automated Linux From Scratch-Installer
# Copyright (C) 2002-2005  Daniel Baumann <daniel.baumann@panthera-systems.net>
#
# LFS-Install comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Dejagnu ()
{
	# 5.12. DejaGNU-1.4.4
	cd "$LFS"/sources
	tar xfj dejagnu-1.4.4.tar.bz2
	cd dejagnu-1.4.4

	# 5.12.1. Installation of DejaGNU

	# Begin commands
	./configure --prefix=/tools

	make install
	# End commands

	cd ..
	rm -rf dejagnu-1.4.4
}

Dejagnu
