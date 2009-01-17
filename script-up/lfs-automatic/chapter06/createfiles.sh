#!/bin/bash

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
# 
#
# LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Createfiles ()
{
	# 6.6. Creating Essential Symlinks

	# Begin commands
	ln -s /tools/bin/{bash,cat,pwd,stty} /bin
	ln -s /tools/bin/perl /usr/bin
	ln -s /tools/lib/libgcc_s.so.1 /usr/lib
	ln -s bash /bin/sh
	# End commands
}

Createfiles
