#!/bin/bash

# Paths to search for screenshots. Edit these paths as needed.
directories=("$HOME/Desktop" "$HOME/Downloads")

# Loop through each directory
for dir in "${directories[@]}"; do
    echo "Searching in: $dir"
    # Find and delete files starting with "Screenshot"
    find "$dir" -type f -name "Screenshot*" -exec echo Deleting: {} \; -exec rm {} \;
done

echo "Done."

