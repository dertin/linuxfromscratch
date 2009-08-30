#!/bin/bash

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
#
# LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.

# By: Guillermo Céspedes Tabárez
# Created: 02/04/2009
# Last modified: 30/08/2009

#RUN ROOT 
function Install-app ()
{
	#Copy the entire application to "$LFS_SETUP"
	cp -R "$LFS_TEMP" "$LFS_SETUP"
	
	#Give all the permissions  
	
	cd "$LFS_SETUP"
	if [ "$(id -u)" = "0" ]
	then
	chmod -R +x *
	fi
}

Install-app
