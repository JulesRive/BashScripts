#!/bin/bash
#This script will print out the l ligns after the first occurrence of the e regex, in the f file
# arguments : $1 = file name.  $2= expression. $3= number of ligns
l=`egrep -n $2 $1 | cut -d':' -f1 | head -1`
cat $1 | tail -n +$l | head -$3
