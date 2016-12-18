#!/bin/bash

RED="\033[00;31m"
BRED="\033[01;31m"
GREEN="\033[00;32m"
BGREEN="\033[01;32m"
YELLOW="\033[00;93m"
BYELLOW="\033[01;93m"
NC="\033[0m"

echo -e "${BRED}This text is bold red.${NC}"
echo -e "${RED}This text is red.${NC}"
echo -e "${BYELLOW}This text is bold yellow (orange).${NC}"
echo -e "${YELLOW}This text is yellow (orange).${NC}"
echo -e "${BGREEN}This text is bold green.${NC}"
echo -e "${GREEN}This text is green.${NC}"

echo -e "${GREEN}This script will install the Enhanced Firewall logs mod for you,"
echo "from the  GitHub.com package or source.  You should use this script only"
echo "if you downloaded this package from GitHub.com."
echo
echo "If you downloaded the package from the Smoothwall Express forums, or from"
echo -e "smoothwall-info.net, ${BRED}DO NOT USE THIS SCRIPT${NC}."

echo "Continue? [y,N]"
read ans

case $ans in 
	y)
		# continue
		echo -e "${GREEN}Continuing on....${NC}"
		;;
	Y)
		# continue
		echo -e "${GREEN}Continuing on....${NC}"
		;;
	n)
		echo "Quitting.  Bye!  :-)~"
		exit 0
		;;
	N)
		echo "Quitting.  Bye!  :-)~"
		exit 0
		;;
	*)
		echo -e "${BRED}Unrecognized response.  Exiting.${NC}"
		exit 1
		;;
esac

# put the var/ tree in /var/smoothwall/mods/enhanced-fw-logs/
mkdir -p /var/smoothwall/mods/enhanced-fw-logs
chown -R nobody:nobody /var/smoothwall/mods/enhanced-fw-logs
mv var/ /var/smoothwall/mods/enhanced-fw-logs/

