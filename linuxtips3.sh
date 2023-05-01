#!/bin/bash
# A script to display tip of the day
# Ej 01.05.2023

# Enable skipping the tips - if file ~/.notips exists, exit
if [ -f .notips ]; then
  return
fi

CONTINUE='xj'
# Begin the while loop
while [ "$CONTINUE" = 'xj' ] ; do
  tty -s || exit # Check if we have interactive shell

  CURTIP=`cat ./.curtip`
  # If no value in the current index file, start from start
  if [ -z "$CURTIP" ] ; then
    CURTIP=1
  fi

  TIPFILE=https://tips.ej.ilab.fi/txt/$CURTIP.txt
  echo "=================================================="
  echo "TIP OF TODAY ($TIPFILE)"
  echo "--------------------------------------------------"
  curl $TIPFILE
  echo "=================================================="
  echo

  NEXT=$(( $CURTIP + 1 ))
  if [[ "$(curl -s https://tips.ej.ilab.fi/txt/$NEXT.txt)" != *"Topic"* ]]; then
    NEXT=1
  fi

  echo "$NEXT" > ./.curtip

  read -p "Press 'j' for next tip - any other to quit: " -n 1 ANS
  CONTINUE="x$ANS"

  clear

done # main while loop

# End of file
