#!/bin/bash
#  login vault using approle role_id and secret_id
if [ $# -ne 1 ] ; then
   echo "Usage: $0 secret-id"
   exit 1
fi

. ./vault.env
export ROLE_ID=`cat $HOME/.role_id.txt`
export WRAPP_SECRET=$1
export SECRET_ID=`vault unwrap -format json $WRAPP_SECRET | jq .data.Password | sed -e 's/"//g'`
export VAULT_TOKEN=`vault write -field=token -force auth/approle/login role_id=$ROLE_ID secret_id=$SECRET_ID`

echo "$VAULT_TOKEN"
