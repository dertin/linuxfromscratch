#!/bin/bash

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
#
# LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.

# By: Guillermo Céspedes Tabárez
# Created: 13/01/2009
# Last modified: 19/04/2009

function Mounting ()
{
	# Mounting the New Partition

	mkdir -p $LFS
	mount $PARTITION $LFS

}

Mounting
