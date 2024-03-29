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


function Tcl ()
{
	# 5.9. Tcl8.5.5
	cd "$LFS"/sources
	tar xzf tcl8.5.5-src.tar.gz
	cd tcl8.5.5

	# 5.9.1. Installation of Tcl

	# Begin commands
	cd unix
	./configure --prefix=/tools

	make

	# Begin test suites
	if [ "$TEST_SUITES" == "yes" ]
	then
		TZ=UTC make test
	fi
	# End test suites

	make install

	chmod -v u+w /tools/lib/libtcl8.5.so
	
	make install-private-headers
	ln -sv tclsh8.5 /tools/bin/tclsh
	
	# End commands

	# Warning
	# Do not remove the Tcl8.5.5 source directory yet, as the next package
	# will need its internal headers.

	cd ..
}

Tcl
