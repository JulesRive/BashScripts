#!/bin/bash
i=$1
if [ $1 -le $2 ]; then 
	for ((; i<=$2; i++))
	do 
		echo $i
	done
else 
	for (( ; i>=$2; i--))
	do
		echo $i
	done
fi
