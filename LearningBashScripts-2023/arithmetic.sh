#!/bin/bash
# Simple arithmetic operations.
# Ej 22.03.2023

# This is external file for Script nr4 functions.sh

function arithmetic_operations {

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

    echo $result
}

#End of file
