#!/bin/bash

# Check if the argument is provided
if [ $# -eq 0 ];
then
 echo " Enter the temperature value as an argumet "
fi

echo " 1.celsius to fahrenheit "
echo " 2.fahrenheit to celsius "
echo " Enter your choice "
read choice

if [ $choice -eq 1 ]; then
  f=$(echo "scale=2; (9/5) * $1 + 32" | bc)
  echo "$1°C is $f°F"
elif [ $choice -eq 2 ]; then
  c=$(echo "scale=2; (5/9) * ($1 - 32)" | bc)
  echo "$1°F is $c°C"
else
  echo "Invalid choice. Please enter 1 or 2."
fi  







