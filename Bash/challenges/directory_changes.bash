#!/bin/bash

MONITOR_DIRECTORY="Directory_Changes"
LOG_FILE="directory_monitor.log"

mkdir -p "$MONITOR_DIRECTORY"

PREVIOUS_STATE=$(find "$MONITOR_DIRECTORY" -type f -printf "%p %T@\n")

echo "Monitoring directory: $MONITOR_DIRECTORY"
echo "Logging changes to: $LOG_FILE"

while true; do
    CURRENT_STATE=$(find "$MONITOR_DIRECTORY" -type f -printf "%p %T@\n")

    if [ "$PREVIOUS_STATE" != "$CURRENT_STATE" ]; then
        echo "$(date '+%Y-%m-%d %H:%M:%S') - Change detected in $MONITOR_DIRECTORY" >> "$LOG_FILE"
        PREVIOUS_STATE="$CURRENT_STATE"
    fi

    sleep 60 
done
