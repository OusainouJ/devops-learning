#!/bin/bash
mkdir -p Backup
for file in Arena/*.txt; do
                mv "$file" Backup/
done
