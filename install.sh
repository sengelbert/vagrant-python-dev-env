#!/usr/bin/env bash

# VM update
sudo apt update -y
sudo apt upgrade -y
# VM install
sudo apt install python3-pip ubuntu-gnome-desktop -y
# Add GNOME desktop environment
sudo apt install -y --no-install-recommends ubuntu-desktop
sudo apt install -y --no-install-recommends virtualbox-guest-dkms virtualbox-guest-utils virtualbox-guest-x11
# Add `vagrant` to Administrator
sudo usermod -a -G sudo vagrant
#sudo dnf install -y python3-pip azure-cli virtualenv dnf-plugins-core
# Install Terraform
sudo apt-get install -y gnupg software-properties-common
wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg
gpg --no-default-keyring --keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg --fingerprint
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update -y
sudo apt-get install terraform -y
# VM install Azure CLI
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash
# VM install Windows garbage
#sudo dnf install -y dos2unix
# VM Check versions
sudo python3 --version
sudo pip3 --version
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

sudo shutdown -r now