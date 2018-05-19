#!/bin/sh

# Install required packages
sudo apt-get update --fix-missing;
sudo apt-get install -y build-essential git aptitude python-pip python-dev;

# Install ansible with pip
sudo -H pip install ansible cryptography;

# Clone the repositry and the sub modules and go into the file
git clone https://github.com/alex-page/batcave.git;
cd batcave;
git submodule update --init --recursive;

# Start the ansible task
ansible-playbook batcave/config.yml --ask-become-pass;
