#!/bin/bash

if [ $# -ne 1 ];
then 
 echo " number of arguments entered should be equal to 1 "
fi

echo " reversed string is "
echo $1 | rev
