#!/bin/bash

# LFS-Install - An Automated Linux From Scratch-Installer
# Copyright (C) 2002-2005  Daniel Baumann <daniel.baumann@panthera-systems.net>
#
# LFS-Install comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Hostreqs ()
{
	# 5.2. Host System Requirements
        LINUX_VERSION="$(cat /proc/version | awk {'print $3'} | awk -F. {'print $1'})"
        LINUX_PATCHLEVEL="$(cat /proc/version | awk {'print $3'} | awk -F. {'print $2'})"
        LINUX_SUBLEVEL="$(cat /proc/version | awk {'print $3'} | awk -F. {'print $3'} | cut -b 1)"

        if [ "$LINUX_VERSION" -ne "2" ]
        then
		echo "The host must be running at least a 2.6.2 kernel."
                exit 1
        fi

        if [ "$LINUX_PATCHLEVEL" -ne "6" ]
        then
		echo "The host must be running at least a 2.6.2 kernel."
                exit 1
        fi

        if [ "$LINUX_SUBLEVEL" -lt "2" ]
        then
		echo "The host must be running at least a 2.6.2 kernel."
                exit 1
        fi

        GCC_VERSION="$(cat /proc/version | awk {'print $7'} | awk -F. {'print $1'})"

        if [ "$GCC_VERSION" -ne "3" ]
        then
		echo "The host must be running at least a 2.6.2 kernel compiled with GCC-3.0 or higher."
                echo "Linux is not compiled with GCC version 3.0 or later"
                exit 1
        fi

        PARTITION_AVAILABLE="$(df | grep "$PARTITION" | awk {'print $4'})"

        if [ "$PARTITION_AVAILABLE" -lt "1300000" ]
        then
		echo "A minimal system requires a partition of around 1.3 gigabytes (GB)."
                exit 1
        fi
}

Hostreqs
