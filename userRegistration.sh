#!/bin/bash -x
echo "Welcome to User Registration Problem"
validateFirstName(){
read -p "Enter Name:" Name
NamePattern="^[A-Z][a-zA-Z]{2,}$"
    if [[ $Name =~ $NamePattern ]];
    then
        echo "First Name is valid"
    else
        echo "First Name is invalid"
    fi
}

validateFirstName $Name


