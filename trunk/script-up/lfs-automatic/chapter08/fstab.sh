#!/bin/bash

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009 - 2011  Team Developer Dertin GNU/Linux
#
# 
#
# LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Fstab ()
{
	# 8.2. Creating the /etc/fstab File

	# Begin commands
cat > /etc/fstab << "EOF"
# Begin /etc/fstab

# file system  mount-point  type   options         dump  fsck
#                                                        order

/dev/PARTITION /             [fff]  defaults        1     1
#/dev/         swap          swap   pri=1           0     0
proc           /proc         proc   defaults        0     0
sysfs          /sys          sysfs  defaults        0     0
devpts         /dev/pts      devpts gid=4,mode=620  0     0
shm            /dev/shm      tmpfs  defaults        0     0
#usbfs         /proc/bus/usb usbfs  devgid=14,devmode=0660 0 0
# End /etc/fstab
EOF
	# End commands

	# Begin configuration
	sed -i -e "s/PARTITION/$PARTITION/" /etc/fstab
	# End configuration
}

Fstab
