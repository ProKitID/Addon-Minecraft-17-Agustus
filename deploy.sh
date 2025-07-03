#!/bin/bash

# Load .env file
set -o allexport
source .env
set +o allexport

# Define folder names
BP_TARGET="$DEVELOPMENT_BEHAVIOR_PACKS/${ADDON_NAME} - BP"
RP_TARGET="$DEVELOPMENT_RESOURCE_PACKS/${ADDON_NAME} - RP"

# Remove old BP
if [ -d "$BP_TARGET" ]; then
    rm -rf "$BP_TARGET" && echo "Removed old BP folder: $BP_TARGET" || echo "❌ Failed to remove BP folder: $BP_TARGET"
fi

# Remove old RP
if [ -d "$RP_TARGET" ]; then
    rm -rf "$RP_TARGET" && echo "Removed old RP folder: $RP_TARGET" || echo "❌ Failed to remove RP folder: $RP_TARGET"
fi

# Copy new BP
if cp -r ./bp "$BP_TARGET"; then
    echo "Successfully copied BP to: $BP_TARGET"
else
    echo "Failed to copy BP to: $BP_TARGET"
fi

# Copy new RP
if cp -r ./rp "$RP_TARGET"; then
    echo "Successfully copied RP to: $RP_TARGET"
else
    echo "Failed to copy RP to: $RP_TARGET"
fi