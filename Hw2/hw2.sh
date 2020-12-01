#!/bin/sh

# learn from https://www.runoob.com/linux/linux-command-manual.html
# and https://www.tecmint.com/linux-commands-cheat-sheet/

#1)dd
# Copy a file
# converting and formatting according to flags provided on the command line
# Example Convert all the English letters in the list.txt to uppercase, and then convert it to the list_1.txt file
dd if=list.txt of=list_1.txt conv=ucase

#2)find
# search for files in a directory as well as its sub-directories
# It searches for files by attributes 
# Example list all general files in the subdirectories of the current directory
find . -type f

#3)file
# recognizing the type of data contained in a file
# Example Display file type, but donot display the file name
file -b list.txt

#4)fuser
# shows which processes are using a file
# Example 

#5)grep
# search through files or plaintext which matches the specified search criteria
# Example find the list.txt that have test
grep test list.txt

#6)host
# lookups the DNS name, convert names to IP addresses and vice versa
# Example lookup the DNS for google
host www.google.com

#7)ldd
# lists dynamic dependencies, show shared object dependencies
# Example
ldd /bin/bash

#8)lsof
# displays information related to files opened by processes
# Example View the occupancy of server 8000 port
lsof -i:8000

#9)mount
# mounts a storage device and  spread throughout different devices in one big tree
# Example 
mount list.txt /Hw1

#10)ps
# shows useful information about active processes running on a system
# Example Display root process user information
ps -u root

#11)pkill
# send the signals to processes and kill a process
# Example End all php-fpm processes
pkill -9 php-fpm

#12)netstat
# displays useful information concerning the Linux networking subsystem
# Example Show detailed network status
netstat -a

#13)renice
# changes the priority of running proceses
# Example 
renice +1 987 -u root -p 32

#14)rsync
# Sync and copy files remotely
# Example 
rsync -a list.txt /Hw1

#15)time
# runs programs and summarizes system resource usage
# check how long time should need for the order
# Example 
time date

#16)ssh
# an application for remotely accessing and running commands on a remote machine
# Example from cs100
ssh xhe058@hammer.cs.ucr.edu

#17)stat
# stat is used to show a file or file system status like this
# Example show list.txt status
stat list.txt

#18)strace
# trace system calls and signals.
# Example 
strace ls

#19)uname
# displays system information
# Example show all the system information
uname -a

#20)wget
# a simple utility used to download files from the Web in a non-interactive
# Example from Lab4
wget http://ftp.gnu.org/gnu/emacs/emacs-24.4.tar.gz
