#!/bin/sh

# +5 for all files with size >5 bytes
# 5 for all files with size exactly 5 bytes
# -5 for all files with size <5 bytes

#  rm_n.sh
echo "The list of files are:-\n"
echo "---------------------------------------------------"
find -s $1 -type f -size $2 &&
echo "\n---------------------------------------------------\n"
while true; do
echo "\nDo you want to delete all of these files[Y/N]?  " &&
read choice &&
case $choice in
    [Yy] ) echo "Deleting all the files with size $2\n";
        find -s $1 -type f -size $2 -delete &&
        break;;
    [Nn] ) echo "exiting...";
        exit;;
    * ) echo "invalid response";;
esac
done

echo "Deleted all the files in this directory below $2 bytes"
#
#  Created by Aditya Kumar Singh(@sadityakumar9211) on 22/10/22.
#  
