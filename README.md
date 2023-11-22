# vault-credential

## Getting started

- [ ] There are 5 scripts in this repo:  vault.login, get.cred, wrap and unwrap
- [ ] Run ./vault.login first and then ./get.cred
- [ ] Run ./wrap <password> to wrap the password
- [ ] Run ./unwrap <wrap-token> to get the password
- [ ] Run ./secret.push <path password> to save password in vault
- [ ] Run ./secret.get <path> to get the password from vault
- [ ] Run ./secret.pushget [put|get] <path password> to get the password from vault.  This script also encrypt the password before pushing to the vault.

## Requirements

- [ ] You need to have https connectivity to the world.
- [ ] You need to have vault, and terraform binary installed on the server.
- [ ] You may want to install aws cli on the server.

