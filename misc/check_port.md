# Check If a Port Is Open and Listening

If an application isn’t responding, it may not be listening on the correct port.

Script: check_port.sh
#!/bin/bash

PORT=80

if netstat -tulnp | grep ":$PORT " > /dev/null; then
    echo "Port $PORT is open and listening."
else
    echo "Port $PORT is NOT open!"
fi

- Uses netstat -tulnp to list all listening ports.
- Greps for the specified port and reports if it’s active.

## Usage:
chmod +x check_port.sh
./check_port.sh

Helps troubleshoot issues when services fail to bind to a port (e.g., Nginx, MySQL).