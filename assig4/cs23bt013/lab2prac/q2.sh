#!/bin/bash

if [ $# -ne 1 ];
then 
 echo " inputs entered should be equal to 1 "
fi

#pathname="$1"

if [ -f $1 ];
then 
 echo " provided input is file "
 echo " File "
elif [ -d $1 ];
then 
 echo " provided input is a directory"
else
 echo " error "
fi

if [ ! -e $1 ];
then
 echo " file doesnt exists "
fi

if [ -r $1 ];
then
 echo " Readable:Yes "
else
 echo " Readable:No "
fi

if [ -w $1 ]
then
 echo " Writable:yes "
else
 echo " Writable: No "
fi

if [ -x $1 ]
then
 echo " Executable: Yes "
else
 echo " Executable: No "
fi 
