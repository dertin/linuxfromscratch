#!/bin/bash

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
# 
#
# LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.

function Perl ()
{
	# 5.34. Perl-5.10.0
	cd "$LFS"/sources
	tar xzf perl-5.10.0.tar.gz
	cd perl-5.10.0

	# 5.34.1. Installation of Perl

	# Begin commands
	patch -Np1 -i ../perl-5.10.0-consolidated-1.patch

	sh Configure -des -Dprefix=/tools \
                  -Dstatic_ext='Data/Dumper Fcntl IO POSIX'

	make perl utilities ext/Errno/pm_to_blib
	
	cp -v perl pod/pod2man /tools/bin
	mkdir -pv /tools/lib/perl5/5.10.0
	cp -Rv lib/* /tools/lib/perl5/5.10.0
	# End commands

	cd ..
	rm -rf perl-5.10.0
}

Perl
