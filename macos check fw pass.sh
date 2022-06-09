#!/bin/bash
# Membuat variabel
OUTPUT01=$(firmwarepasswd -check)
OUTPUT02=$(cd /Volumes/Macintosh\ HD)
BEDA01=""
BEDA02="-sh: cd: /Volumes/Macintosh\ HD: No such file or directory"

# Melakukan pengecekan password firmware
MAU="Password Enabled: No"
GAMAU="Password Enabled: Yes"
if [[ $OUTPUT01==$MAU ]]
then
	echo "Firmware tidak diberi password"
	if [[ $OUTPUT02==$BEDA01 ]]
	then
		echo "Startup disk Machintosh HD"
		cd /tmp
		curl -LJO https://raw.githubusercontent.com/Kateg95/MDM-Firmware-Pass/main/macos%20sets%20fw%20pass%20-usr-bin-expect.sh
		/usr/bin/expect macos%20sets%20fw%20pass%20-usr-bin-expect.sh
		rm  macos%20sets%20fw%20pass%20-usr-bin-expect.sh
	elif [[ $OUTPUT02==$BEDA02 ]]
	then
		echo "Startup disk bukan Machintosh HD"
	fi
elif [[ $OUTPUT01==$GAMAU ]]
then
	echo "Firmware diberi password. Malesin ah."
fi