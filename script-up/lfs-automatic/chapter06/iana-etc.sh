#!/bin/bash

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009 - 2011  Team Developer Dertin GNU/Linux
#
# 
#
# LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Iana_etc ()
{
	# 6.18. Iana-Etc-1.01
	cd /sources
	tar xfj iana-etc-1.01.tar.bz2
	cd iana-etc-1.01

	# 6.18.1. Installation of Iana-Etc

	# Begin commands
	make

	make install
	# End commands

	cd ..
	rm -rf iana-etc-1.01
}

Iana_etc
