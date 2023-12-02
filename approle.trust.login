#!/bin/bash
#  login vault using approle role_id and secret_id
. ./vault.env
export VAULT_TOKEN=`vault write -field=token -force auth/approle/login role_id=$role_id secret_id=$secret_id`

#echo "$VAULT_TOKEN"

export TTL=300
export PAYLOAD="{\"Password\":\"$secret_id\"}"

curl -sSL \
    --header "X-Vault-Token: $VAULT_TOKEN" \
    --header "X-Vault-Wrap-TTL: $TTL" \
    --request POST \
    --data $PAYLOAD \
    $VAULT_ADDR/v1/sys/wrapping/wrap | jq '.wrap_info.token' | sed s/\"//g
