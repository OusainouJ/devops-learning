#!/bin/bash
directory="$1"
files=()

for file in "$directory"/*.txt; do
  [ -f "$file" ] || continue
  files+=("$(stat -c%s "$file") $file")
done

echo"%s\n" "${files[@]}" | sort -n
