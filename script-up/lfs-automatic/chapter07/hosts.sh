#!/bin/bash -x

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009 - 2011  Team Developer Dertin GNU/Linux
#
# 
#
# LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Hosts ()
{
	# 7.11. Creating the /etc/hosts File

	if [ "$HOSTS_NETWORKCARD" == "yes" ]
	then
		# Begin commands
cat > /etc/hosts << "EOF"
# Begin /etc/hosts (network card version)

127.0.0.1 localhost
HOSTS_IP HOSTS_HOSTNAME.HOSTS_DOMAIN HOSTS_HOSTNAME

# End /etc/hosts (network card version)
EOF
		# End commands
	elif [ "$HOSTS_NETWORKCARD" == "no" ]
	then
		# Begin commands
cat > /etc/hosts << "EOF"
# Begin /etc/hosts (no network card version)

127.0.0.1 HOSTS_HOSTNAME.HOSTS_DOMAIN HOSTS_HOSTNAME localhost

# End /etc/hosts (no network card version)
EOF
		# End commands
	fi

	# Begin configuration
	sed -i -e "s/HOSTS_IP/$HOSTS_IP/" \
		-e "s/HOSTS_HOSTNAME/$HOSTS_HOSTNAME/g" \
		-e "s/HOSTS_DOMAIN/$HOSTS_DOMAIN/" \
		/etc/hosts
	# End configuration
}

Hosts
