#!/bin/bash

# Generate random values for 'a' and 'b' in the range [-100, 100]
a=$((RANDOM % 201 - 100))
while true; do
    b=$((RANDOM % 201 - 100))
    # Make sure 'b' is not equal to 0 to avoid division by zero
    if [ "$b" -ne 0 ]; then
        break
    fi
done

# Display the generated values
echo "a = $a"
echo "b = $b"

# Perform arithmetic operations
sum=$((a + b))
difference=$((a - b))
product=$((a * b))

# Use 'bc' (a command-line calculator) to calculate the quotient (division)
quotient=$(bc -l <<< "$a / $b")

# Display the results of the operations
echo "Sum: $sum"
echo "Difference: $difference"
echo "Product: $product"
echo "Quotient: $quotient"

<<comment1

Here's a breakdown of what the script does:

- It starts with the shebang (#!/bin/bash) to specify that this is a Bash script.

- Random values for 'a' and 'b' are generated using the RANDOM variable and the modulo operator (%). In the context of this script,
RANDOM generates a random integer, and % 201 is used to limit the range of generated numbers.
RANDOM generates a random integer between 0 and a large positive number (typically 32767).
% 201 is used to constrain this random number within a specific range. The result of this operation will be an integer between 0 and 200, inclusive.
Finally, - 100 is subtracted from the result to shift the range from [0, 200] to [-100, 100]. This ensures that 'a' and 'b' fall within the desired range of [-100, 100].
So, 'a' and 'b' are generated as random integers within the range [-100, 100].

- The script displays the values of 'a' and 'b' using echo.

- It performs four arithmetic operations:

sum stores the sum of 'a' and 'b'.
difference stores the difference between 'a' and 'b'.
product stores the product of 'a' and 'b'.
quotient is calculated using the bc command, which performs the division of 'a' by 'b' and stores the result.
    bc: bc is a command-line calculator that is used for performing various mathematical operations.
    -l: This option tells bc to use the standard math library, which allows for more advanced mathematical operations, including decimal divisions.
    <<< "$a / $b": This part of the code uses a "here string" (<<<) to pass the division operation as input to bc. The variables a and b are divided, and the result is computed by bc.

-Finally, the script displays the results of the arithmetic operations using echo.

When you run this script, it will generate random values for 'a' and 'b', perform the specified arithmetic operations, and display the results on the terminal.
comment1

<<comment2
- Difference between $((...)) and $(...)

$((...)): Arithmetic Operations

The $((...)) structure is used in Bash for performing arithmetic operations. It contains mathematical expressions, and the result is returned as an integer.
Example: The statement sum=$((3 + 5)) assigns the sum of 3 and 5 to the variable sum.
$(...): Command Substitution

The $(...) structure is used in Bash to execute commands and capture their output as text. The enclosed commands are executed, and their output is returned as a string.
Example: The statement date_str=$(date) assigns the output of the date command to the variable date_str.
These two structures serve different purposes, so they should be used carefully. 
If you need to perform arithmetic operations, use $((...)). If you need to run another command and capture its output, use $(...).
Keep in mind that $((...)) is suitable for arithmetic operations only and doesn't produce text output, so their functions are different.
comment2
