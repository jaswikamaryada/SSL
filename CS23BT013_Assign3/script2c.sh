#!/bin/bash

echo "THE ONLY LINES CONTAINING THE WORD Compilation ARE:"
sed -n '/compilation/p' data1.txt
