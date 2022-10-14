#!/bin/bash

# Updating System

sudo apt update
sudo apt upgrade

# Installing Apache

sudo apt install apache2
## Allowing through firewall
sudo ufw allow "Apache Full"

# Installing MySQL

sudo apt install mysql-server

# Installing PHP

sudo apt install php libapache2-mod-php php-mysql

# Installing PHPMyAdmin

sudo apt install phpmyadmin

# MySQL secure setup

read -p "Do you want to secure MySQL Database system ? " -n 1 -r
echo  
if [[ ! $REPLY =~ ^[Nn]$ ]]
then
    sudo mysql_secure_installation
fi

# Output IP

echo "Your Website is Deployed on"
hostname -I | cut -d' ' -f1
