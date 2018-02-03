#!/bin/sh

# Install git python-pip and python-dev
sudo apt-get install -y git python-pip python-dev

# Install ansible with pip
sudo pip install ansible

# Clone the repositry and go into the file
git clone https://github.com/alex-page/batcave.git
cd batcave

# Run the ansible playbook
ansible-playbook config.yml --sudo