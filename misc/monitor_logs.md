# Monitor Log Files for Errors in Real-Time

This script monitors logs in real-time for error messages which is very important for diagosing issues.

Script: monitor_logs.sh
#!/bin/bash

LOG_FILE="/var/log/syslog"

echo "Monitoring $LOG_FILE for errors..."
tail -f $LOG_FILE | grep --line-buffered -i "error"
- Uses tail -f to follow the log file in real-time.
- Pipes output to grep -i “error” to filter only error messages.

## Usage:
chmod +x monitor_logs.sh
./monitor_logs.sh

Provides instant visibility into system errors as they happen.