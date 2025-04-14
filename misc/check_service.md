# Check If a Critical Service Is Running

If a key service (e.g., Nginx, MySQL, Docker) stops, this script alerts you.

Script: check_service.sh
#!/bin/bash

SERVICE="nginx"

if systemctl is-active --quiet $SERVICE; then
    echo "$SERVICE is running."
else
    echo "$SERVICE is NOT running!"
fi

- systemctl is-active — quiet checks if the service is active.
- If it’s not running, it alerts the user.

## Usage:
chmod +x check_service.sh
./check_service.sh

Quickly tells you if a critical service is down, so you can avoid unnecessary downtime.