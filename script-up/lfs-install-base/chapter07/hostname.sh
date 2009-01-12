#!/bin/bash

# LFS-Install - An Automated Linux From Scratch-Installer
# Copyright (C) 2002-2005  Daniel Baumann <daniel.baumann@panthera-systems.net>
#
# LFS-Install comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Hostname ()
{
	# 7.10. Configuring the localnet Script

	# Begin commands
	echo "HOSTNAME=HOSTNAME_HOSTNAME" > /etc/sysconfig/network
	# End commands

	# Begin configuration
	sed -i -e "s/HOSTNAME_HOSTNAME/$HOSTNAME_HOSTNAME/" /etc/sysconfig/network
	# End configuration
}

Hostname
