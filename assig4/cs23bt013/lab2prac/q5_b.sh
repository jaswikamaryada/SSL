#!/bin/bash

file=$(cat $1)
sum=0
for word in $file
 do
   number=${#word}
   sum=$(( sum+number ))
 done
echo $sum 
