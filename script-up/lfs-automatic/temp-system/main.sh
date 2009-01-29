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

#RUN USER LFS
function TSystem ()
{
	# TSystem. Constructing a Temporary System

	# Host System Requirements
	"$LFS_INSTALL"/temp-system/hostreqs.sh

	# Binutils-2.18 - Pass 1
	"$LFS_INSTALL"/temp-system/binutils-pass1.sh				#OK

	# GCC-4.3.2 - Pass 1
	"$LFS_INSTALL"/temp-system/gcc-pass1.sh						#OK

	# Linux-2.6.27.4 API Headers
	"$LFS_INSTALL"/temp-system/kernel-headers.sh				#OK

	# Glibc-2.8-20080929
	"$LFS_INSTALL"/temp-system/glibc.sh							#OK

	# Adjusting the Toolchain
	"$LFS_INSTALL"/temp-system/adjusting.sh						#OK

	# Tcl-8.5.5
	"$LFS_INSTALL"/temp-system/tcl.sh							#OK

	# Expect-5.43.0
	"$LFS_INSTALL"/temp-system/expect.sh						#OK

	# DejaGNU-1.4.4
	"$LFS_INSTALL"/temp-system/dejagnu.sh						#OK

	# GCC-4.3.2 - Pass 2
	"$LFS_INSTALL"/temp-system/gcc-pass2.sh						#OK

	# Binutils-2.18 - Pass 2
	"$LFS_INSTALL"/temp-system/binutils-pass2.sh				#OK

	# Ncurses-5.6
	"$LFS_INSTALL"/temp-system/ncurses.sh						#OK
	
	# Bash-3.2
	"$LFS_INSTALL"/temp-system/bash.sh							#OK

	# Bzip2-1.0.5
	"$LFS_INSTALL"/temp-system/bzip2.sh							#OK

	# Coreutils-6.12
	"$LFS_INSTALL"/temp-system/coreutils.sh						#OK

	# Diffutils-2.8.1
	"$LFS_INSTALL"/temp-system/diffutils.sh						#OK
	
	# E2fsprogs-1.41.3
	"$LFS_INSTALL"/temp-system/e2fsprogs.sh						#OK
	
	# Findutils-4.4.0
	"$LFS_INSTALL"/temp-system/findutils.sh						#OK
	
	# Gawk-3.1.6
	"$LFS_INSTALL"/temp-system/gawk.sh							#OK

	# Gettext-0.17
	"$LFS_INSTALL"/temp-system/gettext.sh						#OK
	
	# Grep-2.5.3 
	"$LFS_INSTALL"/temp-system/grep.sh							#OK

	# Gzip-1.3.12
	"$LFS_INSTALL"/temp-system/gzip.sh							#OK
	
	# M4-1.4.2
	"$LFS_INSTALL"/temp-system/m4.sh							#OK

	# Make-3.81
	"$LFS_INSTALL"/temp-system/make.sh							#OK

	# Patch-2.5.4
	"$LFS_INSTALL"/temp-system/patch.sh							#OK
	
	# Perl-5.10.0
	"$LFS_INSTALL"/temp-system/perl.sh							#OK
	
	# Sed-4.1.5
	"$LFS_INSTALL"/temp-system/sed.sh							#OK
	
	# Tar-1.20
	"$LFS_INSTALL"/temp-system/tar.sh							#OK

	# Texinfo-4.13a
	"$LFS_INSTALL"/temp-system/texinfo.sh						#OK
	
	# Util-linux-ng-2.14.1 
	"$LFS_INSTALL"/temp-system/util-linux.sh					#OK
	
	# Stripping
	"$LFS_INSTALL"/temp-system/stripping.sh						#OK

	# Changing Ownership
	chown -R root:root $LFS/tools

}

TSystem
