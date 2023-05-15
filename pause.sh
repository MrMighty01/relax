#!/bin/bash

id=$(pgrep -f "relax.sh")

state=$(ps -p $id -o state=) 

if [ "$state" == "T" ]; then 
	kill -SIGCONT $id 
	echo "The script has been Resumed"
else 
	kill -SIGSTOP $id
	echo "The script has been Paused"
fi
