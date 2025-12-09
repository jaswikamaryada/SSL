#!/bin/bash

echo " top 2 lines that do not contain the word 'usr' are:-"
grep -v 'usr' result.txt | head -n 2

