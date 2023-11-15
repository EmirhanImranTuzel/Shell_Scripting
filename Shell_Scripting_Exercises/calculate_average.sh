#!/bin/bash

read n
sum=0

if (( n >= 1 && n <= 500 )); then
    for ((i=0; i<n; i++)); do
        read num
        (( num >= -10000 && num <= 10000 )) && ((sum+=num))
    done
fi

average=$(echo "scale=3; $sum / $n" | bc)
echo $average
