#!/bin/bash

echo " lines where 'lib' is in different colour to rest other are:-"
grep --color=always 'lib' result.txt
