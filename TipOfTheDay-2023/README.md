# Tip of the Day - Server Tech 2023

This project contains two scripts, `linuxtips.sh` and `linuxtips3.sh`, which display a daily tip in the terminal. The tips are stored in text files in the `tips` directory.

## How to use the linuxtips.sh script

1. Copy the `linuxtips.sh` script and the `tips` directory where the tip files are stored to your home directory.
2. Open the `~/.bashrc` file using a text editor.
3. Add the following line to the end of the file: `~/linuxtips.sh`
4. Save the changes and exit the editor.
5. Open the file `linuxtips.sh` and change the value of "TIPDIR" to the location of the tips.
6. Save the changes and exit the editor.
7. Open a new terminal session to run the script.

The `linuxtips.sh` script displays a daily tip in the terminal. To use the script, you need to add it to your `.bashrc` file so that it runs every time you start a new terminal session. This way, you will see a new tip every time you open the terminal.

Note that if you change the location of the `linuxtips.sh` script or the directory where the tip files are stored, you will need to update the script accordingly.

## How to use the linuxtips3.sh script

1. Copy the `linuxtips3.sh` script to your home directory.
2. Open the `~/.bashrc` file using a text editor.
3. Add the following line to the end of the file: `~/linuxtips3.sh`
4. Save the changes and exit the editor.

The `linuxtips3.sh` script works similarly to `linuxtips.sh`, but it fetches the tips from a remote server instead of a local directory.

## Note

Converting the line endings of the files from CRLF to LF might be needed for the scripts to work properly on Linux systems.
