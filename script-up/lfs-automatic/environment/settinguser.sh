#!/bin/bash

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
#
# LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Settingenvironment ()
{
	# Setting Up the Environment

	# Begin commands
	cat > /home/lfs/.bash_profile << "EOF"
	exec env -i HOME="$HOME" TERM="$TERM" PS1="\u:\w\$ " /bin/bash
	EOF
	
	if [ $? = 1 ]; then
	echo "Error Config .bash_profile"
	exit 1
	fi
	
	cat > /home/lfs/.bashrc << "EOF"
	set +h
	umask 022
	LFS="/mnt/lfs"
	LC_ALL="POSIX"
	PATH="/tools/bin:/bin:/usr/bin"
	export LFS LC_ALL PATH
	EOF
	
	if [ $? = 1 ]; then
	echo "Error Config .bashrc"
	exit 1
	fi
	
	cat > /home/lfs/.config_lfs << "EOF"
	Not Remove - Config PASS
	EOF
	
	#source /home/lfs/.bash_profile
	# End commands
}
