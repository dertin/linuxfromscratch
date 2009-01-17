#!/bin/bash

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
# 
#
# LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Network ()
{
	# 7.12. Configuring the network Script

	# 7.12.1. Creating Network Interface Configuration Files

	# Begin commands
cd /etc/sysconfig/network-devices &&
mkdir ifconfig.eth0 &&
cat > ifconfig.eth0/ipv4 << "EOF"
ONBOOT=NETWORK_ONBOOT
SERVICE=NETWORK_SERVICE
IP=NETWORK_IP
GATEWAY=NETWORK_GATEWAY
PREFIX=NETWORK_PREFIX
BROADCAST=NETWORK_BROADCAST
EOF
	# End commands

	# Begin configuration
	sed -i -e "s/NETWORK_ONBOOT/$NETWORK_ONBOOT/" \
		-e "s/NETWORK_SERVICE/$NETWORK_SERVICE/" \
		-e "s/NETWORK_IP/$NETWORK_IP/" \
		-e "s/NETWORK_GATEWAY/$NETWORK_GATEWAY/" \
		-e "s/NETWORK_PREFIX/$NETWORK_PREFIX/" \
		-e "s/NETWORK_BROADCAST/$NETWORK_BROADCAST/" \
		/etc/sysconfig/network-devices/ifconfig.eth0/ipv4
	# End configuration

	# 7.12.2. Creating the /etc/resolv.conf File

	# Begin commands
cat > /etc/resolv.conf << "EOF"
# Begin /etc/resolv.conf

domain NETWORK_DOMAIN
nameserver NETWORK_NAMESERVER1
nameserver NETWORK_NAMESERVER2

# End /etc/resolv.conf
EOF
	# End commands

	# Begin configuration
	sed -i -e "s/NETWORK_DOMAIN/$NETWORK_DOMAIN/" \
		-e "s/NETWORK_NAMESERVER1/$NETWORK_NAMESERVER1/" \
		-e "s/NETWORK_NAMESERVER2/$NETWORK_NAMESERVER2/" \
		/etc/resolv.conf
	# End configuration
}

Network
