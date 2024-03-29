#!/bin/bash
# This script fetches RFC files and prints data.
# Ej 22.03.2023

echo "Script nr5: Fetch RFC files"

if [[ $# -eq 0 ]]; then
  echo "Please provide the number of RFC files to fetch as a command line argument."
  exit 1
fi

# Get nr of files from cli:
NR_FILES=$1

# Set first RFC number (random)
FIRST=$(($RANDOM % 9411 + 1))

echo "Let's fetch information for $NR_FILES, starting from RFC $FIRST"

# Save the number of RFC files to fetch from the command line argument
num_rfc_files=$1

# Get the list of RFC numbers
LAST=$(($FIRST + $num_rfc_files))

# Loop through the list of RFC numbers and fetch each file
for ((rfc=$FIRST; rfc<$LAST; rfc++)) do
  # Fetch the RFC file and save it to a temporary file
  curl -s "https://www.ietf.org/rfc/rfc${rfc}.txt" -o rfc${rfc}.txt

  # Get the title of the RFC file
  title=$(egrep -m1 '^\s{1,40}\S' rfc${rfc}.txt | sed 's/^[[:space:]]*//')

  # Check if the title starts with <!doctype html>
  if [[ $title == "<!doctype html>"* ]]; then
    echo "RFC${rfc}: HTTP Status Code: 404 Page Not Found"
  else
    # Get the number of lines in the RFC file
    num_lines=$(wc -l rfc${rfc}.txt | awk '{print $1}')

    # Print out the title and number of lines
    echo "RFC${rfc}: $title ($num_lines lines)"
  fi

  # Remove the temporary file
  rm rfc${rfc}.txt
done

# End of file
