#!/usr/bin/expect -f
spawn source /home/$USER/.bashrc
expect "Enter passphrase for ~/.ssh/id_rsa:"
send "$KEY\n";
expect "Identity added: ~/.ssh/id_rsa (~/.ssh/id_rsa)"
interact
