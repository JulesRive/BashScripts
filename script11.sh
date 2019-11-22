#!/bin/bash
#This script returns the number of process that the user passed in parameter is running.
i=`ps aux | egrep $1 | wc -l`

echo $1 is running $i scripts

