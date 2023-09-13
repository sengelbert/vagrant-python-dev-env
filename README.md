# Vagrant Python Development Environment
- Installs the latest version of Python and Pip for a Fedora based image 
- Update the install.sh file for installing more dnf or pip packages
- Update .bash_prompt for custom prompt settings
- Utilizes VirtualBox and a specific community Fedora image
  - Update Vagrantfile to change the image, VM Provider and/or other settings

## Prerequisites
- Install Vagrant for your OS
  - https://developer.hashicorp.com/vagrant/downloads
- Install VirtualBox for your OS
  - See guides or https://www.virtualbox.org/wiki/Downloads

## Usage
Start Vagrant VM\
`vagrant up`\
Start SSH Session on Vagrant VM\
`vagrant ssh`\
Destroy Vagrant VM\
`vagrant destroy`\
For more commands see the help docs for Vagrant\
`vagrant -h`\
