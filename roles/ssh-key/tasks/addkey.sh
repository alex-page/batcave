#!/usr/bin/expect -f
spawn source $SOURCE_DIR
expect "Enter passphrase for ~/.ssh/id_rsa:"
send $KEY;
expect "Identity added: ~/.ssh/id_rsa (~/.ssh/id_rsa)"
interact
