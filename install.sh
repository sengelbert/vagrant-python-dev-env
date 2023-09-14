#!/usr/bin/env bash

# VM update
sudo dnf update -y
# VM install
sudo dnf install -y python3-pip azure-cli virtualenv
# VM install Windows garbage
sudo dnf install -y dos2unix
# VM Check versions
sudo python --version
sudo pip --version

# terminal formatting
# automatically activate the venv at a project's root
cd /vagrant
echo >> ~/.bashrc
cat auto_activate_.venv.txt >>  ~/.bashrc

echo >> ~/.bashrc
echo "# load terminal prompt formatting from .bash_prompt" >> ~/.bashrc
echo "source ~/.bash_prompt" >> ~/.bashrc
sudo ln -s /vagrant/.bash_prompt ~/.bash_prompt

echo >> ~/.bashrc
echo "# automatically cd to /vagrant folder when vagrant ssh" >> ~/.bashrc
echo "cd /vagrant" >> ~/.bashrc