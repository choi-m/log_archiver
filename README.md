# log_archiver
A log archive tool that runs in the commandline. See README for more in-depth explanation of this project and its utilites.

## Usage: 
- download log.sh 
- open a new terminal session

## Features:
- Returns a .txt file containing the list of files saved and their data types, the name of the directory and time at which the archive was created is included in the title of the compressed folder's name.

cd to the directory in which this script is saved (called log.sh).
```bash
cd /home/yourname/Downloads
```
- Make the script executable
```bash
chmod +x log.sh
```
- Execute the command:
```bash
./log.sh
```
## System Requirements:
- Must run on unix-based system (like Linux mint, Debian, Ubuntu, [can be run on mac](https://stackoverflow.com/questions/733824/how-to-run-a-shell-script-on-a-unix-console-or-mac-terminal)



The outputted text file containing a list of all files in the directory you provided will remain in that directory, the compressed archive will be found in the directory where you saved the script (for example, /home/yourname/Downloads).



