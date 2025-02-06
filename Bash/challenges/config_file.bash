#!/bin/bash

CONFIG_FILE="config.txt"

while IFS='=' read -r KEY VALUE; do
    echo "$KEY = $VALUE"
done < "$CONFIG_FILE"