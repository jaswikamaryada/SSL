#!/bin/bash

echo " BEFORE INSERTING Start of File TO data1.txt: "
cat data1.txt

if [ -e data1.txt ];
then	
 sed -i '1i Start of File' data1.txt
fi

echo " AFTER INSERTING Start of File TO data1.txt: "
cat data1.txt
