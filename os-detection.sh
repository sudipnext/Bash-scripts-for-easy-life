#!/bin/bash

# This script allows the user to check what OS/Distro the current system is running and perform commands and script actions accordingly.
# The example below checks the Distro and run the install command for zenity accordingly.
# This is extremely helpful in decluttering scripts for different Distros and accumulating them all into one.

function get_distro() {
    if [[ -f /etc/os-release ]]
    then
        source /etc/os-release
        echo $ID
    else
        uname
    fi
}
case $(get_distro) in 
    fedora)
        sudo dnf install zenity
        ;;
    ubuntu)
        sudo apt-get -y install zenity
        ;;
    debian)
        sudo apt-get -y install zenity
        ;;
esac    
