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

# Override SRC_DIR with a default Main.java file
echo "Resetting $SRC_DIR with default Main.java"

# Remove old contents of SRC_DIR
rm -rf "$SRC_DIR"

# Recreate SRC_DIR and add Main.java with default content
mkdir -p "$SRC_DIR"

cat > "$SRC_DIR/Main.java" <<EOL
public class Main {
    public static void main(String[] args) {
        System.out.println("Hello, World!");
    }
}
EOL

echo "SRC_DIR has been reset with default Main.java"
