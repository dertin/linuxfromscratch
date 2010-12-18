#!/bin/bash

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009 - 2011  Team Developer Dertin GNU/Linux
#
# 
#
# LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Inetutils ()
{
	# 6.31. Inetutils-1.4.2
	cd /sources
	tar xfj inetutils-1.4.2.tar.bz2
	cd inetutils-1.4.2

	# 6.31.1. Installation of Inetutils

	# Begin commands
	patch -Np1 -i ../inetutils-1.4.2-kernel_headers-1.patch

	patch -Np1 -i ../inetutils-1.4.2-no_server_man_pages-1.patch

	./configure --prefix=/usr --libexecdir=/usr/sbin \
		--sysconfdir=/etc --localstatedir=/var \
		--disable-logger --disable-syslogd \
		--disable-whois --disable-servers
	
	make

	make install

	mv /usr/bin/ping /bin
	# End commands

	cd ..
	rm -rf inetutils-1.4.2
}

Inetutils
