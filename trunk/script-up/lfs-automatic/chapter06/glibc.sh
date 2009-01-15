#!/bin/bash

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
# This project is based on "http://savannah.nongnu.org/projects/LFS-Automatic/"
#
# LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Glibc ()
{
	# 6.11. Glibc-2.3.4-20040701
	cd /sources
	tar xfj glibc-2.3.4-20040701.tar.bz2
	cd glibc-2.3.4-20040701

	# 6.11.1. Installation of Glibc

	# Begin commands
	mkdir ../glibc-build
	cd ../glibc-build

	../glibc-2.3.4-20040701/configure --prefix=/usr \
		--disable-profile --enable-add-ons=nptl --with-tls \
		--with-__thread --enable-kernel=2.6.0 --without-cvs \
		--libexecdir=/usr/lib/glibc \
		--with-headers=/tools/glibc-kernheaders

	make

	# Begin test suites
	if [ "$TEST_SUITES" == "yes" ] || [ "$TEST_SUITES" == "default" ]
	then
		make check
	fi
	# End test suites

	make install

	# Begin configuration

	if [ "$GLIBC_LOCALES" == "no" ]
	then
		make localedata/install-locales
	else
		mkdir -p /usr/lib/locale
		localedef -i de_DE -f ISO-8859-1 de_DE
		localedef -i de_DE@euro -f ISO-8859-15 de_DE@euro
		localedef -i en_HK -f ISO-8859-1 en_HK
		localedef -i en_PH -f ISO-8859-1 en_PH
		localedef -i en_US -f ISO-8859-1 en_US
		localedef -i es_MX -f ISO-8859-1 es_MX
		localedef -i fa_IR -f UTF-8 fa_IR
		localedef -i fr_FR -f ISO-8859-1 fr_FR
		localedef -i fr_FR@euro -f ISO-8859-15 fr_FR@euro
		localedef -i it_IT -f ISO-8859-1 it_IT
		localedef -i ja_JP -f EUC-JP ja_JP
	fi
	# End configuration

	make -C ../glibc-2.3.4-20040701/linuxthreads/man

	make -C ../glibc-2.3.4-20040701/linuxthreads/man install
	# End commands

	# 6.11.2. Configuring Glibc

	# Begin commands
cat > /etc/nsswitch.conf << "EOF"
# Begin /etc/nsswitch.conf

passwd: files
group: files
shadow: files

hosts: files dns
networks: files

protocols: files
services: files
ethers: files
rpc: files

# End /etc/nsswitch.conf
EOF

	# Begin configuration
	#tzselect

	cp --remove-destination /usr/share/zoneinfo/$GLIBC_TIMEZONE \
		/etc/localtime
	# End configuration

	# End commands

	# 6.11.3. Configuring Dynamic Loader

	# Begin commands
cat > /etc/ld.so.conf << "EOF"
# Begin /etc/ld.so.conf

/usr/local/lib
/opt/lib

# End /etc/ld.so.conf
EOF
	# End commands

	cd ..
	rm -rf glibc-2.3.4-20040701 glibc-build
}

Glibc
