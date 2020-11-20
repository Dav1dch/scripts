#!/bin/bash

while true
do
	sleep 30
	ipaddr=`curl cip.cc | grep IP | awk '{print $3}'`
	echo $ipaddr
	weatherReport=`curl "wttr.in/@$ipaddr?format=1"`
	echo $weatherReport > ./weather.out
	
	sleep 1800
done
