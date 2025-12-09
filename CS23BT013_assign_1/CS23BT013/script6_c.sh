#!/bin/bash

echo " displaying lines from 4th to 8th after sorting /etc/group file"
sort /etc/group | head -n 8 | tail -n 5
