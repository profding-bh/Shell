#!/usr/bin/env bash

DISTROS=$(whiptail --title "Test Checklist Dialog" --checklist  "Choose preferred Linux distros"  15 60 4  "debian" "Venerable Debian" ON "ubuntu" "Grilled Halloumi Cheese"  OFF   "centos" "Cent os" ON  3>&1 1>&2 2>&3)


exitstatus=$?

if [ $exitstatus = 0 ]; then
	echo "Your favour are:" $DISTROS
else
	echo "You choose cancel" 
fi
