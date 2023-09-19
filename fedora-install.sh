#!/usr/bin/env bash

# VM update
sudo dnf update -y
# VM install tools
sudo dnf install -y python3-pip azure-cli virtualenv dnf-plugins-core dkms kernel-devel gcc bzip2 make curl chromium
# Install Terraform
sudo dnf config-manager --add-repo https://rpm.releases.hashicorp.com/fedora/hashicorp.repo
sudo dnf install -y terraform
# VM install Windows garbage
sudo dnf install -y dos2unix
# VM install Gnome
sudo dnf group install -y "GNOME Desktop Environment"
sudo dnf group install -y @base-x gnome-shell
sudo dnf install -y gnome-terminal nautilus gdm
# VM install PyCharm
sudo dnf copr enable phracek/PyCharm
sudo dnf install pycharm-community
# VM Check versions
sudo python --version
sudo pip --version
terraform --version
az --version

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

sudo systemctl set-default graphical.target
sudo shutdown -r now