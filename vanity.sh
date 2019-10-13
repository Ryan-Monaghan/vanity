#!/usr/bin/env bash
username=$(whoami) #Fetch current user from whoami, and store it in the variable username
grep -wF -e "$username" "$1" #-w switch - pattern match complete words only, ie the users name. -F switch - make grep take given expression as a fixed string, and not as regex. -e switch - used to declare that the next string on the command line is the pattern. Without this switch, a pattern starting with a special character like a dash (-) might be mistakingly interpreted as a set of command line options. $username - holds the value of whoami, ie the current user. $1 - the value of $1 is the first command line argument given to the script on the commandline.
#Usage: ./vanity.sh <filename> eg. ./vanity.sh /etc/passwd would print:
#ryan:x:1000:1000:Ryan Monaghan,,,:/home/ryan:/bin/bash
