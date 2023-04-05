#!/bin/bash
# A simple demonstration about CLI arguments.
# Ej 22.03.2023

echo "Script nr2: Command line arguments script"

# Check if two arguments are provided
if [ $# -ne 2 ]
then
  echo "Usage: $0 <num1> <num2>"
  exit 1
fi

# Get the two numbers from command line arguments
num1=$1
num2=$2

# Calculate the sum, difference, product, and division of the numbers
sum=$(($num1 + $num2))
diff=$(($num1 - $num2))
prod=$(($num1 * $num2))
div=$(($num1 / $num2))

# Print out the results
echo "Sum: $sum"
echo "Difference: $diff"
echo "Product: $prod"
echo "Division: $div"

# End of file
