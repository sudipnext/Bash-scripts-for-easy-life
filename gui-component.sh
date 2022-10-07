#!/bin/bash

kernel=$(uname -s)
if [[ $kernel == "Darwin" ]]; then
	osascript -e 'tell app "System Events" to display dialog "This is from a bash script"'
else
	zenity --info --text="This is from a bash script"
fi
