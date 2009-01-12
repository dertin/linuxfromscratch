#!/bin/bash

# LFS-Install - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
# This project is based on "http://savannah.nongnu.org/projects/lfs-install/"
#
# LFS-Install comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Man_pages ()
{
	# 6.10. Man-pages-1.67
	cd /sources
	tar xfj man-pages-1.67.tar.bz2
	cd man-pages-1.67

	# 6.10.1. Installation of Man-pages

	# Begin commands
	make install
	# End commands

	cd ..
	rm -rf man-pages-1.67
}

Man_pages
