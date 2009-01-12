#!/bin/bash

# LFS-Install - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
# This project is based on "http://savannah.nongnu.org/projects/lfs-install/"
#
# LFS-Install comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Packages ()
{
	# 3.2. All Packages
	cd "$LFS"/sources

	wget "$SERVER"/lfs-packages/conglomeration/autoconf/autoconf-2.59.tar.bz2
	wget "$SERVER"/lfs-packages/conglomeration/automake/automake-1.9.1.tar.bz2
	wget "$SERVER"/lfs-packages/conglomeration/bash/bash-3.0.tar.bz2
	wget "$SERVER"/lfs-packages/conglomeration/binutils/binutils-2.15.91.0.2.tar.bz2
	wget "$SERVER"/lfs-packages/conglomeration/bison/bison-1.875a.tar.bz2
	wget "$SERVER"/lfs-packages/conglomeration/bzip2/bzip2-1.0.2.tar.bz2
	wget "$SERVER"/lfs-packages/conglomeration/coreutils/coreutils-5.2.1.tar.bz2
	wget "$SERVER"/lfs-packages/conglomeration/dejagnu/dejagnu-1.4.4.tar.bz2
	wget "$SERVER"/lfs-packages/conglomeration/diffutils/diffutils-2.8.1.tar.bz2
	wget "$SERVER"/lfs-packages/conglomeration/e2fsprogs/e2fsprogs-1.35.tar.bz2
	wget "$SERVER"/lfs-packages/conglomeration/expect/expect-5.42.1.tar.bz2
	wget "$SERVER"/lfs-packages/conglomeration/file/file-4.10.tar.bz2
	wget "$SERVER"/lfs-packages/conglomeration/findutils/findutils-4.1.20.tar.bz2
	wget "$SERVER"/lfs-packages/conglomeration/flex/flex-2.5.31.tar.bz2
	wget "$SERVER"/lfs-packages/conglomeration/gawk/gawk-3.1.4.tar.bz2
	wget "$SERVER"/lfs-packages/conglomeration/gcc/gcc-core-3.4.1.tar.bz2
	wget "$SERVER"/lfs-packages/conglomeration/gcc/gcc-g++-3.4.1.tar.bz2
	wget "$SERVER"/lfs-packages/conglomeration/gcc/gcc-testsuite-3.4.1.tar.bz2
	wget "$SERVER"/lfs-packages/conglomeration/gettext/gettext-0.14.1.tar.bz2
	wget "$SERVER"/lfs-packages/conglomeration/glibc/glibc-2.3.4-20040701.tar.bz2
	wget "$SERVER"/lfs-packages/conglomeration/grep/grep-2.5.1.tar.bz2
	wget "$SERVER"/lfs-packages/conglomeration/groff/groff-1.19.1.tar.bz2
	wget "$SERVER"/lfs-packages/conglomeration/grub/grub-0.95.tar.bz2
	wget "$SERVER"/lfs-packages/conglomeration/gzip/gzip-1.3.5.tar.bz2
	wget "$SERVER"/lfs-packages/conglomeration/iana-etc/iana-etc-1.01.tar.bz2
	wget "$SERVER"/lfs-packages/conglomeration/inetutils/inetutils-1.4.2.tar.bz2
	wget "$SERVER"/lfs-packages/conglomeration/iproute2/iproute2-2.6.8-040823.tar.bz2
	wget "$SERVER"/lfs-packages/conglomeration/kbd/kbd-1.12.tar.bz2
	wget "$SERVER"/lfs-packages/conglomeration/less/less-382.tar.bz2
	wget "$SERVER"/lfs-packages/conglomeration/lfs-bootscripts/lfs-bootscripts-2.2.2.tar.bz2
	wget "$SERVER"/lfs-packages/conglomeration/libtool/libtool-1.5.8.tar.bz2
	wget "$SERVER"/lfs-packages/conglomeration/linux/linux-2.6.8.1.tar.bz2
	wget "$SERVER"/lfs-packages/conglomeration/linux-libc-headers/linux-libc-headers-2.6.8.1.tar.bz2
	wget "$SERVER"/lfs-packages/conglomeration/m4/m4-1.4.2.tar.bz2
	wget "$SERVER"/lfs-packages/conglomeration/make/make-3.80.tar.bz2
	wget "$SERVER"/lfs-packages/conglomeration/man/man-1.5o.tar.bz2
	wget "$SERVER"/lfs-packages/conglomeration/man-pages/man-pages-1.67.tar.bz2
	wget "$SERVER"/lfs-packages/conglomeration/mktemp/mktemp-1.5.tar.bz2
	wget "$SERVER"/lfs-packages/conglomeration/module-init-tools/module-init-tools-3.0.tar.bz2
	wget "$SERVER"/lfs-packages/conglomeration/ncurses/ncurses-5.4.tar.bz2
	wget "$SERVER"/lfs-packages/conglomeration/patch/patch-2.5.4.tar.bz2
	wget "$SERVER"/lfs-packages/conglomeration/perl/perl-5.8.5.tar.bz2
	wget "$SERVER"/lfs-packages/conglomeration/procps/procps-3.2.3.tar.bz2
	wget "$SERVER"/lfs-packages/conglomeration/psmisc/psmisc-21.5.tar.bz2
	wget "$SERVER"/lfs-packages/conglomeration/readline/readline-5.0.tar.bz2
	wget "$SERVER"/lfs-packages/conglomeration/sed/sed-4.1.2.tar.bz2
	wget "$SERVER"/lfs-packages/conglomeration/shadow/shadow-4.0.4.1.tar.bz2
	wget "$SERVER"/lfs-packages/conglomeration/sysklogd/sysklogd-1.4.1.tar.bz2
	wget "$SERVER"/lfs-packages/conglomeration/sysvinit/sysvinit-2.85.tar.bz2
	wget "$SERVER"/lfs-packages/conglomeration/tar/tar-1.14.tar.bz2
	wget "$SERVER"/lfs-packages/conglomeration/tcl/tcl8.4.7-src.tar.bz2
	wget "$SERVER"/lfs-packages/conglomeration/texinfo/texinfo-4.7.tar.bz2
	wget "$SERVER"/lfs-packages/conglomeration/udev/udev-030.tar.bz2
	wget "$SERVER"/lfs-packages/conglomeration/udev/udev-config-2.permissions
	wget "$SERVER"/lfs-packages/conglomeration/udev/udev-config-1.rules
	wget "$SERVER"/lfs-packages/conglomeration/util-linux/util-linux-2.12b.tar.bz2
	wget "$SERVER"/lfs-packages/conglomeration/vim/vim-6.3.tar.bz2
	wget "$SERVER"/lfs-packages/conglomeration/vim/vim-6.3-lang.tar.bz2
	wget "$SERVER"/lfs-packages/conglomeration/zlib/zlib-1.2.1.tar.bz2

	cd -
}

Packages
