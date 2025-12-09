#!/bin/bash

echo " displaying last 5 surnames in the reverse order from test.txt file and storing it in the file named newfile_7th_que.txt :-"
tail -n 5 test.txt | cut -d ' ' -f2 | tac 
tail -n 5 test.txt | cut -d ' ' -f2 | tac > newfile_7th_que.txt
