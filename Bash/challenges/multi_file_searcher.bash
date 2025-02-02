#!/bin/bash

search_name="ousainou"
log_directory="logs"
log_file="$log_directory/search_results.log"


mkdir -p "$log_directory"


grep -l "$search_name" *.log > "$log_file" 2>/dev/null


echo "Files containing '$search_name':"
cat "$log_file"
