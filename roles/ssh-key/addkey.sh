#!/usr/bin/expect -f
spawn source /home/$1/.bashrc
expect "Enter passphrase for ~/.ssh/id_rsa:"
send "$2\n";
expect "Identity added: ~/.ssh/id_rsa (~/.ssh/id_rsa)"
interact