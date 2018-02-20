#!/usr/bin/expect -f
spawn source $1
expect "Enter passphrase for ~/.ssh/id_rsa:"
send $2;
expect "Identity added: ~/.ssh/id_rsa (~/.ssh/id_rsa)"
interact
