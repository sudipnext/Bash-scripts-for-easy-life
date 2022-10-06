#!/bin/bash

netstat_results=$(netstat -an)
tcp=$(echo "$netstat_results" | grep tcp)
tcp4=$(echo "$netstat_results" | grep tcp4)
tcp6=$(echo "$netstat_results" | grep tcp6)
tcp_ESTABLISHED=$(echo "$tcp" | grep -c ESTABLISHED)
tcp4_ESTABLISHED=$(echo "$tcp4" | grep -c ESTABLISHED)
tcp6_ESTABLISHED=$(echo "$tcp6" | grep -c ESTABLISHED)

echo "Type	: Total Connections : ESTABLISHED"
echo "TCP 	: 	$(( $(echo "$tcp" | wc -l) - 1 )) 	    :     $tcp_ESTABLISHED"
echo "TCP4 	: $(echo "$tcp4" | wc -l)	    :     $tcp4_ESTABLISHED"
echo "TCP6	: $(echo "$tcp6" | wc -l)	    :      $tcp6_ESTABLISHED"
