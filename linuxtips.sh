#!/bin/bash
# A script to display tip of the day
# Ej 11.04.2023
TIPDIR=/nfs/tips

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

  TIPFILE=$TIPDIR/$CURTIP.txt
  echo "=================================================="
  echo "TIP OF TODAY ($TIPFILE)"
  echo "--------------------------------------------------"
  cat "$TIPFILE"
  echo "=================================================="
  echo


  NUMTIPS=$(ls $TIPDIR/*.txt | wc -l)
  NEXT=$(( ($CURTIP % $NUMTIPS) + 1 ))

  echo "$NEXT" > ./.curtip

  read -p "Press 'j' for next tip - any other to quit: " -n 1 ANS
  CONTINUE="x$ANS"

  clear

done # main while loop

# End of file
