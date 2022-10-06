#!/bin/bash

sleep 1 &
echo "Running (sleep 1 command) with PID: ${!}"
sleep 2 &
echo "Running (sleep 2 command) with PID: ${!}"
sleep 3 &
echo "Running (sleep 3 command) with PID: ${!}"
sleep 4 &
echo "Running (sleep 4 command) with PID: ${!}"
sleep 5 &
echo "Running (sleep 5 command) with PID: ${!}"

echo "
This script should take atleast 15(=5+4+3+2+1) seconds to execute,
since it has 5 sleep statements with increasing time from 1 second
to 5 seconds, but it will take much less time than that.. 
This proves that the sleep process were running on different threads.
The shown time will to create multiple threads (sub-shells)."
