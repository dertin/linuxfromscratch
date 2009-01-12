#!/bin/bash

# LFS-Install - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
# This project is based on "http://savannah.nongnu.org/projects/lfs-install/"
#
# LFS-Install comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Grub ()
{
	# 8.4. Making the LFS System Bootable

	# Begin commands

	if [ "$GRUB_FLOPPY" == "yes" ]
	then
		echo -n "Insert a blank floppy diskette in $GRUB_FLOPPYDEVICE and press any key"
		read

		dd if=/boot/grub/stage1 of="$GRUB_FLOPPYDEVICE" bs=512 count=1
		dd if=/boot/grub/stage2 of="$GRUB_FLOPPYDEVICE" bs=512 seek=1
	fi

	if [ "$GRUB_RUN" == "yes" ]
	then
		echo "Tell Grub where to search for its stage{1,2} files."
		echo "Example: root (hd0,3)"
		echo ""
		echo "Tell Grub to install itself into the MBR of your disk."
		echo "Example: setup (hd0)"
		echo ""
		echo "Quit the grub shell."
		echo "Command: quit"

		grub

		#root (hd0,3)

		#setup (hd0)

		#quit

cat > /boot/grub/menu.lst << "EOF"
# Begin /boot/grub/menu.lst

# By default boot the first menu entry.
default 0

# Allow 30 seconds before booting the default.
timeout 30

# Use prettier colors.
color green/black light-green/black

# The first entry is for LFS.
title LFS 6.0
root (hd0,3)
kernel /boot/lfskernel-2.6.8.1 root=/dev/hda4
EOF

cat >> /boot/grub/menu.lst << "EOF"
title Red Hat
root (hd0,2)
kernel /boot/kernel-2.4.20 root=/dev/hda3
initrd /boot/initrd-2.4.20
EOF

cat >> /boot/grub/menu.lst << "EOF"
title Windows
rootnoverify (hd0,0)
chainloader +1
EOF

		echo "Note: you may have to configure /boot/grub/menu.lst manually."
	fi
	# End commands
}

Grub
