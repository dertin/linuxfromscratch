#!/bin/bash

# LFS-Install - An Automated Linux From Scratch-Installer
# Copyright (C) 2002-2005  Daniel Baumann <daniel.baumann@panthera-systems.net>
#
# LFS-Install comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Module_init_tools ()
{
	# 6.49. Module-Init-Tools-3.0
	cd /sources
	tar xfj module-init-tools-3.0.tar.bz2
	cd module-init-tools-3.0

	# 6.49.1. Installation of Module-Init-Tools

	# Begin commands
	./configure --prefix="" --enable-zlib

	make

	# Begin test suites
	if [ "$TEST_SUITES" == "yes" ]
	then
		make check
	fi
	# End test suites

	make install
	# End commands

	cd ..
	rm -rf module-init-tools-3.0
}

Module_init_tools
