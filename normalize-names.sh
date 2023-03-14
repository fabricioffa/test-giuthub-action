#!/usr/bin/env zsh

if [ $# -eq 0 ]; then
  echo "Usage: $0 path"
  exit 1
fi

# Check if the given path exists and is a directory.
if [ ! -d "$1" ]; then
  echo "Error: '$1' is not a valid directory."
  exit 1
fi

# Iterate through all the files in the directory and rename them to kebab-case.
for file in "$1"/**; do
  if [ -f "$file" ]; then
    # Remove spaces, replace underscores with dashes, and convert to lower case.
    newname=$(echo "$file" | tr '[:upper:]' '[:lower:]' | tr ' ' '-' | tr '_' '-')
    if [ "$newname" != "$file" ]; then
      mv -v "$file" "$newname"
    fi
  fi
done

exit 0
