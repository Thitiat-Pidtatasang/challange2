#!/bin/bash

# Create directories if they don't exist
mkdir -p Images
mkdir -p Documents
mkdir -p Videos

# Loop through all files in the current directory
for file in *; do
    if [ -f "$file" ]; then  # Check if it's a regular file
        case "$file" in
            *.jpg|*.png|*.gif)  # For image files
                mv "$file" Images/
                ;;
            *.txt|*.pdf|*.docx)  # For document files
                mv "$file" Documents/
                ;;
            *.mp4|*.avi|*.mkv)  # For video files
                mv "$file" Videos/
                ;;
            *)  # For any other files, do nothing
                ;;
        esac
    fi
done

# Display the final directory structure
echo "Final directory structure:"
tree
