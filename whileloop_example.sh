#!/usr/bin/bash 

a=7
while [ $a -gt 4 ];
do
    echo $a
    ((a--))
done

echo "Out of the loop"
