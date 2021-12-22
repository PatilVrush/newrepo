#!/bin/bash

password=field123

echo "Copy where?"
echo "1 = Shrijit's Laptop, 2 = Vrushali's Laptop, 3 = Simi's Laptop"

read dest_lap

if [ $dest_lap == 1 ]
then
	sshpass -p $password scp -r /<PATH>/final.txt shrijit-hp@shrijit-hp.local:/root/<PATH>
 
elif [ $dest_lap == 2 ]
then
	sshpass -p $password scp -r /<PATH>/final.txt vrushali-dell@vrushali-dell.local:/home/vrushali/Desktop
elif [ $dest_lap == 3 ]
then
	sshpass -p $password scp -r /<PATH>/final.txt simi-dell@simi-dell.local:/root/<PATH>
fi


