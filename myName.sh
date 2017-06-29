#!/bin/bash

myName=""
while [[ ! $myName =~ ^[A-Za-z]+$ ]]
do
	read -p "Please Enter Your Name: " myName
	if [[ ! ${myName} -ge 2 ]] 
	then
		read -p "Please Keep your name over 2 Characters: " myName
	elif [[ ! ${myName} -le 25 ]] && unset myName
	then
		read -p "Please Keep your name under 25 Characters: " myName
	fi
done

echo "Hello $myName!"

myNum=""

# Checking if it is a number
while [[ ! $myNum =~ ^[0-9]+$ ]]
do
	# If it is not a number or does not fall within the range it will display this
	read -p "Please Enter a Number Between 5 - 100: " myNum

	# unset resets the variable to re input a new number in the variable
	! [[ ${myNum} -ge 5 && ${myNum} -le 100  ]] && unset myNum

	# Check if number is even
	while [[ ! $((myNum%2)) -eq 0 ]]; do
		unset myNum
		read -p "Please enter an Even Number: " myNum
	done
done
# Count by 2
for ((i=2; i<=myNum; i+=2)); do
    echo $i
done

echo "Congratulations your number is $myNum!"
