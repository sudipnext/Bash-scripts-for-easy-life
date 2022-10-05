#!/bin/bash

if [ $# != 1 ]; then
	echo "Invalid number of args! Pass only the file name containing list of words"
else
	filename=$1
	echo "Original list:"
	cat $filename
	echo "Reversed list:"
	sort -r $filename
fi
