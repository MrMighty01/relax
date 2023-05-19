#!/bin/bash

audio=$(find ~/ -iname convey.wav -print -quit)

while true; do 
	sleep 1200  
	notify-send "Hey Buddy, it has been 20 minutes since you sat in front of your monitor, come on, move away from your workstation, and relax your eyes by looking at something, that is 20 meters away, for at least 20 seconds :)"
	paplay "$audio"
	sleep 30
done
