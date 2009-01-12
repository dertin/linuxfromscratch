#!/bin/bash

# LFS-Install - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
# This project is based on "http://savannah.nongnu.org/projects/lfs-install/"
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
