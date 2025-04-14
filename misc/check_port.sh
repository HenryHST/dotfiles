#!/bin/bash

PORT=80

if netstat -tulnp | grep ":$PORT " > /dev/null; then
    echo "Port $PORT is open and listening."
else
    echo "Port $PORT is NOT open!"
fi