#!/bin/bash

if [ $# -ne 3 ];
then
 echo " Exception:enter three arguments "
fi

orig_sentence=$1
old_word=$2
new_word=$3

echo " Original Sentence:$orig_sentence "

modified_sentence=$( echo "$orig_sentence" | sed "s/$old_word/$new_word/" ) 
echo " Modified Sentence:$modified_sentence " 


