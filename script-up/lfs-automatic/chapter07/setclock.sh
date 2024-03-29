#!/bin/bash

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009 - 2011  Team Developer Dertin GNU/Linux
#
# 
#
# LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.

function Setclock ()
{
	# 7.5. Configuring the setclock Script

	# Begin commands
cat > /etc/sysconfig/clock << "EOF"
# Begin /etc/sysconfig/clock

UTC=SETCLOCK_UTC

# End /etc/sysconfig/clock
EOF
	# End commands

	# Begin configuration
	sed -i -e "s/SETCLOCK_UTC/$SETCLOCK_UTC/" /etc/sysconfig/clock
	# End configuration
}

Setclock
