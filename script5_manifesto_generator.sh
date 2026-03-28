#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Hima Agarwal | Reg No: 24BCE10633
# Course: Open Source Software | Software Choice: Git

echo "======================================"
echo "   Open Source Manifesto Generator"
echo "======================================"
echo "Answer three questions to generate your manifesto."
echo ""

# Read user input interactively
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does freedom mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# Get current date and username for filename
DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

echo ""
echo "Generating your manifesto..."
echo ""

# Compose manifesto paragraph and write to file
echo "======================================"  > $OUTPUT
echo "   MY OPEN SOURCE MANIFESTO"           >> $OUTPUT
echo "   By Hima Agarwal | 24BCE10633"       >> $OUTPUT
echo "   Date: $DATE"                         >> $OUTPUT
echo "======================================"  >> $OUTPUT
echo ""                                        >> $OUTPUT
echo "Every day, I rely on $TOOL — a tool built freely and shared openly by" >> $OUTPUT
echo "developers who believed that knowledge belongs to everyone. To me,"    >> $OUTPUT
echo "freedom means $FREEDOM. That is the spirit that drives open source:"  >> $OUTPUT
echo "the freedom to use, study, modify, and share without restriction."    >> $OUTPUT
echo ""                                                                      >> $OUTPUT
echo "If I could build anything and share it freely, I would build $BUILD." >> $OUTPUT
echo "Because standing on the shoulders of giants means giving back to"     >> $OUTPUT
echo "the community that made your work possible in the first place."       >> $OUTPUT
echo ""                                                                      >> $OUTPUT
echo "Open source is not just a license. It is a philosophy."              >> $OUTPUT
echo "======================================"  >> $OUTPUT

echo "Manifesto saved to $OUTPUT"
echo ""
cat $OUTPUT
