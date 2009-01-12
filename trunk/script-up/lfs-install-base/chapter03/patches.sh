#!/bin/bash

# LFS-Install - An Automated Linux From Scratch-Installer
# Copyright (C) 2002-2005  Daniel Baumann <daniel.baumann@panthera-systems.net>
#
# LFS-Install comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Patches ()
{
	# 3.2. Needed Patches
	cd "$LFS"/sources

	wget "$SERVER"/lfs-packages/conglomeration/bash/bash-3.0-display_wrap-1.patch
	wget "$SERVER"/lfs-packages/conglomeration/coreutils/coreutils-5.2.1-suppress_uptime_kill_su-1.patch
	wget "$SERVER"/lfs-packages/conglomeration/coreutils/coreutils-5.2.1-uname-2.patch
	wget "$SERVER"/lfs-packages/conglomeration/expect/expect-5.42.1-spawn-1.patch
	wget "$SERVER"/lfs-packages/conglomeration/flex/flex-2.5.31-debian_fixes-2.patch
	wget "$SERVER"/lfs-packages/conglomeration/gcc/gcc-3.4.1-linkonce-1.patch
	wget "$SERVER"/lfs-packages/conglomeration/gcc/gcc-3.4.1-no_fixincludes-1.patch
	wget "$SERVER"/lfs-packages/conglomeration/gcc/gcc-3.4.1-specs-1.patch
	wget "$SERVER"/lfs-packages/conglomeration/inetutils/inetutils-1.4.2-kernel_headers-1.patch
	wget "$SERVER"/lfs-packages/conglomeration/inetutils/inetutils-1.4.2-no_server_man_pages-1.patch
	wget "$SERVER"/lfs-packages/conglomeration/iproute2/iproute2-2.6.8_040823-remove_db-1.patch
	wget "$SERVER"/lfs-packages/conglomeration/man/man-1.5o-80cols-1.patch
	wget "$SERVER"/lfs-packages/conglomeration/mktemp/mktemp-1.5-add_tempfile-1.patch
	wget "$SERVER"/lfs-packages/conglomeration/perl/perl-5.8.5-libc-1.patch
	wget "$SERVER"/lfs-packages/conglomeration/readline/readline-5.0-display_wrap-1.patch
	wget "$SERVER"/lfs-packages/conglomeration/sysklogd/sysklogd-1.4.1-kernel_headers-1.patch
	wget "$SERVER"/lfs-packages/conglomeration/sysklogd/sysklogd-1.4.1-signal-1.patch
	wget "$SERVER"/lfs-packages/conglomeration/sysvinit/sysvinit-2.85-proclen-1.patch
	wget "$SERVER"/lfs-packages/conglomeration/texinfo/texinfo-4.7-segfault-1.patch
	wget "$SERVER"/lfs-packages/conglomeration/util-linux/util-linux-2.12b-sfdisk-2.patch
	wget "$SERVER"/lfs-packages/conglomeration/zlib/zlib-1.2.1-security-1.patch

	cd -
}

Patches
