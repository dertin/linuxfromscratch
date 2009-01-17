#!/bin/bash

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
# 
#
# LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.

function Chapter06 ()
{
	# Chapter 6. Installing Basic System Software
	cp -R "$LFS_INSTALL"/chapter06 "$LFS"

	# 6.2. Mounting Virtual Kernel File Systems
	"$LFS_INSTALL"/chapter06/kernfs.sh

	# 6.3. Entering the Chroot Environment
	source "$LFS_INSTALL"/chapter06/chroot.sh

	# 6.4. Changing Ownership
	Chroot /chapter06/changingowner.sh

	# 6.5. Creating Directories
	Chroot /chapter06/creatingdirs.sh

	# 6.6. Creating Essential Symlinks
	Chroot /chapter06/createfiles.sh

	# 6.7. Creating the passwd, group, and log Files
	Chroot /chapter06/pwdgroup.sh

	# 6.8. Populating /dev
	Chroot /chapter06/devices.sh

	# 6.9. Linux-Libc-Headers-2.6.8.1
	Chroot /chapter06/linux-libc-headers.sh

	# 6.10. Man-pages-1.67
	Chroot /chapter06/man-pages.sh

	# 6.11. Glibc-2.3.4-20040701
	Chroot /chapter06/glibc.sh

	# 6.12. Re-adjusting the Toolchain
	Chroot /chapter06/readjusting.sh

	# 6.13. Binutils-2.15.91.0.2
	Chroot /chapter06/binutils.sh

	# 6.14. GCC-3.4.1
	Chroot /chapter06/gcc.sh

	# 6.15. Coreutils-5.2.1
	Chroot /chapter06/coreutils.sh

	# 6.16. Zlib-1.2.1
	Chroot /chapter06/zlib.sh
	
	# 6.17. Mktemp-1.5
	Chroot /chapter06/mktemp.sh

	# 6.18. Iana-Etc-1.01
	Chroot /chapter06/iana-etc.sh

	# 6.19. Findutils-4.1.20
	Chroot /chapter06/findutils.sh

	# 6.20. Gawk-3.1.4
	Chroot /chapter06/gawk.sh
	
	# 6.21. Ncurses-5.4
	Chroot /chapter06/ncurses.sh

	# 6.22. Readline-5.0
	Chroot /chapter06/readline.sh

	# 6.23. Vim-6.3
	Chroot /chapter06/vim.sh

	# 6.24. M4-1.4.2
	Chroot /chapter06/m4.sh

	# 6.25. Bison-1.875a
	Chroot /chapter06/bison.sh

	# 6.26. Less-382
	Chroot /chapter06/less.sh

	# 6.27. Groff-1.19.1
	Chroot /chapter06/groff.sh

	# 6.28. Sed-4.1.2
	Chroot /chapter06/sed.sh

	# 6.29. Flex-2.5.31
	Chroot /chapter06/flex.sh

	# 6.30. Gettext-0.14.1
	Chroot /chapter06/gettext.sh

	# 6.31. Inetutils-1.4.2
	Chroot /chapter06/inetutils.sh

	# 6.32. Iproute2-2.6.8-040823
	Chroot /chapter06/iproute2.sh

	# 6.33. Perl-5.8.5
	Chroot /chapter06/perl.sh

	# 6.34. Texinfo-4.7
	Chroot /chapter06/texinfo.sh

	# 6.35. Autoconf-2.59
	Chroot /chapter06/autoconf.sh

	# 6.36. Automake-1.9.1
	Chroot /chapter06/automake.sh

	# 6.37. Bash-3.0
	Chroot /chapter06/bash.sh

	# 6.38. File-4.10
	Chroot /chapter06/file.sh

	# 6.39. Libtool-1.5.8
	Chroot /chapter06/libtool.sh

	# 6.40. Bzip2-1.0.2
	Chroot /chapter06/bzip2.sh

	# 6.41. Diffutils-2.8.1
	Chroot /chapter06/diffutils.sh

	# 6.42. Kbd-1.12
	Chroot /chapter06/kbd.sh

	# 6.43. E2fsprogs-1.35
	Chroot /chapter06/e2fsprogs.sh

	# 6.44. Grep-2.5.1
	Chroot /chapter06/grep.sh

	# 6.45. Grub-0.95
	Chroot /chapter06/grub.sh

	# 6.46. Gzip-1.3.5
	Chroot /chapter06/gzip.sh

	# 6.47. Man-1.5o
	Chroot /chapter06/man.sh

	# 6.48. Make-3.80
	Chroot /chapter06/make.sh

	# 6.49. Module-Init-Tools-3.0
	Chroot /chapter06/module-init-tools.sh

	# 6.50. Patch-2.5.4
	Chroot /chapter06/patch.sh

	# 6.51. Procps-3.2.3
	Chroot /chapter06/procps.sh

	# 6.52. Psmisc-21.5
	Chroot /chapter06/psmisc.sh

	# 6.53. Shadow-4.0.4.1
	Chroot /chapter06/shadow.sh

	# 6.54. Sysklogd-1.4.1
	Chroot /chapter06/sysklogd.sh

	# 6.55. Sysvinit-2.85
	Chroot /chapter06/sysvinit.sh

	# 6.56. Tar-1.14
	Chroot /chapter06/tar.sh

	# 6.57. Udev-030
	Chroot /chapter06/udev.sh

	# 6.58. Util-linux-2.12b
	Chroot /chapter06/util-linux.sh

	# 6.60. Stripping Again
	"$LFS_INSTALL"/chapter06/strippingagain.sh

	rm -rf "$LFS"/chapter06
}

Chapter06
