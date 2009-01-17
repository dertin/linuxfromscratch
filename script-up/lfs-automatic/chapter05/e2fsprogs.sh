#!/bin/bash

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
# 
#
# LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.

function Expect ()
{
	# 5.11. E2fsprogs
	cd "$LFS"/sources
	tar xzf e2fsprogs-1.41.3.tar.gz
	cd e2fsprogs-1.41.3

	#5.19.1. Installation of E2fsprogs 

	# Begin commands
	mkdir e2f-build
	cd e2f-build

	../configure --prefix=/tools

	make
	make install-libs
	
	chmod -v u+w /tools/lib/{libblkid,libcom_err,libe2p,libext2fs,libss,libuuid}.a
	
	cd ..
	}

Expect