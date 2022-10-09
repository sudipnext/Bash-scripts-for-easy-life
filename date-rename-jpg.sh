#!/bin/sh

for f in *.jpg ; do mv -iv "$f" "$(date -I)-$f" ; done
