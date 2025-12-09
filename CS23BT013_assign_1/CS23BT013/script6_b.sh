#!/bin/bash 

echo " displaying lines from third to fifth from /etc/group file:-"
head -n 5 /etc/group | tail -n 3
