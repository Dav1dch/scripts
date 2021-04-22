#!/bin/bash

while true
do
	sleep 15
	#ipaddr=`curl cip.cc | grep IP | awk '{print $3}'`
	#echo $ipaddr
	curl "wttr.in/guangzhou" > ~/.weatherreport
	RAIN=$(cat ~/.weatherreport | sed '16q;d' | sed -e 's/[^m]*m//g' | grep -o "[0-9]*%" | sort -n | sed -e '$!d' | sed -e "s/^/ ☔ /g")
	TEMP=$(cat ~/.weatherreport | sed '13q;d' | sed -e 's/[^m]*m//g;s/[^0-9]/ /g;s/ /\n/g;/^s*$/d' | grep [0-9] | sort -n | sed -e 1b -e '$!d' | tr '\n' ' ' | awk '{print " 🌞 "$1"°C - "$2 "°C"}')

	echo "$RAIN$TEMP " > /home/cappuccino/scripts/weather.out
	
	sleep 1200
done
