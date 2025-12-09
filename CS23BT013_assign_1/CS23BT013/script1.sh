#!/bin/bash

echo " sorting in ascending order using numerical values in the third column:- "
sort -t: -nk3 /etc/passwd
