## Script nr1: Variables experiments script

"variables-experiment.sh"

This script demonstrates how to use variables in a Bash script. It defines three static variables, prints them out, joins them together, calculates their sum, and prints it out.

## Script nr2: Command line arguments script

"cli-arguments.sh"

This script demonstrates how to use command line arguments in a Bash script. It checks if two arguments are provided, gets the two numbers from command line arguments, calculates the sum, difference, product, and division of the numbers, and prints out the results.

## Script nr3: Interactive input

"interactive-in.sh"

This script demonstrates how to get input interactively from the user in a Bash script. It prompts the user to enter two integers, checks if the input is valid, calculates the sum, difference, product, and division of the numbers, and prints out the results.

## Script nr4: Functions

"functions.sh"

This script demostrates how to use functions and combines the scripts nr2 and nr3 so that arguments can be given as parameters or read interactively. It includes arithmetic_operations function from external file (arithmetic.sh). This script also calculates the sum, difference, product, and division of the numbers, and prints out the results.

## Script nr4: RFCs

"fetch-rfcs.sh"

This script fetches RFC files from (https://www.ietf.org/rfc/rfc{}.txt) and prints data. Fetches N number of RFC files (N from command line argument), starting from random number then print out the title of the RFCs and number of lines in the RFC. Some files have the status of 404 e.g. rfc8 and rfc9. If that's the case the script will print "HTTP Status Code: 404 Page Not Found" in the place of title and number of lines.

