#!/bin/bash

# Loop through all files in the target directories
for dir in Images Documents Videos; do
    if [ -d "$dir" ]; then  # Check if the directory exists
        for file in "$dir"/*; do
            if [ -f "$file" ]; then  # Check if it's a regular file
                # Move each file back to the current directory
                mv "$file" .
                echo "Moved $file back to the current directory."
            fi
        done
    fi
done

