#!/bin/bash
#  login to vault before getting the credential

. ./vault.env
echo "VAULT_ADDR: $VAULT_ADDR"

USERID=`whoami`
echo "Executing vault login -method=ldap username=$USERID"
vault login -method=ldap username=$USERID
