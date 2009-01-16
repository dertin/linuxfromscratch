#!/bin/bash

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
# This project is based on "http://savannah.nongnu.org/projects/LFS-Automatic/"
#
# LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Adjusting ()
{
	# 5.9. Adjusting the Toolchain
	SPECS=`dirname $($LFS_TGT-gcc -print-libgcc-file-name)`/specs
	$LFS_TGT-gcc -dumpspecs | sed \
  	-e 's@/lib\(64\)\?/ld@/tools&@g' \
  	-e "/^\*cpp:$/{n;s,$, -isystem /tools/include,}" > $SPECS 
	echo "New specs file is: $SPECS"
	unset SPECS
	# End commands
}

Adjusting
