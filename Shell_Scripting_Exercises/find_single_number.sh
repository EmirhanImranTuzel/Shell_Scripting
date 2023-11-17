#!/bin/bash

# Function to check if a number is within the specified range [0, 100]
is_valid_number() {
    (( $1 >= 0 && $1 <= 100 ))
}

# Read the number of integers
read -p "Enter an integer (odd number between 1 and 100): " n

# Validate n
if ! (($n % 2)) || (($n < 1 || $n >= 100)); then
    echo "Invalid input for n. Please enter an odd number between 1 and 100."
    exit 1
fi

# Read the array of integers
read -a arr -p "Enter $n space-separated integers between 0 and 100: "

# Validate the number of elements
if (( ${#arr[@]} != n )); then
    echo "Invalid input. Please enter exactly $n integers."
    exit 1
fi

# Validate each element in the array
for i in "${arr[@]}"; do
    if ! is_valid_number "$i"; then
        echo "Invalid input for array element. Please enter integers between 0 and 100."
        exit 1
    fi
done

# Use XOR bitwise operation to find the number that occurs only once
result=0
for i in "${arr[@]}"; do
    ((result ^= i))
done

# Print the result
echo "The number that occurs only once: $result"
