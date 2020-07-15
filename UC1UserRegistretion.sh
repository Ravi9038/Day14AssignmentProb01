#!/bin/bash -x

read -p "Enter the First Name : " firstName

pattern=^[A-Z]{3}

if [[ $firstName =~ $pattern ]]
then
	echo Found
else
	echo "Not Found"
fi
