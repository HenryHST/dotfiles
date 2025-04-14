# Check Network Connectivity & Latency

This script helps check connectivity and latency because network issues can both degrade performance and cause downtime.

Script: network_check.sh
#!/bin/bash

TARGET="8.8.8.8"

echo "Checking connectivity to $TARGET..."
ping -c 4 $TARGET

echo -e "\nChecking DNS resolution..."
nslookup google.com | grep "Address"

echo -e "\nChecking active network connections..."
netstat -ant | grep ESTABLISHED

- Pings Google’s public DNS (8.8.8.8) to check connectivity.
- Uses nslookup to verify DNS resolution is working.
- Uses netstat -ant to list active network connections.

## Usage:

chmod +x network_check.sh
./network_check.sh

Helps quickly diagnose network issues, like DNS failures, packet loss, or a misconfigured network.