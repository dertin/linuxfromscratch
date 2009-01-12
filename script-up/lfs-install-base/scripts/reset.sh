#!/bin/bash

# LFS-Install - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
# This project is based on "http://savannah.nongnu.org/projects/lfs-install/"
#
# LFS-Install comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Reset ()
{
	case "$1" in
		-f|--force)
			if [ -z "$LFS" ]
			then
				LFS="/mnt/lfs"
			fi

			umount "$LFS"/dev/pts
			umount "$LFS"/dev/shm
			umount "$LFS"/dev
			umount "$LFS"/proc
			umount "$LFS"/sys
			umount "$LFS"

			userdel lfs
			groupdel lfs
			rm -rf /home/lfs

			rm -rf "$LFS"
			rm -f /tools
			;;

		-h|--help)
			echo "$(basname $0) - Removes an (unfinished) installation"
			echo
			echo -e "Usage: \t $(basename $0) [OPTION]"
			echo
			echo "Options:"
			echo -e "\t -f, --force:   \t Non interactive"
			echo -e "\t -h, --help:    \t Shows help screen"
			echo
			echo "Report bugs to Daniel Baumann <daniel.baumann@panthera-systems.net>"

			exit 1
			;;

		*)
			echo -n "Remove (unfinished) installation? [y/N]: "
			read RESET

			case "$RESET" in
				Y|y|Yes|yes)
					"$0" --force
				;;
			esac
	esac
}

Reset "$@"
