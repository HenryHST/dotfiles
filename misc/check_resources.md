# Check System Resource Usage (CPU, Memory, Disk)
When a server slows down, the first thing to check is resource utilization. This script provides a quick snapshot of CPU, memory, and disk usage.
Script: check_resources.sh

#!/bin/bash

echo "==== System Resource Usage ===="
echo "CPU Usage:"
top -bn1 | grep "Cpu(s)" | awk '{print "CPU Load: " $2 + $4 "%"}'

echo "Memory Usage:"
free -h | awk 'NR==2{printf "Used: %s / Total: %s\n", $3, $2}'

echo "Disk Usage:"
df -h | awk '$NF=="/"{printf "Used: %s / Total: %s (%s)\n", $3, $2, $5}'

- Uses top to extract CPU usage.
- Uses free -h to show memory usage in human-readable format.
- Uses df -h to display disk usage, focusing on the root (/) partition.

## Usage:
'chmod +x check_resources.sh
./check_resources.sh'

Helps identify CPU spikes, memory leaks, and low disk space, which are common reasons for system slowdowns.
