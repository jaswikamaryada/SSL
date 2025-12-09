#!/bin/bash

if [ $# -ne 1 ];
then 
 echo " number of arguments entered should be equal to 1 "
fi

num=$1
#checking number of digits
digits=${#num}
echo " $digits "
#echo " number of digits in the entered argument are $digits"


#checking if number is armstrong or not
sum=0
while [ $num -ne 0 ];
 do
    r=$(( num % 10 ))
    n=$(( r*r*r ))
    sum=$(( sum + n ))
    num=$(( num / 10 )) 

 done

if [ $sum -eq $1 ];
then
 echo " it is an armstrong number "
else
 echo " it os not an armstrong "      	
fi
