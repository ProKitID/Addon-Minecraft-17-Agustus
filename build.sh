#!/bin/bash

# Load .env
set -o allexport
source .env
set +o allexport

# Create dist folder if not exists
mkdir -p dist

# Output filenames
BP_OUTPUT="dist/${ADDON_NAME} - BP.mcpack"
RP_OUTPUT="dist/${ADDON_NAME} - RP.mcpack"

# Build BP
if [ -d "./bp" ]; then
    echo "Building BP..."
    7z a -tzip "$BP_OUTPUT" ./bp/* && echo "Created $BP_OUTPUT" || echo "❌ Failed to create $BP_OUTPUT"
else
    echo "Folder 'bp' not found!"
fi

# Build RP
if [ -d "./rp" ]; then
    echo "Building RP..."
    7z a -tzip "$RP_OUTPUT" ./rp/* && echo "Created $RP_OUTPUT" || echo "❌ Failed to create $RP_OUTPUT"
else
    echo "Folder 'rp' not found!"
fi