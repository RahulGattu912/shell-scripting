#!/bin/bash

# Declare and assign
fruits=("apple" "banana" "cherry")

# Access elements
echo "First fruit: ${fruits[0]}"

# Add element
fruits[3]="orange"

# Print all elements
echo "All fruits: ${fruits[@]}"

# Print indices
echo "Indices: ${!fruits[@]}"

# Length
echo "Number of fruits: ${#fruits[@]}"
