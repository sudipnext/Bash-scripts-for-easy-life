#!/bin/bash


if [ $# -ne 1 ];
then
  echo "Usage: $0 filename";
  exit 1 
fi

filename=$1
grep -Eo "\b[[:alpha:]]+\b" "$filename" | \

awk '{ count[$0]++ }
END {printf("%-14s%s\n","Letter","Count") ;
for(ind in count)
{ printf("%-14s%d\n",ind,count[ind]); }
}'
