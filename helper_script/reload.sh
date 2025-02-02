#!/bin/bash

set -e  # Exit immediately if a command exits with a non-zero status.

# Ensure a parameter is provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <directory_name>"
    exit 1
fi

PARAM_VALUE="$1"

SRC_DIR="./src"
TARGET_DIR="./CodeExamples"
SOURCE_DIR="$TARGET_DIR/$PARAM_VALUE"

# Check if the specified directory exists in CodeExamples
if [ ! -d "$SOURCE_DIR" ]; then
    echo "Error: Directory $SOURCE_DIR does not exist."
    exit 1
fi

# Clear the current src directory
rm -rf "$SRC_DIR"

# Copy the contents back to src
cp -r "$SOURCE_DIR" "$SRC_DIR"

echo "Successfully reloaded $SRC_DIR from $SOURCE_DIR"
