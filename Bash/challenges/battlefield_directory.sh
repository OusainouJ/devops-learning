#!/bin/bash

mkdir -p Battlefield 
mkdir -p Archive

for file_creation in knights.txt red.txt archers.txt mages.txt; do
    touch Battlefield/"$file_creation"
done

if [ -f Battlefield/knights.txt ]; then
    mv Battlefield/knights.txt Archive/

fi

ls Battlefield/
ls Archive/

