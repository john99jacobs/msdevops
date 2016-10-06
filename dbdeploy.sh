#! /bin/bash

key=$1
value=$2

if [[ "-a" == $key ]]; then
    azure account set $value
else
    echo "please use -a argument to specify an azure accout name or id"
    exit 1
fi

azure group create -n DBResourceGroup -l "South Central US"
azure group template validate -f ./dbdeploy.json -e ~/azure/dbdeploy.parameters.json -g DBResourceGroup
azure group deployment create -f ./dbdeploy.json -e ~/azure/dbdeploy.parameters.json -g DBResourceGroup -n DBResourceGroup