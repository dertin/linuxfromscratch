#!/bin/bash

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
# This project is based on "http://savannah.nongnu.org/projects/LFS-Automatic/"
#
# LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Stripping ()
{
	# 5.36. Stripping

	# Begin commands
	strip --strip-debug /tools/lib/*
	strip --strip-unneeded /tools/{,s}bin/*

	rm -rf /tools/{doc,info,man}
	# End commands
}

Stripping
