#!/bin/bash

id=$(pgrep -f "relax.sh")
idmon=$(pgrep -f "moni.sh")

current_state=$(ps -p "$id" -o state=) 

if [ "$current_state" == "T" ]; then 
	kill -SIGCONT "$idmon"
	kill -SIGCONT "$id" 
#echo "The script has been Resumed"
	notify-send "The script has been Resumed"
else 
	kill -SIGSTOP "$idmon"
	PID=$(pgrep -f "paplay .*/yt/relax2020/completed/convey.wav")
	kill "$PID"

	kill -SIGSTOP "$id"
#echo "The script has been Paused"
	notify-send "The script has been Paused" 
fi
