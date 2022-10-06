#!/bin/bash
#
# Expand tabs to four spaces with find, expand, and sponge.
#
# usage :- ./tabs2space file.txt

find ./ -iname "$1" -type f -exec bash -c 'expand -t 4 "$0" | sponge "$0"' {} \;
