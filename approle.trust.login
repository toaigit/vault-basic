#!/bin/bash
#  login vault using approle role_id and secret_id
. ./vault.env
export VAULT_TOKEN=`vault write -field=token -force auth/approle/login role_id=$role_id secret_id=$secret_id`

echo "$VAULT_TOKEN"
