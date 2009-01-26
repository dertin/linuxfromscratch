#!/bin/bash

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
# This project is based on "lfs-install"
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA


function Lfs_user ()
{
	# Adding the LFS User --user

	# Begin commands
	groupadd lfs
	useradd -s /bin/bash -g lfs -m -k /dev/null lfs

	#passwd lfs
	passwd -d lfs

	chown lfs $LFS/tools
	chown lfs $LFS/sources

	su - lfs # -> reset Bash exit
	# End commands

}


function Lfs_config ()
{
	# Linux From Scratch --config
	
	# Preparing a New Partition
	"$LFS_INSTALL"/partition/main.sh
	
	# Config Preparations
	"$LFS_INSTALL"/environment/main.sh
}


function Lfs_install ()
{
	# Linux From Scratch --install

	# Chapter 3. Packages and Patches
	source "$LFS_INSTALL"/chapter03/chapter03.sh
        
	# Chapter 5. Constructing a Temporary System
	source "$LFS_INSTALL"/chapter05/chapter05.sh

	# Chapter 6. Installing Basic System Software
	source "$LFS_INSTALL"/chapter06/chapter06.sh

	# Chapter 7. Setting Up System Bootscripts
	source "$LFS_INSTALL"/chapter07/chapter07.sh

	# Chapter 8. Making the LFS System Bootable
	source "$LFS_INSTALL"/chapter08/chapter08.sh

	# Chapter 9. The End
	source "$LFS_INSTALL"/chapter09/chapter09.sh
}

function main ()
{
	LFS_INSTALL="$(pwd)"
	export LFS_INSTALL

	source "$LFS_INSTALL"/config/LFS-Automatic.conf
	source "$LFS_INSTALL"/LFS-Automatic.func

	case "$1" in
		-h|--help)
			echo "LFS-Automatic - An Automated Linux From Scratch-Installer"
			echo
			echo -e "Usage: \t $(basename $0) [OPTION]"
			echo
			echo "Options:"
			echo -e "\t -h, --help:    \t Shows help screen."
			echo -e "\t -v, --version: \t Shows version information."
			echo -e "\t -u, --user:    \t Add User LFS."
			echo -e "\t -c, --config:  \t Config."
			echo -e "\t -i, --install: \t Install."
			echo "Report bugs to ...soon..."

			exit 1
			;;

		-v|--version)
			echo "LFS-Automatic, version $LFS_INSTALL_VERSION"
			echo "Copyright (C) 2009  Team Developer Dertin GNU/Linux"
			echo

			exit 1
			;;

	-c|--config)
			Check_running
			Check_existing
			Check_user_root

		echo "LFS-Automatic - An Automated Linux From Scratch-Installer"
		echo "Copyright (C) 2009  Team Developer Dertin GNU/Linux"
		echo
		echo "This project is based on (lfs-install)"
		echo
		echo "LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING."
		echo "This is free software, and you are welcome to redistribute it"
		echo "under certain conditions; see COPYING for details."
		echo
		
		Lfs_config
		;;
	-i|--install)
	  		Check_running
			#Check_existing
			Check_config   #Check Perfil user LFS & other Config
			Check_user_lfs #Check user LFS
		
		echo "LFS-Automatic - An Automated Linux From Scratch-Installer"
		echo "Copyright (C) 2009  Team Developer Dertin GNU/Linux"
		echo
		echo "This project is based on (lfs-install)"
		echo
		echo "LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING."
		echo "This is free software, and you are welcome to redistribute it"
		echo "under certain conditions; see COPYING for details."
		echo
	Lfs_install
	;;
	-u|--user)
		Check_running
		Check_config   #Check Perfil user LFS & other Config
		
		echo "LFS-Automatic - An Automated Linux From Scratch-Installer"
		echo "Copyright (C) 2009  Team Developer Dertin GNU/Linux"
		echo
		echo "This project is based on (lfs-install)"
		echo
		echo "LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING."
		echo "This is free software, and you are welcome to redistribute it"
		echo "under certain conditions; see COPYING for details."
		echo
	Lfs_user
	;;
	*)
		echo "LFS-Automatic - An Automated Linux From Scratch-Installer"
		echo
		echo -e "Usage: \t $(basename $0) [OPTION]"
		echo
		echo "Options:"
		echo -e "\t -h, --help:    \t Shows help screen."
		echo -e "\t -v, --version: \t Shows version information."
		echo -e
		echo -e "\t -u, --user:    \t Add User LFS."
		echo -e "\t -c, --config:  \t Config."
		echo -e "\t -i, --install: \t Install."
		echo "Report bugs to ...soon..."

	exit 1
	;;
	esac
}

main "$@"
