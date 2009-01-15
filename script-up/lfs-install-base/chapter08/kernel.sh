#!/bin/bash

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
# This project is based on "http://savannah.nongnu.org/projects/LFS-Automatic/"
#
# LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Kernel ()
{
	# 8.3. Linux-2.6.8.1
	cd /sources
	tar xfj linux-2.6.8.1.tar.bz2 -C /usr/src
	cd /usr/src/linux-2.6.8.1

	# 8.3.1. Installation of the kernel

	# Begin commands

	make mrproper

	sed -i 's@/sbin/hotplug@/bin/true@' kernel/kmod.c

	#loadkeys -m /usr/share/kbd/keymaps/[path to  keymap] > \
		#drivers/char/defkeymap.c

	# Begin configuration
	case "$KERNEL_CONFIG" in
		config)
			make config
			;;

		menuconfig)
			make menuconfig
			;;

		defconfig)
			cp arch/i386/defconfig .config
			yes "" | make oldconfig
			;;
	esac
	# End configuration

	make

	make modules_install

	cp arch/i386/boot/bzImage /boot/lfskernel-2.6.8.1

	cp System.map /boot/System.map-2.6.8.1

	cp .config /boot/config-2.6.8.1
	# End commands
}

Kernel
