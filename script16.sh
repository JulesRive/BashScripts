#!/bin/bash
#This script will display integers between arg1 and arg2 recursively
i=$1
if [ $1 -lt $2 ]; then
	echo $1
	./script16.sh `expr $i + 1` $2
elif [ $1 -gt $2 ]; then
	echo $1
	./script16.sh `expr $i - 1` $2
fi
if [ $1 -eq $2 ]; then
	echo $1
fi
