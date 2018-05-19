#!/usr/bin/env bash

# Install required packages
sudo apt-get update --fix-missing;
sudo apt-get install -y build-essential git aptitude python-pip python-dev;

# Install ansible with pip
sudo -H pip install ansible;

# Clone the repositry and the sub modules and go into the file
git clone https://github.com/alex-page/batcave.git;
cd batcave;
git submodule update --init --recursive;

# Prompt the user for their information
read -p $'What is your github username?:\n' github_username;
read -sp $'\n\nWhat is your github personal access token ( GPG and SSH )?:\n' github_token;
read -sp $'\n\nPlease enter a secure SSH private key password?:\n' ssh_password;
read -sp $'\n\nPlease enter a secure GPG private key password?:\n' gpg_password;

# Start the ansible task
ansible-playbook ./config.yml --ask-become-pass -e "github_username=$github_username github_token=$github_token ssh_password=$ssh_password gpg_password=$gpg_password";
