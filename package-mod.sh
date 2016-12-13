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

# put the var/ tree in /
# put the tmp/ tree in /
# copy the install scripts to /tmp/
# tarball it up
