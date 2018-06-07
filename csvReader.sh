#!/bin/bash
input="input.csv"
output="output.txt"

if [ ! -f "$input" ]; then
	echo "$input not found."
fi
if [ -f $output ]; then
	rm -f $output
fi

sed -n -e 's/, [^ ]*/;/w  result.txt' input.csv
sed -i '' '$ s/.$//' result.txt
tr -d '\n' < result.txt >> $output

rm -f result.txt
