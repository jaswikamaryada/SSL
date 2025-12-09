#!/bin/bash

echo " displaying lines from 2nd to 4th in the current directory that starts with 'script' :-"
ls -l | grep 'script' | head -n 4 | tail -n 3 
