#!/bin/bash

read -p "Enter your name: " myName

if [ `echo $myName | wc -c` -le 1 ]
then
	echo "Please fill out your name"
	continue
else
	echo "Hello $myName!" 
fi

read -p "Enter a number: " count


