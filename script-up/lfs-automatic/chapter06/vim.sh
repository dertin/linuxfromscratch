#!/bin/bash

# LFS-Automatic - An Automated Linux From Scratch-Installer
# Copyright (C) 2009 - 2011  Team Developer Dertin GNU/Linux
#
# 
#
# LFS-Automatic comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Vim ()
{
	# 6.23. Vim-6.3
	cd /sources
	tar xfj vim-6.3.tar.bz2
	tar xfj vim-6.3-lang.tar.bz2
	cd vim63

	# 6.23.1. Installation of Vim

	# Begin commands
	echo '#define SYS_VIMRC_FILE "/etc/vimrc"' >> src/feature.h
	echo '#define SYS_GVIMRC_FILE "/etc/gvimrc"' >> src/feature.h

	./configure --prefix=/usr --enable-multibyte

	make

	# Begin test suite
	if [ "$TEST_SUITES" == "yes" ]
	then
		make test
	fi
	# End test suites

	make install

	ln -s vim /usr/bin/vi
	# End commands

	# 6.23.2. Configuring Vim

	# Begin commands
cat > /etc/vimrc << "EOF"
" Begin /etc/vimrc

set nocompatible
set backspace=2
syntax on
if (&term == "iterm") || (&term == "putty")
  set background=dark
endif

" End /etc/vimrc
EOF
	# End commands

	cd ..
	rm -rf vim63
}

Vim
