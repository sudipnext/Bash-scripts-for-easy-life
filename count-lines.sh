#!/bin/bash

lines=$(wc -l "$1" | awk 'NR==1{print $1}')

echo "You have $lines lines in $1"
