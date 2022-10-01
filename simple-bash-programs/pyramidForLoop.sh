# Author: PunGrumpy
# Date: 2019-10-31
# Description: Print a pyramid using for loop
# Usage: ./pyramidForLoop.sh

p=7;

for((m=1; m<=p; m++))
do
	for((a=m; a<=p; a++))
	do
	echo -ne " ";
	done
	
	for((n=1; n<=m; n++))
	do
	echo -ne "#";
	done

	for((i=1; i<m; i++))
	do
	echo -ne "#";
	done

	echo;
done
