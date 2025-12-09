#!/bin/bash

if [ "$#" -ne 1 ]; then
  echo "Error"
fi

directory=$1

if [ ! -d "$directory" ]; then
  echo " '$directory' is not a valid directory."
fi

find "$directory" -type f -exec du -h {} + 2>/dev/null | sort -rh | head -n 5 | while read -r size file; do
  abs_path=$(realpath "$file")
  owner=$(ls -ld "$file" | awk '{print $3}')
  modified_date=$(ls -ld "$file" | awk '{print $6, $7, $8}')


  echo "File: $file"
  echo "Size: $size"
  echo "Absolute Path: $abs_path"
  echo "Owner: $owner"
  echo "Last Modified: $modified_date"
  echo "-----------------------------"
done

