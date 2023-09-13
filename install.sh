#!/usr/bin/env bash

# VM update and install
sudo dnf update -y
sudo dnf install -y python3-pip
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