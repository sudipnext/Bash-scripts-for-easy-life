#!/bin/bash

header="SUCCESS"
body="This is from a bash script"

kernel=$(uname -s)
if [[ $kernel == "Darwin" ]]; then
  osascript -e "display notification \"${body:?}\" with title \"${header:?}\""
else
  notify-send -u critical -t 0 -a pomo "${header:?}" "${body:?}"
fi
