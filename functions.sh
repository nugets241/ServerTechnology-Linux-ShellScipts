#!/bin/bash
# A simple demostration about functions
# Ej 22.03.2023

echo "Script nr4: Funtions"

# Include the interactive input and arithmetic_operations function from external file
source arithmetic.sh

if [ $# -eq 2 ]; then
  # If 3 command line arguments are provided, use them for arithmetic operations
  num1=$1
  num2=$2
else
  # Otherwise, ask the user for input interactively
  valid=false

  while [ $valid == false ]
  do
    read -p "Please enter the first integer: " num1
    if [[ $num1 =~ ^-?[0-9]+$ ]]; then
        valid=true
    else
        echo "Invalid input. Please enter an integer."
    fi
  done

  valid=false

  while [ $valid == false ]
  do
    read -p "Please enter the second integer: " num2
    if [[ $num2 =~ ^-?[0-9]+$ ]]; then
        valid=true
    else
        echo "Invalid input. Please enter an integer."
    fi
  done
fi

# Call the arithmetic_operations function with the provided inputs
result=$(arithmetic_operations $num1 $num2)

# Print the result
echo "Result: $result"

#End of file
