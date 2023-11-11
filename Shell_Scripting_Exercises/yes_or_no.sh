#!/bin/bash

echo "Enter a character (Y/y or N/n):"
read -n 1 input_char

case "$input_char" in
  [Yy])
    echo "YES"
    ;;
  [Nn])
    echo "NO"
    ;;
  *)
    echo "Invalid input. Only 'Y/y' or 'N/n' are allowed."
    ;;
esac

<<comment
#!/bin/bash: This line specifies that the script should be interpreted and executed using the Bash shell.

echo "Enter a character (Y/y or N/n):": This line prints a message to the standard output, prompting the user to enter a character.

read -n 1 input_char: The read command is used to read input from the user. -n 1 specifies that only one character should be read,
and the character entered by the user is stored in the variable input_char.

case "$input_char" in: This is a case statement that checks the value of the input_char variable and performs different actions based on its value.
Here's the breakdown of each case:

If input_char is 'Y' or 'y', it prints "YES" to the standard output.
If input_char is 'N' or 'n', it prints "NO" to the standard output.
If input_char is any other character, it prints "Invalid input. Only 'Y/y' or 'N/n' are allowed."
The script handles user input by checking if it's 'Y' or 'y' for "YES," 'N' or 'n' for "NO," and provides an error message for any other character input.
comment