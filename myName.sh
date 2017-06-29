#!/bin/bash

echo "Enter a Number: "
read myNum

numLen=`echo $myNum | wc -c`
if [ $myNum -le 10 ]
then
	echo "$myNum is Less then 10"
else
	echo "$myNum is More than 10"
fi

echo "Length of the string is " $myNum