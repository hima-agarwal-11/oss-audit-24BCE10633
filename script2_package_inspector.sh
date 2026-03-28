#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Hima Agarwal | Reg No: 24BCE10633
# Course: Open Source Software | Software Choice: Git

PACKAGE="git"

# Check if git is installed using dpkg
if dpkg -l $PACKAGE &>/dev/null; then
    echo "======================================"
    echo " Package : $PACKAGE"
    echo "======================================"
    # Display version installed on system
    VERSION=$(git --version | awk '{print $3}')
    echo "Version  : $VERSION"
    echo "License  : GPL v2 (GNU General Public License version 2)"
    echo "Summary  : Fast, scalable, distributed version control system"
else
    echo "$PACKAGE is NOT installed."
fi

# Case statement - philosophy note for each package
case $PACKAGE in
    git)
        echo ""
        echo "Philosophy: Git was born from frustration with proprietary tools."
        echo "Linus Torvalds built it in 2005 when BitKeeper revoked free access."
        echo "It now powers virtually all open source collaboration worldwide."
        ;;
    apache2)
        echo "Apache: the web server that built the open internet"
        ;;
    mysql)
        echo "MySQL: open source at the heart of millions of apps"
        ;;
    python3)
        echo "Python: a language shaped entirely by its community"
        ;;
    *)
        echo "A powerful open source tool contributing to the FOSS ecosystem"
        ;;
esac
echo "======================================"
