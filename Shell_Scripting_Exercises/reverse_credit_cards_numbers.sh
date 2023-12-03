#!/bin/bash

# Read input lines into an array
IFS=$'\n' read -d '' -ra input_lines

# Check the number of input lines
num_lines=${#input_lines[@]}

# Validate the number of input lines
if [[ num_lines -ge 1 && num_lines -le 20 ]]; then
    # Use awk to reverse the ordering of segments in each credit card number
    for line in "${input_lines[@]}"; do
        # Use awk to reverse the ordering of segments
        reverse_ordered_line=$(echo "$line" | awk '{print $4, $3, $2, $1}')
        # Print the reversed credit card number
        echo "$reverse_ordered_line"
    done
else
    # Print an error message if the number of input lines is not within the valid range
    echo "Error: The number of input lines must be between 1 and 20."
fi


# #!/bin/bash

# # Read input lines into an array
# IFS=$'\n' read -d '' -ra input_lines

# # Check the number of input lines
# num_lines=${#input_lines[@]}

# # Validate the number of input lines
# if [[ num_lines -ge 1 && num_lines -le 20 ]]; then
#     # Use sed to reverse the ordering of segments in each credit card number
#     for line in "${input_lines[@]}"; do
#         # Use sed to reverse the ordering of segments
#         reverse_ordered_line=$(echo "$line" | sed -E 's/([0-9]{4}) ([0-9]{4}) ([0-9]{4}) ([0-9]{4})/\4 \3 \2 \1/')
#         # Print the reversed credit card number
#         echo "$reverse_ordered_line"
#     done
# else
#     # Print an error message if the number of input lines is not within the valid range
#     echo "Error: The number of input lines must be between 1 and 20."
# fi
