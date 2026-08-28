#!/bin/bash 

NAME="Linux admin"
echo "This is $NAME"
echo 'Hello $NAME'
echo "Today date is $(date +%F)"


#if command but testing variable to compare numbers
read -p "Enter a number: " a

if [ "$a" -gt 5 ]; then 
	echo "a is greater than 5"
	else 
		echo "a is not greater than 5"
fi 

