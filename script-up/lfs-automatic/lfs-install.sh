#!/bin/bash

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
# 
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


function Lfs_install ()
{
	# Linux From Scratch

	# Chapter 2. Preparing a New Partition
	source "$LFS_INSTALL"/chapter02/chapter02.sh

	# Chapter 3. Packages and Patches
	source "$LFS_INSTALL"/chapter03/chapter03.sh

	# Chapter 4. Final Preparations
	source "$LFS_INSTALL"/chapter04/chapter04.sh

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

	source "$LFS_INSTALL"/LFS-Automatic.conf
	source "$LFS_INSTALL"/LFS-Automatic.func

	case "$1" in
		-h|--help)
			echo "LFS-Automatic - An Automated Linux From Scratch-Installer"
			echo
			echo -e "Usage: \t $(basename $0) [OPTION]"
			echo
			echo "Options:"
			echo -e "\t -h, --help:    \t Shows help screen"
			echo -e "\t -v, --version: \t Shows version information"
			echo
			echo "Report bugs to ...soon..."

			exit 1
			;;

		-v|--version)
			echo "LFS-Automatic, version $LFS_INSTALL_VERSION"
			echo "Copyright (C) 2009  Team Developer Dertin GNU/Linux"
			echo
			echo "Homepage ...soon..."

			exit 1
			;;

		*)
			Check_running
			Check_existing
			Check_user
			Check_compile

		echo "LFS-Automatic - An Automated Linux From Scratch-Installer"
		echo "Copyright (C) 2009  Team Developer Dertin GNU/Linux"
		echo
		echo "This project is based on http://savannah.nongnu.org/projects/LFS-Automatic/"
		echo
		echo "LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING."
		echo "This is free software, and you are welcome to redistribute it"
		echo "under certain conditions; see COPYING for details."
		echo
	
			Lfs_install
			;;
	esac
}

main "$@"
