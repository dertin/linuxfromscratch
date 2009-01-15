#!/bin/bash

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
# This project is based on "http://savannah.nongnu.org/projects/LFS-Automatic/"
#
# LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Creatingtoolsdir ()
{
	# 4.2. Creating the $LFS/tools Directory

	# Begin commands
	mkdir $LFS/tools

	ln -s $LFS/tools /
	# End commands
}

Creatingtoolsdir
