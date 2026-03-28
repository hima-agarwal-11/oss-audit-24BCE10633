#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Hima Agarwal | Reg No: 24BCE10633
# Course: Open Source Software | Software Choice: Git

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "======================================"
echo "   Directory Audit Report"
echo "======================================"

# Loop through each directory and print permissions and size
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Extract permissions, owner and group using awk
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        # Get directory size, suppress permission errors
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist on this system"
    fi
done

echo ""
echo "======================================"
echo "   Git Config Directory Check"
echo "======================================"

# Check if git config directory exists and show its permissions
GIT_CONFIG="$HOME/.gitconfig"
GIT_DIR="$HOME/.git"

if [ -f "$GIT_CONFIG" ]; then
    PERMS=$(ls -l $GIT_CONFIG | awk '{print $1, $3, $4}')
    echo "Git config file found: $GIT_CONFIG"
    echo "Permissions: $PERMS"
else
    echo "No global git config found at $GIT_CONFIG"
fi

echo "======================================"
