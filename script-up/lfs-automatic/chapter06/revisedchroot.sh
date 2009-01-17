#!/bin/bash

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
# 
#
# LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Revisedchroot ()
{
	# 6.61. Cleaning Up

	# Begin commands
	chroot "$LFS" /usr/bin/env -i \
		LFS_VERSION="$LFS_VERSION" LFS_INSTALL_VERSION="$LFS_INSTALL_VERSION" \
		DISK="$DISK" PARTITION="$PARTITION" \
		SETCLOCK_UTC="$SETCLOCK_UTC" \
		PROFILE_LC="$PROFILE_LC" PROFILE_LANG="$PROFILE_LANG" \
		HOSTNAME_HOSTNAME="$HOSTNAME_HOSTNAME" \
		HOSTS_NETWORKCARD="$HOSTS_NETWORKCARD" HOSTS_IP="$HOSTS_IP" \
		HOSTS_HOSTNAME="$HOSTS_HOSTNAME" HOSTS_DOMAIN="$HOSTS_DOMAIN" \
		NETWORK_ONBOOT="$NETWORK_ONBOOT" NETWORK_SERVICE="$NETWORK_SERVICE" \
		NETWORK_IP="$NETWORK_IP" NETWORK_GATEWAY="$NETWORK_GATEWAY" \
		NETWORK_PREFIX="$NETWORK_PREFIX" NETWORK_BROADCAST="$NETWORK_BROADCAST" \
		NETWORK_DOMAIN="$NETWORK_DOMAIN" \
		NETWORK_NAMESERVER1="$NETWORK_NAMESERVER1" NETWORK_NAMESERVER2="$NETWORK_NAMESERVER2" \
		KERNEL_CONFIG="$KERNEL_CONFIG" \
		GRUB_INSTALL="$GRUB_INSTALL" \
		HOME=/root TERM="$TERM" PS1='\u:\w\$ ' \
		PATH=/bin:/usr/bin:/sbin:/usr/sbin \
		/bin/bash $1
		#/bin/bash --login
	# End commands
}
