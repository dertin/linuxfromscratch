#!/bin/bash

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
#
# LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.



function Patches ()
{
	# 3.2. Needed Patches
	cd "$LFS"/sources

    wget http://www.linuxfromscratch.org/patches/lfs/6.4/automake-1.10.1-test_fix-1.patch
    wget http://www.linuxfromscratch.org/patches/lfs/6.4/bash-3.2-fixes-8.patch
    wget http://www.linuxfromscratch.org/patches/lfs/6.4/db-4.7.25-upstream_fixes-1.patch
    wget http://www.linuxfromscratch.org/patches/lfs/6.4/binutils-2.18-GCC43-1.patch
    wget http://www.linuxfromscratch.org/patches/lfs/6.4/binutils-2.18-configure-1.patch
    wget http://www.linuxfromscratch.org/patches/lfs/6.4/bzip2-1.0.5-install_docs-1.patch
    wget http://www.linuxfromscratch.org/patches/lfs/6.4/coreutils-6.12-i18n-2.patch
    wget http://www.linuxfromscratch.org/patches/lfs/6.4/coreutils-6.12-old_build_kernel-1.patch
    wget http://www.linuxfromscratch.org/patches/lfs/6.4/coreutils-6.12-uname-1.patch
    wget http://www.linuxfromscratch.org/patches/lfs/6.4/diffutils-2.8.1-i18n-1.patch
    wget http://www.linuxfromscratch.org/patches/lfs/6.4/expect-5.43.0-spawn-1.patch
    wget http://www.linuxfromscratch.org/patches/lfs/6.4/expect-5.43.0-tcl_8.5.5_fix-1.patch
    wget http://www.linuxfromscratch.org/patches/lfs/6.4/glibc-2.8-20080929-iconv_tests-1.patch
    wget http://www.linuxfromscratch.org/patches/lfs/6.4/glibc-2.8-20080929-ildoubl_test-1.patch
    wget http://www.linuxfromscratch.org/patches/lfs/6.4/grep-2.5.3-debian_fixes-1.patch
    wget http://www.linuxfromscratch.org/patches/lfs/6.4/grep-2.5.3-upstream_fixes-1.patch
    wget http://www.linuxfromscratch.org/patches/lfs/6.4/groff-1.18.1.4-debian_fixes-1.patch
    wget http://www.linuxfromscratch.org/patches/lfs/6.4/grub-0.97-disk_geometry-1.patch
    wget http://www.linuxfromscratch.org/patches/lfs/6.4/grub-0.97-256byte_inode-1.patch
    wget http://www.linuxfromscratch.org/patches/lfs/6.4/inetutils-1.5-no_server_man_pages-2.patch
    wget http://www.linuxfromscratch.org/patches/lfs/6.4/kbd-1.14.1-backspace-1.patch
    wget http://www.linuxfromscratch.org/patches/lfs/6.4/module-init-tools-3.4.1-manpages-1.patch
    wget http://www.linuxfromscratch.org/patches/lfs/6.4/ncurses-5.6-coverity_fixes-1.patch
    wget http://www.linuxfromscratch.org/patches/lfs/6.4/perl-5.10.0-consolidated-1.patch
    wget http://www.linuxfromscratch.org/patches/lfs/6.4/procps-3.2.7-watch_unicode-1.patch
    wget http://www.linuxfromscratch.org/patches/lfs/6.4/readline-5.2-fixes-5.patch
    wget http://www.linuxfromscratch.org/patches/lfs/6.4/vim-7.2-fixes-3.patch


	cd -
}

Patches
