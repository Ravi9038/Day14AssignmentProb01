#!/bin/bash -x

#UseCase 1
read -p "Enter the First Name : " firstName

pattern=^[A-Z]{3}

if [[ $firstName =~ $pattern ]]
then
	echo Found
else
	echo "Not Found"
fi

#UseCase 2
read -p "Enter the last Name : " lastName

pattern=[A-Z]{3}$

if [[ $lastName =~ $pattern ]]
then
	echo Found
else
	echo "Not Found"
fi
