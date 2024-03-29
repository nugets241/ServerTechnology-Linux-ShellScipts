# Learning Bash Scripts - Server Tech 2023 - Ej Sobrepena

This repository contains a collection of Bash scripts for various tasks related to server technologies. Each script is briefly described below:

## Script nr1: Variables Experiment
[variables-experiment.sh](LearningBashScripts-2023/variables-experiment.sh)

This script demonstrates how to use variables in a Bash script. It defines three static variables, prints them out, joins them together, calculates their sum, and prints it out.

## Script nr2: Command Line Arguments
[cli-arguments.sh](LearningBashScripts-2023/cli-arguments.sh)

This script demonstrates how to use command line arguments in a Bash script. It checks if two arguments are provided, gets the two numbers from command line arguments, calculates the sum, difference, product, and division of the numbers, and prints out the results.

To run the script, enter the following command: `./cli-arguments.sh <number1> <number2>`

## Script nr3: Interactive Input
[interactive-in.sh](LearningBashScripts-2023/interactive-in.sh)

This script demonstrates how to get input interactively from the user in a Bash script. It prompts the user to enter two integers, checks if the input is valid, calculates the sum, difference, product, and division of the numbers, and prints out the results.

To run the script, enter the following command: `./interactive-in.sh`

## Script nr4: Functions
[functions.sh](LearningBashScripts-2023/functions.sh)

This script demonstrates how to use functions and combines the scripts from #2 and #3 so that arguments can be given as parameters or read interactively. It includes the `arithmetic_operations` function from an external file ([arithmetic.sh](LearningBashScripts-2023/arithmetic.sh)). This script also calculates the sum, difference, product, and division of the numbers, and prints out the results.

To run the script, enter the following command: `./functions.sh <number1> <number2>` or `./functions.sh`

## Script nr5: RFC Fetcher
[fetch-rfcs.sh](LearningBashScripts-2023/fetch-rfcs.sh)

(Description of fetch-rfcs.sh script goes here)

Please ensure to follow the instructions in each script's comments to understand how to use them correctly.