#!/bin/bash
# Word Frequency Counter

# Write a script that reads a file and prints the top 5 most repeated words in that file,
# along with the number of times each word appears

#!/bin/bash

# Check if a filename is provided as an argument
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 filename"
    exit 1
fi

filename="$1"

# Check if the file exists
if [ ! -f "$filename" ]; then
    echo "Error: File '$filename' not found."
    exit 1
fi

echo "Top 5 most repeated words in '$filename':"

# The core command pipeline:
grep -oE '[[:alpha:]]+' "$filename" | tr '[:upper:]' '[:lower:]' | sort | uniq -c | sort -nr | head -n 5
