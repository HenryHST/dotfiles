#!/bin/bash
echo "Top 5 CPU-Consuming Processes:"
ps -eo pid,comm,%cpu --sort=-%cpu | head -n 6
echo -e "\nTop 5 Memory-Consuming Processes:"
ps -eo pid,comm,%mem --sort=-%mem | head -n 6