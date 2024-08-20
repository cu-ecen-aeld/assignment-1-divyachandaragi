#!/bin/bash
# File operations

#Check if all the required arguments are available
if [ ! $# -eq 2 ]
then
	echo "ERROR: All the required parameters are not specified"
	exit 1
fi

writefile=$1
writestr=$2

dir_name=$(dirname $writefile)

mkdir -p $dir_name
echo $writestr > $writefile

if [ $? -eq 0 ]
then
	echo "File is created successfully with contents provided"
else
	echo "ERROR: File creation Failed"
	exit 1
fi

