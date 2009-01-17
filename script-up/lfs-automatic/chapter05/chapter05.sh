#!/bin/bash

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
# This project is based on "http://savannah.nongnu.org/projects/LFS-Automatic/"
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

	# X.X. Linux-Libc-Headers-2.6.8.1
	#Settingenvironment "$LFS_INSTALL"/chapter05/linux-libc-headers.sh				#NOT

	# 5.6. Linux-2.6.27.4 API Headers
	Settingenvironment "$LFS_INSTALL"/chapter05/kernel-headers.sh					#OK

	# 5.8. Glibc-2.8-20080929
	Settingenvironment "$LFS_INSTALL"/chapter05/glibc.sh							#OK

	# 5.9. Adjusting the Toolchain
	Settingenvironment "$LFS_INSTALL"/chapter05/adjusting.sh						#OK

	# 5.10. tcl8.5.5
	Settingenvironment "$LFS_INSTALL"/chapter05/tcl.sh								#OK

	# 5.11. Expect-5.43
	Settingenvironment "$LFS_INSTALL"/chapter05/expect.sh							#OK

	# 5.12. DejaGNU-1.4.4
	Settingenvironment "$LFS_INSTALL"/chapter05/dejagnu.sh							#OK

	# 5.13. GCC-3.4.1 - Pass 2
	Settingenvironment "$LFS_INSTALL"/chapter05/gcc-pass2.sh						#OK

	# 5.14. Binutils-2.15.91.0.2 - Pass 2
	Settingenvironment "$LFS_INSTALL"/chapter05/binutils-pass2.sh					#OK

	# 5.15. Gawk-3.1.4
	Settingenvironment "$LFS_INSTALL"/chapter05/gawk.sh

	# 5.16. Coreutils-5.2.1
	Settingenvironment "$LFS_INSTALL"/chapter05/coreutils.sh

	# 5.17. Bzip2-1.0.2
	Settingenvironment "$LFS_INSTALL"/chapter05/bzip2.sh

	# 5.18. Gzip-1.3.5
	Settingenvironment "$LFS_INSTALL"/chapter05/gzip.sh

	# 5.19. Diffutils-2.8.1
	Settingenvironment "$LFS_INSTALL"/chapter05/diffutils.sh

	# 5.20. Findutils-4.1.20
	Settingenvironment "$LFS_INSTALL"/chapter05/findutils.sh

	# 5.21. Make-3.80
	Settingenvironment "$LFS_INSTALL"/chapter05/make.sh

	# 5.22. Grep-2.5.1
	Settingenvironment "$LFS_INSTALL"/chapter05/grep.sh

	# 5.23. Sed-4.1.2
	Settingenvironment "$LFS_INSTALL"/chapter05/sed.sh

	# 5.24. Gettext-0.14.1
	Settingenvironment "$LFS_INSTALL"/chapter05/gettext.sh

	# 5.25. Ncurses-5.4
	Settingenvironment "$LFS_INSTALL"/chapter05/ncurses.sh

	# 5.26. Patch-2.5.4
	Settingenvironment "$LFS_INSTALL"/chapter05/patch.sh

	# 5.27. Tar-1.14
	Settingenvironment "$LFS_INSTALL"/chapter05/tar.sh

	# 5.28. Texinfo-4.7
	Settingenvironment "$LFS_INSTALL"/chapter05/texinfo.sh

	# 5.29. Bash-3.0
	Settingenvironment "$LFS_INSTALL"/chapter05/bash.sh

	# 5.30. M4-1.4.2
	Settingenvironment "$LFS_INSTALL"/chapter05/m4.sh
	
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
