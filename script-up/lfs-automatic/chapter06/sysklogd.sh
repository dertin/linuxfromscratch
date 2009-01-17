#!/bin/bash

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
# 
#
# LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Sysklogd ()
{
	# 6.54. Sysklogd-1.4.1
	cd /sources
	tar xfj sysklogd-1.4.1.tar.bz2
	cd sysklogd-1.4.1

	# 6.54.1. Installation of Sysklogd

	# Begin commands
	patch -Np1 -i ../sysklogd-1.4.1-kernel_headers-1.patch

	patch -Np1 -i ../sysklogd-1.4.1-signal-1.patch

	make

	make install
	# End commands

	# 6.54.2. Configuring Sysklogd

	# Begin commands
cat > /etc/syslog.conf << "EOF"
# Begin /etc/syslog.conf

auth,authpriv.* -/var/log/auth.log
*.*;auth,authpriv.none -/var/log/sys.log
daemon.* -/var/log/daemon.log
kern.* -/var/log/kern.log
mail.* -/var/log/mail.log
user.* -/var/log/user.log
*.emerg *

# End /etc/syslog.conf
EOF
	# End commands

	cd ..
	rm -rf sysklogd-1.4.1
}

Sysklogd
