#!/bin/bash

echo "Testing disk write speed..."
dd if=/dev/zero of=/tmp/testfile bs=1M count=500 oflag=direct

echo -e "\nTesting disk read speed..."
dd if=/tmp/testfile of=/dev/null bs=1M count=500