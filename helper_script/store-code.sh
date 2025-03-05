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
NEW_DIR="$TARGET_DIR/$PARAM_VALUE"

# Create the new directory
mkdir -p "$NEW_DIR"

# Copy src into the new directory
cp -r "$SRC_DIR" "$NEW_DIR"

echo "Successfully copied $SRC_DIR to $NEW_DIR"

