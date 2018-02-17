# Batcave

> 🦇 Automated set up of ubuntu desktop for a development environment


# Get started

Once ubuntu desktop is installed open the terminal and run:

```
wget -O- https://raw.githubusercontent.com/alex-page/batcave/master/init.sh | sh
```

# Usage

This configuration is built for myself. If you would like to use it make sure to change the variables in the [`vars/main.yml`](vars/main.yml) file to suit your needs.

You can also enable and disable tasks in the [`config.yml`](config.yml) file.

To use this you must create a [personal access token](https://help.github.com/articles/creating-a-personal-access-token-for-the-command-line/)  with the permissions that allow you to configure `admin:gpg_key` and `admin:public_key`.

