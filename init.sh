#!/bin/sh

# Update all the packages
sudo apt-get update

# Install required packages
sudo apt-get install -y build-essential git aptitude python-pip python-dev

# Install ansible with pip
sudo pip install ansible cryptography

# Clone the repositry and the sub modules and go into the file
git clone https://github.com/alex-page/batcave.git
cd batcave
git submodule update --init --recursive

# Run the ansible playbook
ansible-playbook config.yml --ask-become-pass --ask-vault-pass
