#!/bin/bash
# This script sorts the lines of the 'input.txt' file based on the second column in descending numerical order.

# The 'sort' command is used with the following options:
# -k2,2: Sort based on the second field.
# -n: Perform a numerical sort.
# -r: Reverse the order, sorting in descending order.
# -t$'\t': Set the field delimiter to a tab character.

sort -k2,2 -n -r -t$'\t' input.txt

# The sorted output will be displayed on the terminal.
