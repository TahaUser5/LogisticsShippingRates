#!/bin/bash
# simple-interest.sh
# This script calculates the simple interest.
#
# Usage: ./simple-interest.sh <principal> <rate> <time>
#
# Example: ./simple-interest.sh 1000 5 3
# This calculates the simple interest for a principal of 1000,
# a rate of 5%, over 3 years.

if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <principal> <rate> <time>"
    exit 1
fi

# Read the arguments
principal=$1
rate=$2
time=$3

# Calculate simple interest
interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

echo "The simple interest for a principal of $principal at a rate of $rate% for $time years is: $interest"
