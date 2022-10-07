#!/bin/bash

echo "
Time taken by 1 sleep: "
time sleep 1

echo "
Time taken by 2 sleeps: "
time ( sleep 1 & sleep 1 )

echo "
Time taken by 3 sleeps: "
time ( sleep 1 & sleep 1 & sleep 1 )

echo "
All three are similar, because only the last sleep is executed in
the current thread rest before it in each command are executed in different
threads/processes/sub-shells. Extra increase in time is due to creating new
sub-shells/threads and assigning the process to it."
