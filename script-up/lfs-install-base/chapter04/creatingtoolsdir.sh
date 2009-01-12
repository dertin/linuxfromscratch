#!/bin/bash

# LFS-Install - An Automated Linux From Scratch-Installer
# Copyright (C) 2002-2005  Daniel Baumann <daniel.baumann@panthera-systems.net>
#
# LFS-Install comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
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
