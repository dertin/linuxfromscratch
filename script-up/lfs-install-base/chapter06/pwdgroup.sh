#!/bin/bash

# LFS-Install - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
# This project is based on "http://savannah.nongnu.org/projects/lfs-install/"
#
# LFS-Install comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Pwdgroup ()
{
	# 6.7. Creating the passwd, group, and log Files

	# Begin commands
cat > /etc/passwd << "EOF"
root:x:0:0:root:/root:/bin/bash
EOF

cat > /etc/group << "EOF"
root:x:0:
bin:x:1:
sys:x:2:
kmem:x:3:
tty:x:4:
tape:x:5:
daemon:x:6:
floppy:x:7:
disk:x:8:
lp:x:9:
dialout:x:10:
audio:x:11:
video:x:12:
utmp:x:13:
usb:x:14:
EOF

	#exec /tools/bin/bash --login +h

	touch /var/run/utmp /var/log/{btmp,lastlog,wtmp}
	chgrp utmp /var/run/utmp /var/log/lastlog
	chmod 664 /var/run/utmp /var/log/lastlog
	# End commands
}

Pwdgroup
