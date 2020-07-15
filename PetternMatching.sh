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


#Valid Email Pattern

read -p "Enter admin email: " email

emailPattern='^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$'

if [[ "$email" =~ $emailPattern ]]
then
	echo "Email address $email is valid."
else
	echo "Email address $email is invalid."
fi
