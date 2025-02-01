#!/bin/bash

if [ -f "$1" ]; then
    line_count=$(wc -l < "$1")
    echo "The file '$1' has $line_count lines."
elif [ -z "$1" ]; then
    echo "No file provided"
fi
