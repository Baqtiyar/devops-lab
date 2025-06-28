#!/bin/bash

<<Disclaimer 
This script can be used to create customizable directories 
with a given range in arguments
Disclaimer

echo "Enter root directory name" 

read rootdir

mkdir $rootdir && cd $rootdir

echo "Root directory created successfully" 

echo "Enter sub-directories name" 

read subdir

for (( i=$1; i<=$2; i++ ));
do
	mkdir ${subdir}${i}
done 

echo "Sub-directories created successfully"
echo "Enjoy your directories"

echo "End"
