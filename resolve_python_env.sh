#!/bin/bash

# Set environment variables for DaVinci Resolve Python Scripting on macOS

export RESOLVE_SCRIPT_API="/Library/Application Support/Blackmagic Design/DaVinci Resolve/Developer/Scripting"
export RESOLVE_SCRIPT_LIB="/Applications/DaVinci Resolve/DaVinci Resolve.app/Contents/Libraries/Fusion/fusionscript.so"
export PYTHONPATH="$PYTHONPATH:$RESOLVE_SCRIPT_API/Modules/"

echo "DaVinci Resolve Python environment variables set."
echo "RESOLVE_SCRIPT_API: $RESOLVE_SCRIPT_API"
echo "RESOLVE_SCRIPT_LIB: $RESOLVE_SCRIPT_LIB"
echo "PYTHONPATH: $PYTHONPATH"

# You can source this script in your terminal like this:
# source resolve_python_env.sh