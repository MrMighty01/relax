#!/bin/bash

id=$(pgrep -f "relax.sh")

current_state=$(ps -p "$id" -o state=) 

if [ "$current_state" == "T" ]; then 
	kill -SIGCONT $id 
	echo "The script has been Resumed"
else 
	kill -SIGSTOP $id
	echo "The script has been Paused"
fi
