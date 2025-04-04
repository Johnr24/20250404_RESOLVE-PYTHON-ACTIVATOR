#!/bin/bash

# This script configures your zsh environment to permanently set
# the required environment variables for DaVinci Resolve Python scripting.

ZSHRC_FILE="$HOME/.zshrc"
MARKER="# DaVinci Resolve Python Environment Variables (added by script)"

# Check if the variables are already added to avoid duplicates
if grep -q "$MARKER" "$ZSHRC_FILE"; then
    echo "DaVinci Resolve environment variables seem to be already configured in $ZSHRC_FILE."
    echo "Please check the file manually if you intended to update them."
    exit 0
fi

echo "Adding DaVinci Resolve environment variables to $ZSHRC_FILE..."

# Add the configuration lines
{
  echo "" # Add a newline for separation
  echo "$MARKER"
  echo 'export RESOLVE_SCRIPT_API="/Library/Application Support/Blackmagic Design/DaVinci Resolve/Developer/Scripting"'
  echo 'export RESOLVE_SCRIPT_LIB="/Applications/DaVinci Resolve/DaVinci Resolve.app/Contents/Libraries/Fusion/fusionscript.so"'
  echo 'export PYTHONPATH="$PYTHONPATH:$RESOLVE_SCRIPT_API/Modules/"'
} >> "$ZSHRC_FILE"

echo "Configuration added successfully."
echo "Please restart your terminal or run 'source $ZSHRC_FILE' for the changes to take effect."

exit 0