#!/bin/bash

# LFS-Install - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
# This project is based on "http://savannah.nongnu.org/projects/lfs-install/"
#
# LFS-Install comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Chroot ()
{
	# 6.3. Entering the Chroot Environment

	# Begin commands
	chroot "$LFS" /tools/bin/env -i \
		TEST_SUITES="$TEST_SUITES" \
		GLIBC_LOCALES="yes" GLIBC_TIMEZONE="UTC" GROFF_PAGE="A4" TEXINFO_TEX="yes" \
		HOME=/root TERM="$TERM" PS1='\u:\w\$ ' \
		PATH=/bin:/usr/bin:/sbin:/usr/sbin:/tools/bin \
		/tools/bin/bash +h $1
		#/tools/bin/bash --login +h
	# End commands
}
