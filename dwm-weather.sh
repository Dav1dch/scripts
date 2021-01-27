#!/bin/bash

while true
do
	sleep 15
	#ipaddr=`curl cip.cc | grep IP | awk '{print $3}'`
	#echo $ipaddr
	weatherReport=`curl "wttr.in/guangzhou?format=1"`
	echo $weatherReport > /home/david/scripts/weather.out
	
	sleep 1200
done
