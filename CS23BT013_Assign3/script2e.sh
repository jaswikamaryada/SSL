#!/bin/bash

echo "BEFORE DELETING"
cat data1.txt

echo "AFTER DELETING"
sed -i '/Linux/d' data1.txt
sed -i '/MacOS/d' data1.txt
cat data1.txt

