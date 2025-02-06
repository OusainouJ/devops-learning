#!/bin/bash

DIRECTORY="Disk_Usage"
THRESHOLD=100  # Set threshold in MB

USAGE=$(du -sm "$DIRECTORY" | awk '{print $1}')

if [ "$USAGE" -gt "$THRESHOLD" ]; then
    echo "Disk usage for $DIRECTORY is at $USAGE MB, higher than $THRESHOLD MB!"
else
    echo "Disk usage for $DIRECTORY is at $USAGE MB."
fi
