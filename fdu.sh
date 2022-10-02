#!/bin/bash
#Usage: ./fdu.sh
#Description: Script made to resolve Issue #14: Watching Free Disk Space
#Provided By Saumit Dinesan <justsaumit@protonmail.com>

############################################################
#                         Help                             #
############################################################
Help()
{
   # Display Help
   echo "Usage: fd [OPTION]... [LOCATION]..."
   echo "Easy Calculate Free Disk space!"
   echo
   echo "options: [-c|-d|-h|-v]"
   echo "-c         Current harddisk mountpoint"
   echo "-d         Specific disk location"
   echo "-h         Print this Help."
   echo "-v         Verbose mode (displays output of df command in human readable format)"
}

############################################################
############################################################
#                   Main program                           #
############################################################
############################################################

while getopts ":d:v:hc" option; do
   case $option in
      h) # display Help
         Help
         exit;;
      c)
          location=$(findmnt -T . | awk 'FNR ==2 {print $1}') && loc=$(basename "$location")
          icon="🖴 "
          printf "%s %s: %s\n" "Current disk mountpoint" "$icon" "$location" 
          printf "%s: %s\n" "The available free fisk space on $loc is" "$(df -h "$location" | awk '/[0-9]/ {print $4" ""("100-$5"%"")"}')"
          ;;
      d)
          location=$OPTARG
          if [ -z "$location" ]; then echo "Enter disk location: " && read -r location ; fi
          icon="🖴 "
          if  [[ "$location" =~ ^(/home|home)$ ]] ; then loc=home && location="/$loc"; fi
          if  [[ "$location" =~ ^(/|root)$ ]] ; then loc=root && location="/$loc"; fi
          if  [[ "$location" =~ ^(/mnt|mnt)$ ]] ; then loc=mnt && location="/$loc"; fi
          if  [[ "$location" =~ ^(.)$ ]] ; then location=$(findmnt -T . | awk 'FNR ==2 {print $1}') && loc=$(basename "$location");
          else loc=$(basename "$location"); fi 
          printf "%s %s: %s\n" "$loc" "$icon" "$(df -h "$location" | awk ' /[0-9]/ {print $3 "/" $2}')"
          printf "%s: %s\n" "Hence, the free fisk space on $loc is" "$(df -h "$location" | awk '/[0-9]/ {print $4" ""("100-$5"%"")"}')" ;;
      v) 
          df -h;;
      *) # Invalid option
         echo "Error: Invalid option"
         exit;;
   esac
done 
