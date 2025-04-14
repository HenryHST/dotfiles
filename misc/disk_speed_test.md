# Test Disk I/O Performance

This script tests disk read/write speed because slow disk performance can cause bottlenecks.

Script: disk_speed_test.sh
#!/bin/bash

echo "Testing disk write speed..."
dd if=/dev/zero of=/tmp/testfile bs=1M count=500 oflag=direct

echo -e "\nTesting disk read speed..."
dd if=/tmp/testfile of=/dev/null bs=1M count=500

- Uses dd to write and read 500MB of data to test disk speed.
- oflag=direct verifies that writes are not cached.

## Usage:
chmod +x disk_speed_test.sh
./disk_speed_test.sh

Identifies slow disk I/O, which can degrade database and application performance.