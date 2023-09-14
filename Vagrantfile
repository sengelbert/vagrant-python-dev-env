# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.

ENV['VAGRANT_DEFAULT_PROVIDER'] = 'virtualbox'

Vagrant.configure("2") do |config|
  # For a complete reference of configuration options, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://vagrantcloud.com/search.
  # config.vm.box = "bento/fedora-38"
  # config.vm.box = "alvistack/fedora-38"
  config.vm.box = "maroskukan/fedora38"
  # config.vm.box_version = "38.20230413.1"
  config.vm.network "forwarded_port", guest: 80, host: 8000
  # config.ssh.forward_agent = true
  config.vm.provision :shell, path: "install.sh", privileged: false

  config.vm.provider "virtualbox" do |v|
    # v.gui = true # Enable GUI
    v.gui = false # Disable GUI
    v.name = "Dev Environment" # VM Name
    v.memory = 2048 # Memory
    v.cpus = 2 # CPU
  end

end

