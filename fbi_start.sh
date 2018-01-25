#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'
DEFAULT=10

if [ $(df | grep -c /dev/sda1) != 1 ]
then
	echo -e "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n${RED}!!!!! Inserisci la chiavetta usb con le foto !!!!!${NC}\n\n\n\n\n\n\n\n\n\n\n\n\n\n" && sleep 15 && halt
else
	echo -e "\n\n\n${GREEN}**** Quanti secondi tra le foto [10] ? ${NC}"
	read -t 5 TIMEOUT
	if [ $? -gt 128 ]
	then
		fbi /media/usb0/* --autozoom --timeout $DEFAULT --random --noverbose --blend 500
	else
		TIMEOUT="${TIMEOUT:-${DEFAULT}}"
		fbi /media/usb0/* --autozoom --timeout $TIMEOUT --random --noverbose --blend 500
	fi
fi
