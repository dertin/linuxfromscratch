#!/bin/bash

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
# 
#
# LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Chapter05 ()
{
	# Chapter 5. Constructing a Temporary System

	# 4.4. Setting Up the Environment
	source "$LFS_INSTALL"/chapter04/settingenvironment.sh

	# 5.2. Host System Requirements
	"$LFS_INSTALL"/chapter05/hostreqs.sh

	# 5.4. Binutils-2.18 - Pass 1
	Settingenvironment "$LFS_INSTALL"/chapter05/binutils-pass1.sh					#OK

	# 5.5. GCC-4.3.2 - Pass 1
	Settingenvironment "$LFS_INSTALL"/chapter05/gcc-pass1.sh						#OK

	# 5.6. Linux-2.6.27.4 API Headers
	Settingenvironment "$LFS_INSTALL"/chapter05/kernel-headers.sh					#OK

	# 5.7. Glibc-2.8-20080929
	Settingenvironment "$LFS_INSTALL"/chapter05/glibc.sh							#OK

	# 5.8. Adjusting the Toolchain
	Settingenvironment "$LFS_INSTALL"/chapter05/adjusting.sh						#OK

	# 5.9. Tcl-8.5.5
	Settingenvironment "$LFS_INSTALL"/chapter05/tcl.sh								#OK

	# 5.10. Expect-5.43.0
	Settingenvironment "$LFS_INSTALL"/chapter05/expect.sh							#OK

	# 5.11. DejaGNU-1.4.4
	Settingenvironment "$LFS_INSTALL"/chapter05/dejagnu.sh							#OK

	# 5.12. GCC-4.3.2 - Pass 2
	Settingenvironment "$LFS_INSTALL"/chapter05/gcc-pass2.sh						#OK

	# 5.13. Binutils-2.18 - Pass 2
	Settingenvironment "$LFS_INSTALL"/chapter05/binutils-pass2.sh					#OK

	# 5.14. Ncurses-5.6
	Settingenvironment "$LFS_INSTALL"/chapter05/ncurses.sh							#OK
	
	# 5.15. Bash-3.2
	Settingenvironment "$LFS_INSTALL"/chapter05/bash.sh								#OK

	# 5.16. Bzip2-1.0.5
	Settingenvironment "$LFS_INSTALL"/chapter05/bzip2.sh							#OK

	# 5.17. Coreutils-6.12
	Settingenvironment "$LFS_INSTALL"/chapter05/coreutils.sh						#OK

	# 5.18. Diffutils-2.8.1
	Settingenvironment "$LFS_INSTALL"/chapter05/diffutils.sh						#OK
	
	# 5.19. E2fsprogs-1.41.3
	Settingenvironment "$LFS_INSTALL"/chapter05/e2fsprogs.sh						#OK
	
	# 5.20. Findutils-4.4.0
	Settingenvironment "$LFS_INSTALL"/chapter05/findutils.sh						#OK
	
	# 5.15. Gawk-3.1.6
	Settingenvironment "$LFS_INSTALL"/chapter05/gawk.sh								#OK

	# 5.22. Gettext-0.17
	Settingenvironment "$LFS_INSTALL"/chapter05/gettext.sh							#OK
	
	# 5.23. Grep-2.5.3 
	Settingenvironment "$LFS_INSTALL"/chapter05/grep.sh								#OK

	# 5.24. Gzip-1.3.12
	Settingenvironment "$LFS_INSTALL"/chapter05/gzip.sh								#OK
	
	# 5.30. M4-1.4.2
	Settingenvironment "$LFS_INSTALL"/chapter05/m4.sh								#OK

	# 5.26. Make-3.81
	Settingenvironment "$LFS_INSTALL"/chapter05/make.sh								#OK



	# 5.23. Sed-4.1.2
	Settingenvironment "$LFS_INSTALL"/chapter05/sed.sh

	# 5.26. Patch-2.5.4
	Settingenvironment "$LFS_INSTALL"/chapter05/patch.sh

	# 5.27. Tar-1.14
	Settingenvironment "$LFS_INSTALL"/chapter05/tar.sh

	# 5.28. Texinfo-4.7
	Settingenvironment "$LFS_INSTALL"/chapter05/texinfo.sh
	
	# 5.31. Bison-1.875a
	Settingenvironment "$LFS_INSTALL"/chapter05/bison.sh

	# 5.32. Flex-2.5.31
	Settingenvironment "$LFS_INSTALL"/chapter05/flex.sh

	# 5.33. Util-linux-2.12b
	Settingenvironment "$LFS_INSTALL"/chapter05/util-linux.sh

	# 5.34. Perl-5.8.5
	Settingenvironment "$LFS_INSTALL"/chapter05/perl.sh

	# 5.35. Udev-030
	Settingenvironment "$LFS_INSTALL"/chapter05/udev.sh

	# 5.36. Stripping
	"$LFS_INSTALL"/chapter05/stripping.sh
}

Chapter05
