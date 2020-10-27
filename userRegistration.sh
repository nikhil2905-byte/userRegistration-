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
validateFirstName

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

validateLastName

validateMail(){
    read -p "Enter mail id: " mail
    mailPattern="^[a-zA-Z0-9]+([._+-][a-zA-Z0-9]+)*@[a-zA-Z0-9]+.[a-zA-Z]{2,4}([.][a-zA-Z]{2,4})?$"
    if [[ $mail =~ $mailPattern ]]
    then
        echo "Valid mail"
    else
        echo "Invalid mail"
        echo "Try again"
        validateMail
    fi
}
validateMail

validatePhone(){
    read -p "Enter a valid phone number: " phone
    phonePattern="^(91){1}[ ][6-9]{1}[0-9]{9,9}$"
    if [[ $phone =~ $phonePattern ]]
    then
        echo "Valid phone number"
    else
        echo "Invalid phone number"
        echo "Try again"
        validatePhone
    fi
}
validatePhone

validatePassword(){
    read -p "Enter a valid password: " password
    passwordPatternLen="^.{8}"
	 passwordPatternCaps="[A-Z]+"
    if [[ $password =~ $passwordPatternLen ]] && [[ $password =~ $passwordPatternCaps ]]
    then
        echo "Valid password"
    else
        echo "Invalid pass"
        echo "Try again"
        validatePassword
    fi
}
validatePassword
