#!/bin/bash

# Prompt the user to enter the number of terms
echo "Enter the number of terms for the Fibonacci series:"
read n

# Initialize the first two Fibonacci numbers
f1=0
f2=1

# Print the first two numbers if the number of terms is 2 or more
echo "The Fibonacci series is:"
if [ $n -ge 1 ]; then
    printf "%d " "$f1"
fi
if [ $n -ge 2 ]; then
    printf "%d " "$f2"
fi

# Generate the remaining terms
i=2
while [ $i -lt $n ]; do
    # Calculate the next term (using modern arithmetic syntax)
    f3=$((f1 + f2))
    
    # Print the next term
    printf "%d " "$f3"
    
    # Update f1 and f2 for the next iteration
    f1=$f2
    f2=$f3
    
    # Increment the counter
    i=$((i + 1))
done

# Print a newline character at the end for better formatting
echo ""
