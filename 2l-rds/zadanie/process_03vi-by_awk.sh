#!/bin.bash

file='zad-fut1-input-03vi'
code='
{
	if (NF>=20) {
		for (a=1; a<=NF; a++) {
			printf $a;
		}
	}
print "--^^" NF "^^--" 
}'

echo "$code"

awk "$code" < $file

