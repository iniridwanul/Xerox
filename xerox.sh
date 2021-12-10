#!/usr/bin/bash

xeroxprivacykey="xerox"
read -sp "Privacy Key: " privacykey
if [ "$xeroxprivacykey" = "$privacykey" ]
then
	echo "Please Wait..."
	sleep 3
	clear
	echo "Successfully Login"
	sleep 3
    clear
	figlet -f big "XEROX"
	printf "Author:     Md. Ridwanul Islam Muntakim\nBug Report: theridwanul@protonmail.com\n\n"
	read -p "Enter Interface Name: " userinterfacename
	read -p "Enter New MAC: " usernewmac
	ip link set dev $userinterfacename down
	ip link set dev $userinterfacename address $usernewmac
	ip link set dev $userinterfacename up
	echo "Successfully Changed"
else
	echo "Wrong Information"
fi

