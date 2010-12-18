#!/bin/bash

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009 - 2011  Team Developer Dertin GNU/Linux
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

# Author: Guillermo Céspedes Tabárez
# Last modified: 21/09/2009

if [ $# -lt 1 ]; then
        echo "Failure. He hoped at least one parameter"
        echo -e "\t -h, --help:    \t Shows help screen."
        exit 1
fi


function Reset ()
{
	# --reset
	
	# LFS Reset
	"$LFS_TEMP"/scripts/reset.sh
}

function Lfs_config ()
{
	# --config
	
	# Preparing a New Partition
	"$LFS_TEMP"/partition/main.sh
	
}

function Lfs_adduser ()
{
	# --adduser
	
	# Add User & Login
	"$LFS_TEMP"/user/useradd.sh
}

function Lfs_setuser ()
{
	# --setuser
	
	# Set User
	"$LFS_SETUP"/lfs-automatic/user/settinguser.sh
}

function Lfs_install ()
{
	# --install
    
    # Download source code
	"$LFS_SETUP"/lfs-automatic/sources/main.sh
	
	# Constructing a Temporary System
	"$LFS_SETUP"/lfs-automatic/temp-system/main.sh
	
	# Installing Basic System Software
	
	# Setting Up System Bootscripts
	
	# Making the LFS System Bootable
	
	# The End
}

function main ()
{
	LFS_TEMP="$(pwd)"
	export LFS_TEMP
	
	if [ "$(id -u)" = "0" ]
	then
	chmod -R +x *
	fi
	
	source "$LFS_TEMP"/header.sh #All Header
	
	case "$1" in
	
	-h|--help)
		echo "LFS-Automatic - An Automated Linux From Scratch-Installer"
		echo
		echo -e "Usage: \t $(basename $0) [OPTION]"
		echo
		echo "Options:"
		echo -e "\t -h, --help:    \t Shows help screen."
		echo -e "\t -v, --version: \t Shows version information."
		echo -e "\t -c, --config:  \t Make. Preparing, Partition & Sources"
		echo -e "\t -u, --adduser: \t Login User LFS."
		echo -e "\t -s, --setuser: \t User Config."
		echo -e "\t -i, --install: \t Install System-LFS."
		echo -e "\t     --reset:   \t Uninstall LFS-Automatic."
		echo "Report bugs to https://launchpad.net/dertin/+bugs"

		exit 1
		;;

	-v|--version)
		echo "LFS-Automatic, version $LFS_INSTALL_VERSION"
		echo "Copyright (C) 2009 - 2011  Team Developer Dertin GNU/Linux"
		echo

		exit 1
		;;

	-c|--config) #OK
			Check_existing		#Check if already installed.
			Check_user_root		#Check User Login ROOT.

		echo "LFS-Automatic - An Automated Linux From Scratch-Installer"
		echo "Copyright (C) 2009 - 2011  Team Developer Dertin GNU/Linux"
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
			Check_user_root		#Check User Login ROOT.
			Check_folder_SETUP 	#Check Folder "$LFS_SETUP".
		
		echo "LFS-Automatic - An Automated Linux From Scratch-Installer"
		echo "Copyright (C) 2009 - 2011  Team Developer Dertin GNU/Linux"
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
			Check_user_lfs 		#Check User Login LFS.
			Check_folder_SETUP	#Check Folder "$LFS_SETUP".
		
		echo "LFS-Automatic - An Automated Linux From Scratch-Installer"
		echo "Copyright (C) 2009 - 2011  Team Developer Dertin GNU/Linux"
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
			Check_config   		#Check Perfil User LFS && other Config.
			Check_user_lfs 		#Check User Login LFS.
			Check_folder_SETUP 	#Check Folder "$LFS_SETUP". 
		
		echo "LFS-Automatic - An Automated Linux From Scratch-Installer"
		echo "Copyright (C) 2009 - 2011  Team Developer Dertin GNU/Linux"
		echo
		echo "This project is based on (lfs-install)"
		echo
		echo "LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING."
		echo "This is free software, and you are welcome to redistribute it"
		echo "under certain conditions; see COPYING for details."
		echo
		
		Lfs_install
		;;
	
	--reset)
			Check_user_root		#Check User Login ROOT.
			
			Reset				#Uninstall
		;;
	
	*)
		echo "LFS-Automatic - An Automated Linux From Scratch-Installer"
		echo
		echo -e "Usage: \t $(basename $0) [OPTION]"
		echo
		echo "Options:"
		echo -e "\t -h, --help:    \t Shows help screen."
		echo -e "\t -v, --version: \t Shows version information."
		echo -e "\t -c, --config:  \t Make. Preparing, Partition & Sources"
		echo -e "\t -u, --adduser: \t Login User LFS."
		echo -e "\t -s, --setuser: \t User Config."
		echo -e "\t -i, --install: \t Install System-LFS."
		echo -e "\t     --reset:   \t Uninstall LFS-Automatic."
		echo "Report bugs to https://launchpad.net/dertin/+bugs"

		exit 1
		;;
	
	esac
}

main "$@"
