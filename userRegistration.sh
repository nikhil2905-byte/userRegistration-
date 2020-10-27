#!/bin/bash -x
echo "Welcome to User Registration Problem"

validateFirstName(){
read -p "Enter FirstName:" firstName
firstNamePattern="^[A-Z][a-zA-Z]{2,}$"
    if [[ $firstName =~ $firstNamePattern ]];
    then
        echo "First Name is valid"
    else
        echo "First Name is invalid"
    fi
}
validateFirstName $firstName

validateLastName(){
read -p "Enter Last Name:" lastName
lastNamePattern="^[A-Z][a-zA-Z]{2,}$"
    if [[ $lastName =~ $lastNamePattern ]];
    then
        echo "Last Name is valid"
    else
        echo "Last Name is invalid"
    fi
}

validateLastName $lastName

