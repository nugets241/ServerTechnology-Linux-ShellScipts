# Bash Collection - Server Tech 2023 - Ej Sobrepena
This repository contains a collection of Bash scripts for various tasks related to server technologies. Below is a brief summary of each script:

## Script nr1: Variables Experiment
variables-experiment.sh

This script demonstrates how to use variables in a Bash script. It defines three static variables, prints them out, joins them together, calculates their sum, and prints it out.

## Script nr2: Command Line Arguments
cli-arguments.sh

This script demonstrates how to use command line arguments in a Bash script. It checks if two arguments are provided, gets the two numbers from command line arguments, calculates the sum, difference, product, and division of the numbers, and prints out the results.

To run the script, enter the following command: ./cli-arguments.sh <number1> <number2>

## Script nr3: Interactive Input
interactive-in.sh

This script demonstrates how to get input interactively from the user in a Bash script. It prompts the user to enter two integers, checks if the input is valid, calculates the sum, difference, product, and division of the numbers, and prints out the results.

To run the script, enter the following command: ./interactive-in.sh

## Script nr4: Functions
functions.sh

This script demonstrates how to use functions and combines the scripts from #2 and #3 so that arguments can be given as parameters or read interactively. It includes the arithmetic_operations function from an external file (arithmetic.sh). This script also calculates the sum, difference, product, and division of the numbers, and prints out the results.

To run the script, enter the following command: ./functions.sh <number1> <number2> or ./functions.sh

## Script nr5: RFC Fetcher
fetch-rfcs.sh

This script fetches RFC files from https://www.ietf.org/rfc/rfc{N}.txt and prints out data (Change {N} with desired number). The script fetches a specified number (N) of RFC files (provided as a command line argument), starting from a random number, and prints out the title of the RFCs and number of lines in the RFC. Some files may have the status of 404 (e.g. RFC 8 and 9). If that's the case, the script will print "HTTP Status Code: 404 Page Not Found" in the place of the title and number of lines.

To run the script, enter the following command: ./fetch-rfcs.sh <N>
