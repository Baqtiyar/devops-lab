#!/bin/bash

<<Disclaimer 
This script can be used to create customizable directories 
with a given range in arguments
Disclaimer

echo "enter root directory name" 

read rootdir

mkdir $rootdir && cd $rootdir

echo "root directory created" 

echo "enter sub-directories name" 

read subdir

for (( i=$1; i<=$2; i++ ));
do
	mkdir ${subdir}${i}
done 

echo "sub-directories created"

echo "end"
