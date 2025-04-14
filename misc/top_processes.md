# Find Processes Using the Most CPU & Memory

If a server is slow, finding which processes are consuming the most resources is very important.

Script: top_processes.sh
#!/bin/bash
echo "Top 5 CPU-Consuming Processes:"
ps -eo pid,comm,%cpu --sort=-%cpu | head -n 6
echo -e "\nTop 5 Memory-Consuming Processes:"
ps -eo pid,comm,%mem --sort=-%mem | head -n 6

- ps -eo lists all processes with their PID (Process ID), command name, and CPU/memory usage.
- The — sort=-%cpu and — sort=-%mem options sort by highest usage.
- head -n 6 displays the top 5 processes (the first row is the header).
## Usage:
chmod +x top_processes.sh
./top_processes.sh

Quickly identifies which processes are hogging system resources, which lets you know what action to take quickly(e.g., restarting a stuck process).