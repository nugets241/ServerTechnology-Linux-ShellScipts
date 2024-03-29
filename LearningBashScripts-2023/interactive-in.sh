#!/bin/bash
# A simple demonstration about interactive input.
# Ej 22.03.2023

echo "Script nr3: Interactive input"

valid=false

while [ $valid == false ]
do
    echo "Please enter the first integer: "
    read num1
    if [[ $num1 =~ ^-?[0-9]+$ ]]; then
        valid=true
    else
        echo "Invalid input. Please enter an integer."
    fi
done

valid=false

while [ $valid == false ]
do
    echo "Please enter the second integer: "
    read num2
    if [[ $num2 =~ ^-?[0-9]+$ ]]; then
        valid=true
    else
        echo "Invalid input. Please enter an integer."
    fi
done

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

#End of file
