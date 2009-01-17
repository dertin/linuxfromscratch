#!/bin/bash

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
# 
#
# LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Coreutils ()
{
	# 6.15. Coreutils-5.2.1
	cd /sources
	tar xfj coreutils-5.2.1.tar.bz2
	cd coreutils-5.2.1

	# 6.15.1. Installation of Coreutils

	# Begin commands
	patch -Np1 -i ../coreutils-5.2.1-uname-2.patch

	patch -Np1 -i \
		../coreutils-5.2.1-suppress_uptime_kill_su-1.patch

	DEFAULT_POSIX2_VERSION=199209 ./configure --prefix=/usr

	make

	# Begin test suites
	if [ "$TEST_SUITES" == "yes" ]
	then
		echo "dummy1:x:1000:" >> /etc/group
		echo "dummy2:x:1001:dummy" >> /etc/group
		echo "dummy:x:1000:1000:::/bin/bash" >> /etc/passwd

		make NON_ROOT_USERNAME=dummy check-root

		src/su dummy -c "make RUN_EXPENSIVE_TESTS=yes check"

		sed -i '/dummy/d' /etc/passwd /etc/group
	fi
	# End test suites

	make install

	mv /usr/bin/{[,basename,cat,chgrp,chmod,chown,cp,dd,df} /bin
	mv /usr/bin/{date,echo,false,head,hostname,install,ln} /bin
	mv /usr/bin/{ls,mkdir,mknod,mv,pwd,rm,rmdir,sync} /bin
	mv /usr/bin/{sleep,stty,test,touch,true,uname} /bin
	mv /usr/bin/chroot /usr/sbin

	ln -s ../../bin/install /usr/bin
	# End commands

	cd ..
	rm -rf coreutils-5.2.1
}

Coreutils
