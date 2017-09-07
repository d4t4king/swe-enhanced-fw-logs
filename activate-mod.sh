#!/bin/bash

RED="\033[00;31m"
BRED="\033[01;31m"
GREEN="\033[00;32m"
BGREEN="\033[01;32m"
YELLOW="\033[00;93m"
BYELLOW="\033[01;93m"
NC="\033[0m"

MOD_NAME="enhanced-fw-logs"

#echo -e "${BRED}This text is bold red.${NC}"
#echo -e "${RED}This text is red.${NC}"
#echo -e "${BYELLOW}This text is bold yellow (orange).${NC}"
#echo -e "${YELLOW}This text is yellow (orange).${NC}"
#echo -e "${BGREEN}This text is bold green.${NC}"
#echo -e "${GREEN}This text is green.${NC}"

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
MODS_DIR="/var/smoothwall/mods"
MODSA_DIR="/var/smoothwall/mods-available"
INSTALL_DIR="${MODSA_DIR}/${MOD_NAME}"
CWD=$(pwd)
if [ ${CWD} = ${INSTALL_DIR} ]; then
	# the directory already esists (cuz we're in it)
	# and the sub directories have already been copied
	# either from git or tarball
	echo "It looks like we're in the mod directory."
	echo "This means that either the git repo was cloned"
	echo "here, or the tarball was extracted here."
	echo "So, ew're pretty much ready to go."
else
	echo -n "Creating the mods storage directory..."
	if [[ -e ${INSTALL_DIR} && -d ${INSTALL_DIR} ]]; then
		echo -e "${YELLOW}directory exists!${NC}"
	else
		mkdir -p $INSTALL_DIR
		echo -e "${BGREEN}done.${NC}"
	fi
	cp -rvf etc/ httpd/ usr/ $INSTALL_DIR
fi
cd /var/smoothwall/mods/
chown -R nobody:nobody $INSTALL_DIR
ln -snf $INSTALL_DIR ${MODS_DIR}/${MOD_NAME}

