#! /bin/bash

key=$1
value=$2
echo "key $key"
echo "value $value"

if [[ "-a" == $key ]]; then
    azure account set $value
else
    echo "please use -a argument to specify an azure accout name or id"
    exit 1
fi

azure group create -n WebResourceGroup -l "South Central US"
azure group template validate -f ./webdeploy.json -e ~/azure/webdeploy.parameters.json -g WebResourceGroup
azure group deployment create -f ./webdeploy.json -e ~/azure/webdeploy.parameters.json -g WebResourceGroup -n CommentsDeployment