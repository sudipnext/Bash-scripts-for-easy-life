#!/bin/bash

if [ $# != 1 ]; then
	echo "Invalid number of args! Pass only the location of file to start text replacement."
else
	filename=$1
	read -p "Enter the search string: " search
	if [[ $search != "" ]]; then
		read -p "Enter the replace string: " replace
		echo "Replacing \`${search}\` with \`${replace}\` in ${filename}"
		sed -i "s:$search:$replace:g" $filename
	else 
		echo "Please enter a valid seach string!"
	fi
fi
