#!/bin/bash

# Ask the user for the password length
echo "Please enter the length of the password:"
read PASS_LENGTH

# Check if the input is a valid number
if ! [[ "$PASS_LENGTH" =~ ^[0-9]+$ ]]; then
    echo "Invalid input. Please enter a valid number."
    exit 1
fi

# Use /dev/urandom to generate random characters
# tr -dc specifies to 'tr' to Delete Complement, keeping only the characters in the specified sets
# head -c limits the output to the specified length
# export LC_CTYPE=C ensures correct character handling across different locales
export LC_CTYPE=C

password=$(< /dev/urandom tr -dc 'a-zA-Z0-9!@#$%^&*()_+=' | head -c "$PASS_LENGTH")

echo "Generated Password: $password"