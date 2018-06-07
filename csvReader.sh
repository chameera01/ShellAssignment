#!/bin/bash
input="input.csv"
output="output.txt"

if [ ! -f "$input" ]; then
	echo "$input not found."
fi
if [ -f $output ]; then
	rm -f $output
fi


