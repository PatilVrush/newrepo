#!/bin/bash
sseq=0
while true; do
read -rsn1 
if [ $?=0 ]; then
    rostopic pub -1 /flag  geometry_msgs/PointStamped "{header: {seq: 4,stamp: now,frame_id: '$sseq'}, point: {x: $sseq,y: $sseq,z: $sseq}}"  
    ((sseq=sseq+1))
fi
done
