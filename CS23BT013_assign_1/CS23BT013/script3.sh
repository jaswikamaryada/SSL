#!/bin/bash

echo "sorting files in directory based on their sizes are:-"
ls -l | sort -n -k5 
