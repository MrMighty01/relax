#!/bin/bash 

id=$(pgrep -f "relax.sh")

while true; do
	state=$(xset q | grep "Monitor is" | awk '{print $3}')
	if [ "$state" == "Off" ]; then 
		kill -SIGSTOP $id
	fi

	if [ "$state" == "On" ]; then 
		kill -SIGCONT $id
	fi
	sleep 120
done
