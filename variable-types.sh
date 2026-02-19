#/bin/bash

#Special variables

echo "All arguments passed to script: $@"
echo "Number of vars passed to script: $#"
echo "Script name: $0"
echo "Present working directory: $PWD"
echo "Who is running: $USER"
echo "Home directory of current user: $HOME"
echo "PID of the script: $$"
sleep 10 &
echo "PID of recently executed script: $!"
echo "Exit status fof the most recent executed command: $@"
