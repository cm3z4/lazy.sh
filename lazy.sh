#!/bin/bash

# cm3z4 - 09-25-18
# A script to update, upgrade, autoclean & autoremove a Debian based system using apt.
# You can most likely slap this script into ~/.local/bin or just execute it wherever.
# This script requires figlet & lolcat to look pretty, execute without them if you don't care.

     figlet "lazy.sh" | lolcat -a -s 80
echo
echo "apt update --> upgrade --> autoclean --> autoremove" | lolcat
echo
echo "v1.0.0" | lolcat
echo
     sudo uname -a | lolcat
echo
echo -e "GET http://google.com HTTP/1.0\n\n" | nc google.com 80 > /dev/null 2>&1

     if [ $? -eq 0 ]; then
        echo "Starting repository update..." | lolcat
        echo
        sudo apt update
        echo
        echo "Update complete!" | lolcat
        echo
        sleep 1
        echo "Starting upgrade process..." | lolcat
        echo
        sudo apt upgrade
        echo
        echo "Packages upgraded!" | lolcat
        echo
        sleep 1
        echo "Executing autoclean..." | lolcat
        echo
        sudo apt autoclean
        echo
        echo "Executing autoremove..." | lolcat
        echo
        sudo apt autoremove
        echo
        echo "lazy.sh complete!" | lolcat

        else
            echo "System is offline. No worky!"
            echo
     fi