#!/bin/bash

# Current date in YYMMDD format
current_date=$(date +%y%m%d)

# Directory containing the files
content_dir="content"
archive_dir="content/archives"

# Create the archive directory if it doesn't exist
mkdir -p "$archive_dir"

# Loop through all .md files in the content directory
for file in "$content_dir"/??????_*.md; do
    # Extract the date from the filename
    filename=$(basename "$file")
    file_date=${filename:0:6}

    # Check if the file date is less than the current date
    if [[ "$file_date" < "$current_date" ]]; then
        # Move the file to the archived directory
        mv "$file" "$archive_dir/"
    fi
done
