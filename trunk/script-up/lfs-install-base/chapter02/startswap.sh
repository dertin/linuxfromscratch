#!/bin/bash

# LFS-Install - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
# This project is based on "http://savannah.nongnu.org/projects/lfs-install/"
#
# LFS-Install comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.

# Author: Guillermo Céspedes Tabárez
# 13/01/2009

function Swap (){
	
read -p "Start a swap partition?" OPT

case "$OPT" in
		Y|y|Yes|yes)
			read -p "Enter partition swap [/dev/hda2]" SWAP
			mkswap $SWAP
			/sbin/swapon $SWAP
			;;
			
		N|n|No|no)
			;;
			
		*)
			Swap
			;;
	esac
}
Swap