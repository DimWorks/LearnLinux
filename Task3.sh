#!/bin/bash

read -p "Enter interval (in seconds): " Interval
read -p "Enter the name of process: " ProcessName

while true
do

id=$(pgrep -n "$ProcessName")
sleep "$Interval"

if [ -z $id ]; then
ehco "Process ($ProcessName) is not working. Trying start..."
$ProcessName &

else 
echo "Process ($ProcessName) is working!"
fi
done
