#!/bin/sh

for file in calc/*
do
	./scmcalc -parse $file
done
