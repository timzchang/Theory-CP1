#!/bin/sh

for file in good/*
do
	if ./heist -parse $file > /dev/null 2>&1
	then
		echo "$file parse success: as expected"
	else
		echo "$file parse failure: incorrect result"
	fi
done

for file in bad/*
do
	if ./heist -parse $file > /dev/null 2>&1
	then
		echo "$file parse success: incorrect result"
	else
		echo "$file parse fail: as expected"
	fi
done
