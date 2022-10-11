#!/bin/bash

files=$(ls | wc -l | awk 'NR==1{print $1}')

echo "You have $files files in this directory."
