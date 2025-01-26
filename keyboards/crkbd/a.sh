#!/bin/bash

# Clear existing full.txt if it exists
>full.txt

# Loop through all files in the current directory
for file in *; do
    # Skip if it's a directory or the output file itself
    if [ -f "$file" ] && [ "$file" != "full.txt" ]; then
        # Add file title
        echo "[[[${file}]]]" >>full.txt

        # Add file contents
        cat "$file" >>full.txt

        # Add a newline to separate files
        echo "" >>full.txt
    fi
done

echo "All files have been merged into full.txt"
