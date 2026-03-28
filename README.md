# OSS Audit Project

Name: Hima Agarwal  
Registration Number: 24BCE10633  
Course: Open Source Software  
Chosen Software: Git  

---

## About the Project

In this project, I have selected Git as my open-source software.  
Git is a version control system that helps track changes in code and allows multiple people to work together on projects.

I have written five shell scripts to demonstrate basic Linux and open-source concepts.

---

## Scripts Overview

1. script1_system_identity.sh  
   This script shows basic system details like kernel version, user, uptime, and distribution. 

2. script2_package_inspector.sh  
   This checks whether Git is installed on the system and displays its version and some details.

3. script3_disk_auditor.sh  
   This script checks crucial system directories and shows their size, permissions, and ownership. 

4. script4_log_analyzer.sh  
   This reads a log file and detects how many times a keyword (like "error") appears. 

5. script5_manifesto_generator.sh  
   This script asks a few questions and generates a simple open-source philosophy statement which are generally one word answers. 

---

## How to Run the Scripts

First, give execution permission:

chmod +x *.sh

Then run scripts like this:

./script1_system_identity.sh  
./script2_package_inspector.sh  
./script3_disk_auditor.sh  
./script4_log_analyzer.sh /var/log/dpkg.log install  
./script5_manifesto_generator.sh  

---

## Requirements

- Linux (Ubuntu via WSL)
- Bash shell
- Git installed
- dpkg (for package checking)

---

## Note

All scripts are tested on Ubuntu (WSL).  
Each script includes basic commands and concepts like loops, conditions, and user input.
