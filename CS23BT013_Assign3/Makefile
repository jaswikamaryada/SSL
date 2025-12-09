#!/bin/bash

all: say_hello run_program clean

say_hello:
	@echo "This Makefile will run a simple calculator program"

run_program: calculator
	@echo "gcc -Wall -o calculator calculator.c"
	@echo "Running the calculator program..."
	@echo ./calculator
	@./calculator
	
my_program: calculator.c
	gcc -o calculator calculator.c
		
clean:
	@rm -f my_program
