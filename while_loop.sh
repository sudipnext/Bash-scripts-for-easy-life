#!/bin/bash
x=1
while [ $x -le 5 ]
do
  echo "iteration no $x"
  x=$(( $x + 1 ))
done
