#!/bin/bash

# LFS-Install - An Automated Linux From Scratch-Installer
# Copyright (C) 2002-2005  Daniel Baumann <daniel.baumann@panthera-systems.net>
#
# LFS-Install comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Glibc ()
{
	# 5.8. Glibc-2.3.4-20040701
	cd "$LFS"/sources
	tar xfj glibc-2.3.4-20040701.tar.bz2
	cd glibc-2.3.4-20040701

	# 5.8.1. Installation of Glibc

	# Begin commands
	mkdir ../glibc-build
	cd ../glibc-build

	../glibc-2.3.4-20040701/configure --prefix=/tools \
		--disable-profile --enable-add-ons=nptl --with-tls \
		--with-__thread --enable-kernel=2.6.0 \
		--with-binutils=/tools/bin --without-gd --without-cvs \
		--with-headers=/tools/glibc-kernheaders

	make

	# Begin test suites
	if [ "$TEST_SUITES" == "yes" ]
	then
		make check
	fi
	# End test suites

	mkdir /tools/etc
	touch /tools/etc/ld.so.conf

	make install

	#make localedata/install-locales

	mkdir -p /tools/lib/locale
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
	# End commands

	cd ..
	rm -rf glibc-2.3.4-20040701 glibc-build
}

Glibc
