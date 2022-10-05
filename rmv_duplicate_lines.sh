#!/bin/bash

if [ $# != 1 ]; then
	echo "Invalid number of args!"
else
	num_lines=$(wc -l < ${1})
	echo "There are $num_lines lines in ${1} before removing duplicates."
	
	echo "Removing duplicate lines from ${1}."
	awk '!x[$0]++' ${1} > updated_${1}
	
	num_lines=$(wc -l < updated_${1})
	echo "There are $num_lines lines in updated_${1} after removing duplicates."
fi