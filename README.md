# Batcave

> 🦇 Automated set up of ubuntu desktop for a development environment


# Get started

Once ubuntu desktop is installed open the terminal and run:

```
wget -O- https://raw.githubusercontent.com/alex-page/batcave/master/init.sh | sh
```

# Usage

This configuration is built for myself. If you would like to use it make sure to change the variables in the [`vars/main.yml`](vars/main.yml) file to suit your needs.

When creating encrypted variables ( variables with `!vault` ) make sure to read the documentation on the ansible website for [`ansible-vault encrypt_string`](http://docs.ansible.com/ansible/2.4/vault.html#use-encrypt-string-to-create-encrypted-variables-to-embed-in-yaml).
```
ansible-vault encrypt_string __your_encryptyed_string --ask-vault-pass
```

You can also enable and disable tasks in the [`config.yml`](config.yml) file.

To use this you must create a [personal access token](https://help.github.com/articles/creating-a-personal-access-token-for-the-command-line/)  with the permissions that allow you to configure `admin:gpg_key` and `admin:public_key`.

