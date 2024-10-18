#!/bin/bash

# Check if the script is being run as root
if [[ "$EUID" -ne 0 ]]; then
  echo "This script requires sudo privileges. Please run with 'sudo'."
  exit 1
fi


# Check if the /etc directory exists
if [ ! -d "/etc" ]; then
  echo "/etc directory not found!"
  exit 1
fi

# Count files excluding directories and symlinks
file_count=$(find /etc -type f ! -type l | wc -l)

# find /etc -type f  searches for regular files in the /etc directory
# ! -type l  excludes symbolic links (since -type l specifies links, ! negates that)
# wc -l counts the number of lines in the output, giving the total number of regular files


# Output the result
echo "Total number of files in /etc (excluding directories and symlinks): $file_count"
 
