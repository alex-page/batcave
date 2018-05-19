# 🦇 Batcave

> Automated set up of ubuntu desktop for a development environment


# Get started

Once ubuntu desktop is installed open the terminal and run:

```
wget -O - https://raw.githubusercontent.com/alex-page/batcave/master/init.sh | bash
```



# Usage

This configuration is built primarily for myself.

Please feel free to fork it and change the [`variables ( vars/main.yml )`](vars/main.yml) and [`tasks ( config.yml )`](config.yml) to suit your needs.

This project uses github [personal access token](https://help.github.com/articles/creating-a-personal-access-token-for-the-command-line/) to automatically add ssh and gpg configuration to the ubuntu desktop environment and github account. You must provide an encrypted token with the permissions `admin:gpg_key` and `admin:public_key`.
