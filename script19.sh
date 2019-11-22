#!/bin/bash
directory=1
link=1
while [ -n "$1" ]; do
	
	if [ "$1" = "-d" ]; then
		directory=0
	elif [ "$1" = "-l" ]; then
		link=0	
	elif [ -d "$1" ]; then
		if [ $directory -eq 1 ]; then
			file "$1"/*
		else file "$1"
		fi
	elif [ -h "$1" ]; then
		if [ $link -eq 1 ]; then
			file -L "$1"
		else file "$1"
		fi
	else file "$1"
	fi
	shift
done
