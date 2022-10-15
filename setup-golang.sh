#!/bin/bash

####################### How to use #########################
### Run Script - ./setup-golang.sh <version number>
### eg. ./setup-golang.sh 19.1
############################################################
# Set the version variable to the latest binary version from https://go.dev/doc/install

# Version Setup - Default - 19.2
ver=$1
if [ -z "$ver" ]
then
      ver=19.2
else
      ver=$1
fi

# Removing all previous installation 
rm -rf /usr/local/go

# Fetching the binaries
wget https://dl.google.com/go/go1.$ver.linux-amd64.tar.gz

# Unpacking the binary
tar -C /usr/local -xzf go1.$ver.linux-amd64.tar.gz

# Adding GO to path
export PATH=$PATH:/usr/local/go/bin
