#!/bin/bash

echo " displaying surnames in reverse sequemce of test.txt file"
cut -d ' ' -f2 test.txt | tac
