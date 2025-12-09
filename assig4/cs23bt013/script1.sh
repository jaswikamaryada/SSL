#!/bin/bash

if [ $# -eq 0 ];
then
 echo " Exception:enter the numbers "
fi

arr=("$@")

sorted_array=($(for i in "${arr[@]}"; do echo $i; done | sort -n))


echo " sorted list is ${sorted_array[@]} "

echo " minimum value is ${sorted_array[0]} "

length=${#sorted_array[@]}
echo " max value is ${sorted_array[$((length-1))]} "

sum=0
for i in "${sorted_array[@]}";
 do
  sum=$(( sum + i ))	 
 done 
average=$(echo "scale=2; $sum / $length" | bc) 
echo "average value is $average"

