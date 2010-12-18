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


function Expect ()
{
	# 5.10. Expect-5.43.0
	cd "$LFS"/sources
	tar xzf expect-5.43.0.tar.gz
	cd expect-5.43

	# 5.10.1. Installation of Expect

	# Begin commands
	patch -Np1 -i ../expect-5.43.0-spawn-1.patch
	patch -Np1 -i ../expect-5.43.0-tcl_8.5.5_fix-1.patch

	cp -v configure{,.orig}
	sed 's:/usr/local/bin:/bin:' configure.orig > configure
	
	./configure --prefix=/tools --with-tcl=/tools/lib \
  	--with-tclinclude=/tools/include --with-x=no

	make
	
	# Begin test suites
	if [ "$TEST_SUITES" == "yes" ]
	then
		make test
	fi
	# End test suites

	make SCRIPTS="" install
	# End commands

	cd ..
	rm -rf expect-5.43
	rm -rf tcl8.5.5
}

Expect
