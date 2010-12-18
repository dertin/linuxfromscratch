#!/bin/bash

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009 - 2011  Team Developer Dertin GNU/Linux
#
# 
#
# LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Profile ()
{
	# 7.8. The Bash Shell Startup Files

	# Begin commands
cat > /etc/profile << "EOF"
# Begin /etc/profile

export LC_ALL=PROFILE_LC
export LANG=PROFILE_LANG
export INPUTRC=/etc/inputrc

# End /etc/profile
EOF
	# End commands

	# Begin configuration
	sed -i -e "s/PROFILE_LC/$PROFILE_LC/" \
		-e "s/PROFILE_LANG/$PROFILE_LANG/" \
		/etc/profile
	# End configuration
}

Profile
