#!/bin/bash

#1)
echo "find all the files in /bin, /sbin, /usr/bin and /usr/sbin that are setuid and owned by root."
find /bin /sbin /usr/bin /usr/sbin -user root -perm -4000
echo ""
read -p "Hit any key to continue."

#2)
echo "find all files across the entire system that have setuid or setgid enabled(regarless of owner)"
find / -perm /6000
echo ""
read -p "Hit any key to continue."

#3)
echo "find all files in /var that have changed in the last 20 minutes."
find /var -mmin -20
echo ""
read -p "Hit any key to continue."

#4)
echo "find the files in /var that are regular files of 0 length"
find /var -type f -size 0
echo ""
read -p "Hit any key to continue."

#5)
echo "find all file in /dev that are not regular files and also not directories"
find /dev -not -type f -and ! -type d -exec ls -l {} \;
echo ""
read -p "Hit any key to continue."

#6)
echo "find all directories in /home that not owned by root"
echo "change their permissions to that have 711 permissions"
find /home -type d ! -user root -exec chmod 711 {} \;
echo ""
read -p "Hit any key to continue."

#7)
echo "find all regular files in /home that are not by root"
echo "change their permissions to that have 755 permissions"
find /home -type f ! -user root -exec chmod 755 {} \;
echo ""
read -p "Hit any key to continue."

#8)
echo "find all file in /etc that have changed in the last 5 days"
find /etc -mtime -5
