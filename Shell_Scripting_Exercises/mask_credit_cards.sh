#!/bin/bash

# Read input lines into an array
IFS=$'\n' read -d '' -ra input_lines

# Check the number of input lines
num_lines=${#input_lines[@]}

# Validate the number of input lines
if [[ num_lines -ge 1 && num_lines -le 20 ]]; then
    # Use sed to mask credit card numbers
    for line in "${input_lines[@]}"; do
        # Use sed to replace the first 12 digits with asterisks
        masked_line=$(echo "$line" | sed 's/[0-9]\{4\} [0-9]\{4\} [0-9]\{4\} /**** **** **** /')
        
        # Print the masked credit card number
        echo "$masked_line"
    done
else
    # Print an error message if the number of input lines is not within the valid range
    echo "Error: The number of input lines must be between 1 and 20."
fi
