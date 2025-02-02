#!/bin/bash

set -e  # Exit immediately if a command exits with a non-zero status.

SRC_DIR="./src"

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
