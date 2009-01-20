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
	# 4.4. Setting Up the Environment

	# Begin commands
	#cat > ~/.bash_profile << "EOF"
	#exec env -i HOME="$HOME" TERM="$TERM" PS1="\u:\w\$ " /bin/bash
	#EOF

	#cat > ~/.bashrc << "EOF"
	#set +h
	#umask 022
	#LFS="/mnt/lfs"
	#LC_ALL="POSIX"
	#PATH="/tools/bin:/bin:/usr/bin"
	#export LFS LC_ALL PATH
	#EOF

	#source ~/.bash_profile
	# End commands

	sudo -u lfs \
		env -i HOME="$HOME" TERM="$TERM" PS1="\u:\w\$ " \
		LFS="$LFS" LC_ALL="POSIX" PATH="/tools/bin:/bin:/usr/bin" \
		TEST_SUITES="$TEST_SUITES" \
		/bin/bash +h $1
}
