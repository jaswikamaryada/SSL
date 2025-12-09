#!/bin/bash

awk '
BEGIN {
        score = 0
        count = 0
      }
{
    if ($1 ~ /^[aeiouAEIOU]/ && $2 > 50) {
        print $1,$2
        score =score + $2
        count++
    }
}
END {
    if (count > 0) {
        avg = score / count
        printf "average score of students whose names start with a vowel and score more than 50 is:%.2f\n", avg
    } 
     else {
        print "there is no student with the above mentioned specifications"
    }
}
' data.txt

