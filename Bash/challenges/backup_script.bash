#!/bin/bash

MAIN_DIRECTORY="Main"
BACKUP_DIRECTORY="Backup"

mkdir -p "$BACKUP_DIRECTORY"

TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
BACKUP_NAME="backup_$TIMESTAMP.tar.gz"

tar -czf "$BACKUP_DIRECTORY/$BACKUP_NAME" "$MAIN_DIRECTORY"

ls -1t "$BACKUP_DIRECTORY" | tail -n +6 | xargs -I {} rm -f "$BACKUP_DIRECTORY/{}"

echo "Backup created: $BACKUP_DIRECTORY/$BACKUP_NAME"
