#!/bin/bash

mkdir -p Arena_Boss

for i in {1..5}
do
  file="Arena_Boss/file$i.txt"
  touch "$file"

  num_lines=$((RANDOM % 11 + 10))
  for line_number in $(seq 1 $num_lines)
  do
    echo "Line $line_number in file$i.txt" >> "$file"
  done
done

echo "Files sorted by size:"
ls -lhS Arena_Boss

mkdir -p Victory_Archive

for file in Arena_Boss/*.txt
do
  if grep -q 'Victory' "$file"; then
    mv "$file" Victory_Archive/
    echo "$file moved to Victory_Archive"
  fi
done
