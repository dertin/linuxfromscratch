#!/bin/bash

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
# 
#
# LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Flex ()
{
	# 6.29. Flex-2.5.31
	cd /sources
	tar xfj flex-2.5.31.tar.bz2
	cd flex-2.5.31

	# 6.29.1. Installation of Flex

	# Begin commands
	patch -Np1 -i ../flex-2.5.31-debian_fixes-2.patch

	touch doc/flex.1

	./configure --prefix=/usr

	make

	# Begin test suites
	if [ "$TEST_SUITES" == "yes" ]
	then
		make check
	fi
	# End test suites

	make install

	ln -s libfl.a /usr/lib/libl.a

cat > /usr/bin/lex << "EOF"
#!/bin/sh
# Begin /usr/bin/lex

exec /usr/bin/flex -l "$@"

# End /usr/bin/lex
EOF
chmod 755 /usr/bin/lex
	# End commands

	cd ..
	rm -rf flex-2.5.31
}

Flex
