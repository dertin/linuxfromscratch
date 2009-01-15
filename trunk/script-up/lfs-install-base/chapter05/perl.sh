#!/bin/bash

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
# This project is based on "http://savannah.nongnu.org/projects/LFS-Automatic/"
#
# LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.

function Perl ()
{
	# 5.34. Perl-5.8.5
	cd "$LFS"/sources
	tar xfj perl-5.8.5.tar.bz2
	cd perl-5.8.5

	# 5.34.1. Installation of Perl

	# Begin commands
	patch -Np1 -i ../perl-5.8.5-libc-1.patch

	./configure.gnu --prefix=/tools -Dstatic_ext='IO Fcntl POSIX'

	make perl utilities

	cp perl pod/pod2man /tools/bin
	mkdir -p /tools/lib/perl5/5.8.5
	cp -R lib/* /tools/lib/perl5/5.8.5
	# End commands

	cd ..
	rm -rf perl-5.8.5
}

Perl
