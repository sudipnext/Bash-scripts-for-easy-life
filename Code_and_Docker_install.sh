#! /bin/bash

echo "Welcome to VS Code and Docker Setup!"
echo "
1.VS Code

2.G++ Compiler

3.Docker
"
echo "Select the software to install:"
read choice
if [[ "$choice" == "1" ]]
then
sudo apt-get install wget gpg
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg
sudo apt install apt-transport-https
sudo apt update
sudo apt install code
echo "Done"
elif [[ "$choice" == "2" ]]
then
sudo apt install g++
echo "Done"
elif [[ "$choice" == "3" ]]
then
echo "Installing Docker"
      curl -fsSL https://get.docker.com/ | sh
      sudo usermod -aG docker $USER
      newgrp docker
      echo "Process Completed!"
else
echo "Enter correct choice!"
fi

