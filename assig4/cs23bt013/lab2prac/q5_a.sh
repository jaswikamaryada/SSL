#!/bin/bash

#file=$(cat $1)
lengthlongest=0
for word in $1
 do
   length=${#word}
   if [ $length -gt $lengthlongest ];
   then
	   lengthlongest=$length
   fi
done 
echo $lengthlongest   
  	 
