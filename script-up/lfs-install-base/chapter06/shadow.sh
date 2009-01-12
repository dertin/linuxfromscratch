#!/bin/bash

# LFS-Install - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
# This project is based on "http://savannah.nongnu.org/projects/lfs-install/"
#
# LFS-Install comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Shadow ()
{
	# 6.53. Shadow-4.0.4.1
	cd /sources
	tar xfj shadow-4.0.4.1.tar.bz2
	cd shadow-4.0.4.1

	# 6.53.1. Installation of Shadow

	# Begin commands
	./configure --libdir=/usr/lib --enable-shared

	echo '#define HAVE_SETLOCALE 1' >> config.h

	sed -i '/extern char/d' libmisc/xmalloc.c

	make

	make install

	cp etc/{limits,login.access} /etc

	cp etc/login.defs.linux /etc/login.defs
	sed -i -e 's@#MD5_CRYPT_ENAB.no@MD5_CRYPT_ENAB yes@' \
		-e 's@/var/spool/mail@/var/mail@' /etc/login.defs

	mv /bin/sg /usr/bin
	mv /bin/vigr /usr/sbin
	mv /usr/bin/passwd /bin

	mv /usr/lib/lib{shadow,misc}.so.0* /lib

	ln -sf ../../lib/libshadow.so.0 /usr/lib/libshadow.so
	ln -sf ../../lib/libmisc.so.0 /usr/lib/libmisc.so

	mkdir /etc/default

	rm /bin/groups
	# End commands

	# 6.53.2. Configuring Shadow

	# Begin commands
	pwconv

	grpconv
	# End commands

	# 6.53.3. Setting the root password

	# Begin commands
	#passwd root
	passwd -d root
	# End commands

	cd ..
	rm -rf shadow-4.0.4.1
}

Shadow
