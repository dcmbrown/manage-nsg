#!/bin/sh -l

echo "Hello $1"

_client_id=$(echo $6 | jq '.clientId')
_client_secret=$(echo $6 | jq '.clientSecret')
_tenant_id=$(echo $6 | jq '.tenantId')

#az login --service-principal -u _client_id -p _client_secret --tenant _tenant_id

#az group list

echo _client_id
echo _client_secret
echo _tenant_id

time=$(date)
dig +short myip.opendns.com @resolver1.opendns.com
echo ::set-output name=time::$time
