#!/bin/bash
# A simple demonstration about variables.
# Ej 22.03.2023

echo "Script nr1: Variables experiments script"

# Define three static variables
var1=5
var2=10
var3=15

# Print out the variables
echo "Variable 1: $var1"
echo "Variable 2: $var2"
echo "Variable 3: $var3"

# Join variables together
joined_var="$var1$var2$var3"
echo "Joined variable: $joined_var"

# Calculate the sum of the variables
sum=$((var1 + var2 + var3))
echo "Sum of the variables: $sum"

#End of file
