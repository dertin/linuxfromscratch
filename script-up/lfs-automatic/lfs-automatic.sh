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

chmod -R 777 *

if [ $# -lt 1 ]; then
        echo "Failure. He hoped at least one parameter"
        echo -e "\t -h, --help:    \t Shows help screen."
        exit 1
fi

function Lfs_config ()
{
	# Linux From Scratch --make
	
	# Preparing a New Partition
	"$LFS_INSTALL"/partition/main.sh
	
	# Download source code
	"$LFS_INSTALL"/sources/main.sh
}

function Lfs_adduser ()
{
	# Linux From Scratch --adduser
	
	# Add User & Login
	"$LFS_INSTALL"/user/useradd.sh
}

function Lfs_setuser ()
{
	# Linux From Scratch --setuser
	
	# Set User
	"$LFS_INSTALL"/environment/main.sh
}

function Lfs_install ()
{
	# Linux From Scratch --install
        
	# Constructing a Temporary System
	"$LFS_INSTALL"/temp-system/main.sh

	# Installing Basic System Software
	#"$LFS_INSTALL"/chapter06/chapter06.sh

	# Setting Up System Bootscripts
    #"$LFS_INSTALL"/chapter07/chapter07.sh

	# Making the LFS System Bootable
	#"$LFS_INSTALL"/chapter08/chapter08.sh

	# The End
	#"$LFS_INSTALL"/chapter09/chapter09.sh
}

function main ()
{
	LFS_INSTALL="$(pwd)"
	export LFS_INSTALL

	source "$LFS_INSTALL"/config/lfs-automatic.conf
	source "$LFS_INSTALL"/function/check-function.func

	case "$1" in
		-h|--help)
			echo "LFS-Automatic - An Automated Linux From Scratch-Installer"
			echo
			echo -e "Usage: \t $(basename $0) [OPTION]"
			echo
			echo "Options:"
			echo -e "\t -h, --help:    \t Shows help screen."
			echo -e "\t -v, --version: \t Shows version information."
			echo -e "\t -c, --make:    \t Make. Preparing, Partition & Sources"
			echo -e "\t -u, --adduser: \t Login User LFS."
			echo -e "\t -s, --setuser: \t User Config."
			echo -e "\t -i, --install: \t Install System-LFS."
			echo "Report bugs to https://launchpad.net/dertin/+bugs"

			exit 1
			;;

		-v|--version)
			echo "LFS-Automatic, version $LFS_INSTALL_VERSION"
			echo "Copyright (C) 2009  Team Developer Dertin GNU/Linux"
			echo

			exit 1
			;;

	-m|--make) #OK
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
	-u|--adduser) #OK
		Check_running
		
		echo "LFS-Automatic - An Automated Linux From Scratch-Installer"
		echo "Copyright (C) 2009  Team Developer Dertin GNU/Linux"
		echo
		echo "This project is based on (lfs-install)"
		echo
		echo "LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING."
		echo "This is free software, and you are welcome to redistribute it"
		echo "under certain conditions; see COPYING for details."
		echo
	
	Lfs_adduser
	;;
	-s|--setuser) #OK
		Check_running
		Check_user_lfs 	#Check User Login LFS
		
		echo "LFS-Automatic - An Automated Linux From Scratch-Installer"
		echo "Copyright (C) 2009  Team Developer Dertin GNU/Linux"
		echo
		echo "This project is based on (lfs-install)"
		echo
		echo "LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING."
		echo "This is free software, and you are welcome to redistribute it"
		echo "under certain conditions; see COPYING for details."
		echo
	
	Lfs_setuser
	;;
	-i|--install)
	  		Check_running
			Check_config   	#Check Perfil User LFS & other Config
			Check_user_lfs 	#Check User Login LFS
		
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
	*)
			echo "LFS-Automatic - An Automated Linux From Scratch-Installer"
			echo
			echo -e "Usage: \t $(basename $0) [OPTION]"
			echo
			echo "Options:"
			echo -e "\t -h, --help:    \t Shows help screen."
			echo -e "\t -v, --version: \t Shows version information."
			echo -e "\t -c, --make:    \t Make. Preparing, Partition & Sources"
			echo -e "\t -u, --adduser: \t Login User LFS."
			echo -e "\t -s, --setuser: \t User Config."
			echo -e "\t -i, --install: \t Install System-LFS."
			echo "Report bugs to https://launchpad.net/dertin/+bugs"

	exit 1
	;;
	esac
}

main "$@"
