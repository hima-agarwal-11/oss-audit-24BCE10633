#!/bin/bash
# Script 4: Log File Analyzer
# Author: Hima Agarwal | Reg No: 24BCE10633
# Course: Open Source Software | Software Choice: Git

# Accept log file and keyword as command line arguments
LOGFILE=$1
KEYWORD=${2:-"error"}
COUNT=0

echo "======================================"
echo "   Log File Analyzer"
echo "======================================"

# Check if a file argument was provided
if [ -z "$LOGFILE" ]; then
    echo "Usage: ./script4_log_analyzer.sh <logfile> [keyword]"
    echo "Example: ./script4_log_analyzer.sh /var/log/dpkg.log warning"
    exit 1
fi

# Check if file exists
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found."
    exit 1
fi

# Check if file is empty
if [ ! -s "$LOGFILE" ]; then
    echo "Warning: File $LOGFILE is empty."
    exit 1
fi

echo "Scanning : $LOGFILE"
echo "Keyword  : $KEYWORD"
echo "--------------------------------------"

# Read file line by line and count keyword matches
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "Keyword '$KEYWORD' found $COUNT times"
echo ""
echo "Last 5 matching lines:"
echo "--------------------------------------"
# Print last 5 lines containing the keyword
grep -i "$KEYWORD" "$LOGFILE" | tail -5
echo "======================================"
