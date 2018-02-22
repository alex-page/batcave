#!/usr/bin/expect -f
spawn keychain --eval ssh id_rsa "$(ssh-agent -s)"
expect "Enter passphrase for ~/.ssh/id_rsa:"
send $KEY;
expect "Identity added: ~/.ssh/id_rsa (~/.ssh/id_rsa)"
interact
