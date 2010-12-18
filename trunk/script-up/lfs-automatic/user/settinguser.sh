#!/bin/bash

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009 - 2011  Team Developer Dertin GNU/Linux
#
#
# LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Settingenvironment ()
{
# Setting Up the Environment
# Begin commands

cat > ~/.bash_profile << "EOF"
exec env -i HOME=$HOME TERM=$TERM PS1='\u:\w\$ ' /bin/bash
EOF
	
	if [ $? = 1 ]; then
	echo "Error Config .bash_profile"
	exit 1
	fi
	
cat > ~/.bashrc << "EOF"
set +h
umask 022
LFS=/mnt/lfs
LC_ALL=POSIX
LFS_TGT=$(uname -m)-lfs-dertin-gnu
PATH=/tools/bin:/bin:/usr/bin
export LFS LC_ALL LFS_TGT PATH
EOF
	
	if [ $? = 1 ]; then
	echo "Error Config .bashrc"
	exit 1
	fi
	
cat > ~/.config_lfs << "EOF"
Not Remove - config PASS
EOF
	
source ~/.bash_profile
# End commands
}
Settingenvironment