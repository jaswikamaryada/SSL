#!/bin/bash

echo "THE ORIGINAL FILE IS:"
cat data1.txt

sed '5,10s/Make/Makefile/g' data1.txt

echo "FILE AFTER REPLACING Make WITH Makefile from 5th to 10th LINES:"
cat data1.txt

