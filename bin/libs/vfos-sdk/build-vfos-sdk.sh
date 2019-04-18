#!/bin/bash

sudo npm install -g yeoman-gen-run
if [ ! -d "vfos-oak-sdk-lib-code" ];
then
    echo "fetching vfos-sdk code!"
    sudo chmod 777 -R /home/user/.config/
    git clone https://mstavares@opensourceprojects.eu/git/p/vfos/oak/sdk/lib/code vfos-oak-sdk-lib-code
    sudo mkdir -p /home/user/.config/insight-nodejs
    sudo touch /home/user/.config/insight-nodejs/insight-yo.json
    sudo chmod 777 -R /home/user/.config/
    cd vfos-oak-sdk-lib-code
    sudo npm link
    cd vfos-oak-sdk-lib-code
    sudo yo-gen-run --name vfos-sdk --config config.json --allow-root
else
    echo "vfos-sdk code found!"
    cd vfos-oak-sdk-lib-code
    sudo yo-gen-run --name vfos-sdk --config config.json --allow-root
fi
