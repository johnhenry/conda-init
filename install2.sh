#!/bin/bash
# Default destination directory
DESTINATION="${1:-$HOME/bin}"

# Ensure destination directory exists
mkdir -p "$DESTINATION"

# Prompt user for installation directory
read -p "Install to: (${DESTINATION}) " IMMEDIATE_INPUT
DESTINATION="${IMMEDIATE_INPUT:-$DESTINATION}"

# Set target path
TARGET="${DESTINATION}/conda-init"

# Attempt to copy and set executable permissions
if cp ./conda-init.sh "$TARGET" && chmod +x "$TARGET"; then
    echo "Script successfully installed to $TARGET"
else
    echo "Failed to install script to $TARGET" >&2
    exit 1
fi
