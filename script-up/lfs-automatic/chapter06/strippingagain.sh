#!/bin/bash

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
# 
#
# LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Strippingagain ()
{
	# 6.60. Stripping Again

	# Begin commands
	chroot $LFS /tools/bin/env -i \
		HOME=/root TERM=$TERM PS1='\u:\w\$ ' \
		PATH=/bin:/usr/bin:/sbin:/usr/sbin \
		/tools/bin/find /{,usr/}{bin,lib,sbin} -type f \
		-exec /tools/bin/strip --strip-debug '{}' ';'
	# End commands
}

Strippingagain
