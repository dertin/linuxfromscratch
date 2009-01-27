#!/bin/bash

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
#
# LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.

# Amended by: Guillermo Céspedes Tabárez
# 13/01/2009


function Packages ()
{
	# 3.2. All Packages
	cd "$LFS"/sources

	wget "$SERVER"/lfs-packages/6.4/autoconf-2.63.tar.bz2 						#autoconf
	wget "$SERVER"/lfs-packages/6.4/automake-1.10.1.tar.bz2 					#automake
	wget "$SERVER"/lfs-packages/6.4/bash-3.2.tar.gz 							#bash
	wget "$SERVER"/lfs-packages/6.4/bash-doc-3.2.tar.gz 						#bash-doc
	wget  http://download-east.oracle.com/berkeley-db/db-4.7.25.tar.gz 			#berkeley-db
	wget "$SERVER"/lfs-packages/6.4/binutils-2.18.tar.bz2 						#binutils
	wget "$SERVER"/lfs-packages/6.4/bison-2.3.tar.bz2 							#bison
	wget "$SERVER"/lfs-packages/6.4/bzip2-1.0.5.tar.gz 							#bzip2
	wget "$SERVER"/lfs-packages/6.4/coreutils-6.12.tar.gz 						#coreutils
	wget "$SERVER"/lfs-packages/6.4/dejagnu-1.4.4.tar.gz 						#dejagnu
	wget "$SERVER"/lfs-packages/6.4/diffutils-2.8.1.tar.gz 						#diffutils
	wget "$SERVER"/lfs-packages/6.4/e2fsprogs-1.41.3.tar.gz 					#e2fsprogs
	wget "$SERVER"/lfs-packages/6.4/expect-5.43.0.tar.gz 						#expect
	wget "$SERVER"/lfs-packages/6.4/file-4.26.tar.gz 							#file
	wget "$SERVER"/lfs-packages/6.4/findutils-4.4.0.tar.gz 						#findutils
	wget "$SERVER"/lfs-packages/6.4/flex-2.5.35.tar.bz2 						#flex
	wget "$SERVER"/lfs-packages/6.4/gawk-3.1.6.tar.bz2 							#gawk
	wget "$SERVER"/lfs-packages/6.4/gcc-4.3.2.tar.bz2 							#gcc
	wget "$SERVER"/lfs-packages/6.4/gettext-0.17.tar.gz 						#gettext
	wget "$SERVER"/lfs-packages/6.4/glibc-2.8-20080929.tar.bz2 					#glibc
	wget  http://ftp.gnu.org/gnu/gmp/gmp-4.2.4.tar.bz2 							#gmp
	wget "$SERVER"/lfs-packages/6.4/grep-2.5.3.tar.bz2 							#grep
	wget "$SERVER"/lfs-packages/6.4/groff-1.18.1.4.tar.gz 						#groff
	wget "$SERVER"/lfs-packages/6.4/grub-0.97.tar.gz 							#grub
	wget "$SERVER"/lfs-packages/6.4/gzip-1.3.12.tar.gz 							#gzip
	wget "$SERVER"/lfs-packages/6.4/iana-etc-2.30.tar.bz2 						#iana-etc
	wget "$SERVER"/lfs-packages/6.4/inetutils-1.5.tar.gz 						#inetutils-1.5
	wget "$SERVER"/lfs-packages/6.4/iproute2-2.6.26.tar.bz2 					#iproute2
	wget "$SERVER"/lfs-packages/6.4/kbd-1.14.1.tar.gz 							#kbd
	wget "$SERVER"/lfs-packages/6.4/less-418.tar.gz 							#less
	wget "$SERVER"/lfs-packages/6.4/lfs-bootscripts-20081031.tar.bz2 			#lfs-bootscripts
	wget "$SERVER"/lfs-packages/6.4/libtool-2.2.6a.tar.gz 						#libtool
	wget "$SERVER"/lfs-packages/6.4/linux-2.6.27.4.tar.bz2 						#linux-kernel
	wget "$SERVER"/lfs-packages/6.4/m4-1.4.12.tar.bz2 							#m4
	wget "$SERVER"/lfs-packages/6.4/make-3.81.tar.bz2 							#make
	wget "$SERVER"/lfs-packages/6.4/man-db-2.5.2.tar.gz 						#man
	wget "$SERVER"/lfs-packages/6.4/man-pages-3.11.tar.bz2 						#man-pages
	wget "$SERVER"/lfs-packages/6.4/module-init-tools-3.4.1.tar.bz2 			#module-init-tools
	wget  http://www.mpfr.org/mpfr-current/mpfr-2.3.2.tar.bz2 					#mpfr
	wget "$SERVER"/lfs-packages/6.4/ncurses-5.6.tar.gz 							#ncurses
	wget "$SERVER"/lfs-packages/6.4/patch-2.5.4.tar.gz 							#patch
	wget "$SERVER"/lfs-packages/6.4/perl-5.10.0.tar.gz 							#perl
	wget "$SERVER"/lfs-packages/6.4/procps-3.2.7.tar.gz 						#procps
	wget "$SERVER"/lfs-packages/6.4/psmisc-22.6.tar.gz 							#psmisc
	wget "$SERVER"/lfs-packages/6.4/readline-5.2.tar.gz 						#readline
	wget "$SERVER"/lfs-packages/6.4/sed-4.1.5.tar.gz 							#sed
	wget "$SERVER"/lfs-packages/6.4/shadow-4.1.2.1.tar.bz2 						#shadow
	wget "$SERVER"/lfs-packages/6.4/sysklogd-1.5.tar.gz 						#sysklogd
	wget "$SERVER"/lfs-packages/6.4/sysvinit-2.86.tar.gz 						#sysvinit
	wget "$SERVER"/lfs-packages/6.4/tar-1.20.tar.bz2 							#tar
	wget "$SERVER"/lfs-packages/6.4/tcl8.5.5-src.tar.gz 						#tcl8.5.5
	wget "$SERVER"/lfs-packages/6.4/texinfo-4.13a.tar.gz 						#texinfo
	wget "$SERVER"/lfs-packages/6.4/udev-130.tar.bz2 							#udev-130
	wget "$SERVER"/lfs-packages/6.4/udev-config-20081015.tar.bz2 				#udev-config
	wget "$SERVER"/lfs-packages/6.4/util-linux-ng-2.14.1.tar.bz2 				#util-linux-ng
	wget "$SERVER"/lfs-packages/6.4/vim-7.2.tar.bz2 							#vim-7.2
	wget "$SERVER"/lfs-packages/6.4/vim-7.2-lang.tar.gz 						#vim-7.2-lang
	wget "$SERVER"/lfs-packages/6.4/zlib-1.2.3.tar.bz2 							#zlib   

	cd -
}

Packages
