#!/bin/bash

TARGET="8.8.8.8"

echo "Checking connectivity to $TARGET..."
ping -c 4 $TARGET

echo -e "\nChecking DNS resolution..."
nslookup google.com | grep "Address"

echo -e "\nChecking active network connections..."
netstat -ant | grep ESTABLISHED