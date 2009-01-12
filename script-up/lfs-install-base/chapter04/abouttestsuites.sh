#!/bin/bash

# LFS-Install - An Automated Linux From Scratch-Installer
# Copyright (C) 2009  Team Developer Dertin GNU/Linux
#
# This project is based on "http://savannah.nongnu.org/projects/lfs-install/"
#
# LFS-Install comes with ABSOLUTELY NO WARRANTY; for details see COPYING.
# This is free software, and you are welcome to redistribute it
# under certain conditions; see COPYING for details.


function Abouttestsuites ()
{
	# 4.6. About the Test Suites
	echo
	echo -n "Enable test suites [y/n/D]: "
	read TEST_SUITES

	if [ -z "$TEST_SUITES" ]
	then
		TEST_SUITES="default"
	fi

	case "$TEST_SUITES" in
		Y|y|Yes|yes)
			# Run all available test suites
			TEST_SUITES="yes"
			;;

		N|n|No|no)
			# Run no test suites at all
			TEST_SUITES="no"
			;;

		D|d|Default|default)
			# Run only mandatory test suites
			TEST_SUITES="default"
			;;

		*)
			Abouttestsuites
			;;
	esac

	export TEST_SUITES
}

Abouttestsuites
