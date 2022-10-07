#!/bin/bash

if [ ! -f $1 ]
then
  echo $1 does not exist!
  exit
fi

touch ${1}
MAXSIZE=$((4096*1024))

size=`du -b ${1} | tr -s '\t' ' ' | cut -d' ' -f1`

if [ ${size} -gt ${MAXSIZE} ]
then
    echo Rotating!
    timestamp=`date +%s`
    mv ${1} ${1}.$timestamp
    touch ${1}
fi
