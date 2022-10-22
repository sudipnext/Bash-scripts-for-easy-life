#!/bin/bash

echo "macos sleep is prevented until you quit this shell..."
caffeinate -i -w $$ &

# caffeinate is a built-in utility in macosx,
# -i option prevents idle sleep, 
# -w specifies the OS to wait for the process to finish
# $$ variable with the PID (Process IDentifier) of the currently running shell
# & runs this script in the background, so that you can continue running other script or not run at all. 
