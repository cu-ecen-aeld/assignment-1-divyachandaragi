#!/bin/bash
# Script to find out number of appearances of a particular string in a particular folder structure

#Check if all the required arguments are available
if [ ! $# -eq 2 ]
then
	echo "ERROR: All the required parameters are not specified"
	exit 1
fi

filesdir=$1
searchstr=$2

#Check if the file directory is valid
if [ ! -d $filesdir ]
then
	echo "ERROR: File directory $filedir does not represent a directoty in filesystem"
	exit 1
fi

#Print number of files in a given directory
num_files=$(ls $1 | wc -l)
echo "The number of files are $num_files"

#calculate number of matching lines
num_matching_lines=$(grep -r $2 $1 | wc -l)
echo "and the number of matching lines are $num_matching_lines"
