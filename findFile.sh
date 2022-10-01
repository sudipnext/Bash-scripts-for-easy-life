#!/bin/bash

if [ $# != 1 ]; then
	echo "Invalid number of args! Pass only the file name to be searched in the current directory."
else
	echo "Searching for ${1} in ${PWD}"
	find -type f \( -name "${1}" -o -name "${1}.*" \)
fi
