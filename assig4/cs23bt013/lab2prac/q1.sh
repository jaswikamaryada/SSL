#!/bin/bash

#step1:- making a directory named cs213
mkdir cs203
if [ $# -ne  1 ];
then 
 echo " new name is not given as an argument "
fi 

if [ ! -d cs203 ];
then
 echo " directory was not created "
fi

mv cs203 $1

if [ -d $1 ];
then
 echo " directory name got changed to $1"
else
 echo " directory name didnt get changed "
fi 


