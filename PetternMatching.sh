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

#valid Phone Number


read -p "Enter The Mobile Number " mobNo

passPatt='^((\+){1}91){1}[1-9]{1}[0-9]{9}$'

if [[ $mobNo =~ $passPatt ]]
then
	echo "valid"
else
	echo "Invalid"
fi

#Valid Password

read -p "Enter Pass minimum 8 char: " passKey

passPatt=^[A-Za-z]{8}

if [[ $passKey =~ $passPatt ]]
then
	echo "valid"
else
	echo "Invalid"
fi

#valid PassWord UseCase 6

read -p "Enter the password case type : " passKey

passPatt=^[A-Z][a-z]{8}

if [[ $passKey =~ $passPatt ]]
then
	echo valid
else
	echo Invalid
f

#valid password Usecase 7

read -p "Enter the PassKey : " passKey

if [[ ${#passKey} -ge 6 && "$passKey" == *[A-Z]* && "$passKey" == *[a-z]* && "$passKey" == *[0-9]* ]]
then
	echo valid
else
	echo Invalid
fi

#valid password Usecase 8

read -p "Enter the PassKey : " passKey

if [[ ${#passKey} -ge 6 && "$passKey" == *[A-Z]* && "$passKey" == *[a-z]* && "$passKey" == *[0-9]* && "$passKey" == *[\@\#\^]* ]]
then
	echo valid
else
	echo Invalid
fi


#Valid Email Sample

##!/bin/bash -x

read -p "Enter admin email: " email

emailPattern='^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$'

if [[ "$email" =~ $emailPattern ]]
then
	echo "Email address $email is valid."
else
	echo "Email address $email is invalid."
fi
