#!/bin/sh

# Install required packages
sudo apt-get install -y build-essential git aptitude python-pip python-dev

# Install ansible with pip
sudo -H pip install ansible

# Clone the repositry and go into the file
git clone https://github.com/alex-page/batcave.git
git submodule update --init --recursive
cd batcave

# Run the ansible playbook
ansible-playbook config.yml --ask-become-pass
