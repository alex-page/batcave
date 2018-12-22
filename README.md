# 🦇 Batcave

> Automated set up of ubuntu desktop for a development environment


# Get started

Start with a fresh install of ubuntu desktop 18.04.

Once installed open terminal and run:
```
bash -c "$( wget -O - https://raw.githubusercontent.com/alex-page/batcave/master/init.sh )"
```

This runs the `init.sh` script that installs dependencies of ansible. It will ask for your github account username and SSH and GPG keys. It uses this information for setting up your public SSH and GPG keys, and cloing repositories. Once the dependencies are installed it runs ansible with the `config.yml`.

This runs through the following tasks:

**Theme**

- Downloads and changes the wallpaper
- Install custom font families


**Dotfiles**

- Fetches dotfiles from a github repository


**Generate SSH and GPG key**

- Generates SSH and GPG keys
- Adds them to the local keychain
- Starts SSH agent and sets up git


**Add SSH and GPG credentials**

- Adds the public keys generated to your github account


**Github projects**

- Clones repositories from github to a location


**Install nodejs**

- Installs the latest version of node js


**Install visual studio code**

- Installs the latest version of visual studio code
- Installs any extensions


**Clean up ubuntu**

- Uninstall unecessary programs on ubuntu


# To do

The existing tasks already need some minor improvements. In the future I would also like to:

- Theme the terminal
- Change the user image
- Install node version manager instead of node


# Usage

This configuration is built primarily for myself.

Please feel free to fork it and change the [`variables ( vars/main.yml )`](vars/main.yml) and [`tasks ( config.yml )`](config.yml) to suit your needs.

This project uses github [personal access token](https://help.github.com/articles/creating-a-personal-access-token-for-the-command-line/) to automatically add ssh and gpg configuration to the ubuntu desktop environment and github account. You must provide an encrypted token with the permissions `admin:gpg_key` and `admin:public_key`.
