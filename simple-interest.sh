#!/bin/bash
# Simple Interest Calculator
# Author: Your Name
# This script calculates simple interest based on user input.

# Prompt user for inputs
read -p "Enter the principal amount: " principal
read -p "Enter the rate of interest (in %): " rate
read -p "Enter the time period (in years): " time

# Calculate simple interest
interest=$((principal * rate * time / 100))

# Display the result
echo "Simple Interest = $interest"
