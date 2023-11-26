#!/bin/bash

# This script reads student data from the user, checks if there are exactly 3 scores,
# and displays a message if the number of scores is not equal to 3.

while IFS=' ' read -p "Enter student data: " -ra data; do
  identifier="${data[0]}"
  scores=("${data[@]:1}")
  
  # Check if the number of scores is not equal to 3
  if [ "${#scores[@]}" -ne 3 ]; then
    echo "Not all scores are available for $identifier"
  fi
done

# #!/bin/bash

# while IFS=' ' read -p "Enter student data: " -ra data; do
#   identifier="${data[0]}"
#   scores=("${data[@]:1}")
  
#   if [ "${#data[@]}" -ne 4 ]; then
#     echo "Not all scores are available for $identifier"
#   fi
# done


# #!/bin/bash

# $ awk '{
# if ($1 =="" || $2 == "" || $3 == "")
#     print "Not all scores are available for $1";
# }'



