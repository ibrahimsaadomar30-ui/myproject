#!/bin/bash
# Simple Interest Calculator
# This script calculates simple interest based on user input.
# Author: YOUR NAME
# Date: YYYY-MM-DD
# Repository: github-final-project

# Prompt user for principal amount
read -p "Enter the principal amount (P): " principal

# Prompt user for rate of interest
read -p "Enter the annual rate of interest (R) in %: " rate

# Prompt user for time period
read -p "Enter the time period (T) in years: " time

# Validate input: check if numeric
if ! [[ "$principal" =~ ^[0-9]+([.][0-9]+)?$ ]] || ! [[ "$rate" =~ ^[0-9]+([.][0-9]+)?$ ]] || ! [[ "$time" =~ ^[0-9]+([.][0-9]+)?$ ]]; then
    echo "Error: Please enter valid numeric values for principal, rate, and time."
    exit 1
fi

# Calculate simple interest
interest=$(echo "scale=2; $principal * $rate * $time / 100" | bc)

# Display the result
echo "Simple Interest = $interest"

# Optional: calculate total amount
total=$(echo "scale=2; $principal + $interest" | bc)
echo "Total Amount after $time years = $total"
