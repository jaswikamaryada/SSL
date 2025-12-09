#!/bin/bash

if [ $# -ne 1 ];
then
 echo " ARGUMENTS ENTERED SHOULD BE EQUAL TO 1 "
fi

if [ ! -f $1 ];
then
 echo " it is not a file "
fi

#to check if the file contains empty lines and remove them:-
