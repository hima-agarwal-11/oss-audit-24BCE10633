#!/bin/bash
# Script 1: System Identity Report
# Author: Hima Agarwal | Reg No: 24BCE10633
# Course: Open Source Software | Software Choice: Git

STUDENT_NAME="Hima Agarwal"
SOFTWARE_CHOICE="Git"

KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DISTRO=$(cat /etc/os-release | grep PRETTY_NAME | cut -d= -f2 | tr -d '"')
CURRENT_DATE=$(date '+ %d %B %Y, %H:%M:%S')
GIT_LICENSE="GNU General Public License version 2 (GPL v2)"

echo "========================================"
echo "   Open Source Audit - $STUDENT_NAME"
echo "   Chosen Software : $SOFTWARE_CHOICE"
echo "========================================"
echo "Distribution : $DISTRO"
echo "Kernel       : $KERNEL"
echo "User         : $USER_NAME"
echo "Home Dir     : $HOME"
echo "Uptime       : $UPTIME"
echo "Date & Time  : $CURRENT_DATE"
echo "Git is covered under the $GIT_LICENSE"
echo "========================================"
