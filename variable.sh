#!/bin/bash 

NAME="Linux admin"
echo "This is $NAME"
echo 'Hello $NAME'
echo "Today date is $(date +%F)"


#if command but testing variable to compare numbers
read -p "Enter a number: " b


if [ "$b" -gt 5 ]; then 
	echo "b is greater than 5"
	else 
		echo "b is not greater than 5"
fi 

