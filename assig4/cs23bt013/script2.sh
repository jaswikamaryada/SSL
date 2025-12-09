#!/bin/bash

if [ $# -eq 0 ];
then 
 echo " enter the set of numbers as command line arguments "
fi

echo " enter the value of k "
read k

arr=("$@")

sorted_array=($(for i in "${arr[@]}"; do echo $i; done | sort -n))

length=${#sorted_array[@]}
#echo $length

index=$((length - k))
echo " the $k th largest number is ${sorted_array[$index]} "
