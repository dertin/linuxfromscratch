#!/bin/bash

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009 - 2011  Team Developer Dertin GNU/Linux
#
# 
#
# LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.

function Creatingdirs ()
{
	# 6.5. Creating Directories

	# Begin commands
	install -d /{bin,boot,dev,etc/opt,home,lib,mnt}
	install -d /{sbin,srv,usr/local,var,opt}
	install -d /root -m 0750
	install -d /tmp /var/tmp -m 1777
	install -d /media/{floppy,cdrom}
	install -d /usr/{bin,include,lib,sbin,share,src}
	ln -s share/{man,doc,info} /usr
	install -d /usr/share/{doc,info,locale,man}
	install -d /usr/share/{misc,terminfo,zoneinfo}
	install -d /usr/share/man/man{1,2,3,4,5,6,7,8}
	install -d /usr/local/{bin,etc,include,lib,sbin,share,src}
	ln -s share/{man,doc,info} /usr/local
	install -d /usr/local/share/{doc,info,locale,man}
	install -d /usr/local/share/{misc,terminfo,zoneinfo}
	install -d /usr/local/share/man/man{1,2,3,4,5,6,7,8}
	install -d /var/{lock,log,mail,run,spool}
	install -d /var/{opt,cache,lib/{misc,locate},local}
	install -d /opt/{bin,doc,include,info}
	install -d /opt/{lib,man/man{1,2,3,4,5,6,7,8}}
	# End commands
}

Creatingdirs
