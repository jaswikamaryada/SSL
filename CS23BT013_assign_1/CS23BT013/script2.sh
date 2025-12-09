#!/bin/bash

echo "login shells are:-"
cut -d ':' -f7 /etc/passwd

echo "user names are:-"
cut -d ':' -f1 /etc/passwd

