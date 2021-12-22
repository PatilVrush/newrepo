#!/bin/bash

while true; do
read -rsn1 input
if [ "$input" = "a" ]; then
    rostopic pub -1 /counter std_msgs/Int32 5
fi
done
