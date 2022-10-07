#!/bin/bash

header="SUCCESS"
body="This is from a bash script"

kernel=$(uname -s)
if [[ $kernel == "Darwin" ]]; then
  osascript -e "display notification \"${body:?}\" with title \"${header:?}\""
else
  notify-send -t 0 "${header:?}" "${body:?}"
fi
