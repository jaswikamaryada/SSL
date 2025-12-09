#!/bin/bash

echo "BEFORE APPENDING:"
cat data1.txt

echo "AFTER APPENDING:"
sed -i '/Linux and MacOS/a Makefiles are essential for compilation' data1.txt
cat data1.txt

