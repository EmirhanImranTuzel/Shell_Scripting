#!/bin/bash

# Function: Check if the given number is within the range of 1 to 100
function check_range {
    local num=$1
    if [[ $num -ge 1 ]] && [[ $num -le 1000 ]]; then
        return 0  # Successfully checked
    else
        return 1  # Not within the range of 1 to 100
    fi
}

# Read input
read -p "Enter the length of side X: " X
read -p "Enter the length of side Y: " Y
read -p "Enter the length of side Z: " Z

# Check if the side lengths are within the range
if check_range $X && check_range $Y && check_range $Z; then
    # Can a valid triangle be formed?
    if [[ $((X + Y)) -gt $Z ]] && [[ $((X + Z)) -gt $Y ]] && [[ $((Y + Z)) -gt $X ]]; then
        # Check the type of triangle
        if [[ $X -eq $Y ]] && [[ $Y -eq $Z ]]; then
            echo "EQUILATERAL"
        elif [[ $X -eq $Y ]] || [[ $Y -eq $Z ]] || [[ $X -eq $Z ]]; then
            echo "ISOSCELES"
        else
            echo "SCALENE"
        fi
    else
        echo "Invalid input: The sum of any two sides must be greater than the third side."
    fi
else
    echo "Invalid input: Side lengths must be between 1 and 1000."
fi

<<comment This script prompts the user to enter the lengths of three sides of a triangle,
checks if the lengths are within the specified range, and then determines
whether the triangle is scalene, isosceles, or equilateral.
comment
