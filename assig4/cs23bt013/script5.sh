#!/bin/bash

if [ $# -ne 3 ];
then
 echo "Error no sufficent arguments"
fi
dir=$1
prefix=$2
trueorfalse=$3
if [ -d "$dir" ];
then
 echo "Directory exits"
else
 echo "Directory doesnot exists"
 exit 1
fi
if [ "$trueorfalse" = "true" ];
then
 files=$(find "$dir" -name "${prefix}*")
elif [ "$trueorfalse" = "false" ];
then
 files=$(find "$dir" -maxdepth 1 -name "${prefix}*")
else
 echo "Use true or false"
fi

if [ -z "$files" ];
then
 echo "No files found"
else
 echo "Files Found"
 echo "$files"
fi
