#!/bin/bash

read n

if (( n >= 1 && n <= 500 )); then
    sum=0
    for ((i=0; i<n; i++)); do
        read num
        (( num >= -10000 && num <= 10000 )) && ((sum+=num))
    done
    average=$(awk -v sum=$sum -v n=$n 'BEGIN {printf "%.3f", sum/n}')
    echo $average
fi
